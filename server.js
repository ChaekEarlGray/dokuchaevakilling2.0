const express = require('express');
const mysql = require('mysql2');
const bcrypt = require('bcrypt');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.json());
app.use(cors());

// Подключение к базе данных MySQL
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '666poniuilandmc',
  database: 'school',
});

connection.connect((err) => {
  if (err) {
    console.error('Ошибка подключения к базе данных:', err);
    return;
  }
  console.log('Подключение к базе данных успешно!');
});

// Маршрут для регистрации пользователя
app.post('/register', (req, res) => {
  const { username, password, role } = req.body;

  if (!username || !password || !role) {
    return res.status(400).json({ message: 'Все поля обязательны!' });
  }

  // Хэширование пароля
  bcrypt.hash(password, 10, (err, hashedPassword) => {
    if (err) {
      console.error('Ошибка при хэшировании пароля:', err);
      return res.status(500).json({ message: 'Ошибка сервера' });
    }

    const query = 'INSERT INTO users (username, password, role) VALUES (?, ?, ?)';
    connection.query(query, [username, hashedPassword, role], (err, results) => {
      if (err) {
        console.error('Ошибка при выполнении запроса:', err);
        return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(201).json({ message: 'Регистрация успешна!' });
    });
  });
});

// Маршрут для авторизации пользователя
app.post('/login', (req, res) => {
  const { username, password } = req.body;
  console.log('Полученные данные:', { username, password });

  if (!username || !password) {
    return res.status(400).json({ message: 'Логин и пароль обязательны!' });
  }

  const query = 'SELECT * FROM users WHERE username = ?';
  connection.query(query, [username], (err, results) => {
    if (err) {
      console.error('Ошибка при выполнении запроса:', err);
      return res.status(500).json({ message: 'Ошибка сервера' });
    }

    if (results.length === 0) {
      console.log('Пользователь не найден');
      return res.status(401).json({ message: 'Пользователь не найден' });
    }

    const user = results[0];
    console.log('Найден пользователь:', user);

    // Сравнение пароля с хэшем
    bcrypt.compare(password, user.password, (err, isPasswordValid) => {
      if (err) {
        console.error('Ошибка при сравнении пароля:', err);
        return res.status(500).json({ message: 'Ошибка сервера' });
      }

      if (isPasswordValid) {
        console.log('Пароль верный');
        res.status(200).json({ message: 'Авторизация успешна!', role: user.role });
      } else {
        console.log('Неверный пароль');
        res.status(401).json({ message: 'Неверный пароль' });
      }
    });
  });
});

// Запуск сервера
app.listen(port, () => {
  console.log(`Сервер запущен на http://localhost:${port}`);
});
app.get('/cards', (req, res) => {
  const query = 'SELECT * FROM cards';
  connection.query(query, (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(200).json(results);
  });
});
app.post('/cards', (req, res) => {
  const { word, transcription, translation, theme } = req.body;

  if (!word || !translation || !theme) {
      return res.status(400).json({ message: 'Все поля обязательны!' });
  }

  const query = 'INSERT INTO cards (word, transcription, translation, theme) VALUES (?, ?, ?, ?)';
  connection.query(query, [word, transcription, translation, theme], (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(201).json({ id: results.insertId, word, transcription, translation, theme });
  });
});
app.delete('/cards/:id', (req, res) => {
  const cardId = req.params.id;

  const query = 'DELETE FROM cards WHERE id = ?';
  connection.query(query, [cardId], (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(200).json({ message: 'Карточка удалена' });
  });
});
app.get('/cards', (req, res) => {
  const theme = req.query.theme;
  let query = 'SELECT * FROM cards';
  if (theme) {
      query += ' WHERE theme = ?';
  }

  connection.query(query, [theme], (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(200).json(results);
  });
});
// Маршрут для получения всех карточек из таблицы kcards
app.get('/kcards', (req, res) => {
  const query = 'SELECT * FROM kcards';
  connection.query(query, (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(200).json(results);
  });
});

// Маршрут для добавления новой карточки в таблицу kcards
app.post('/kcards', (req, res) => {
  const { word, transcription, translation, theme } = req.body;

  if (!word || !translation || !theme) {
      return res.status(400).json({ message: 'Все поля обязательны!' });
  }

  const query = 'INSERT INTO kcards (word, transcription, translation, theme) VALUES (?, ?, ?, ?)';
  connection.query(query, [word, transcription, translation, theme], (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(201).json({ id: results.insertId, word, transcription, translation, theme });
  });
});

// Маршрут для удаления карточки из таблицы kcards
app.delete('/kcards/:id', (req, res) => {
  const cardId = req.params.id;

  const query = 'DELETE FROM kcards WHERE id = ?';
  connection.query(query, [cardId], (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      res.status(200).json({ message: 'Карточка удалена' });
  });
});
app.get('/kcards', (req, res) => {
  console.log('Получен запрос на получение карточек из kcards'); // Логирование
  const query = 'SELECT * FROM kcards';
  connection.query(query, (err, results) => {
      if (err) {
          console.error('Ошибка при выполнении запроса:', err);
          return res.status(500).json({ message: 'Ошибка сервера' });
      }
      console.log('Результаты запроса:', results); // Логирование
      res.status(200).json(results);
  });
});