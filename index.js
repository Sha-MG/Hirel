require('dotenv').config({ override: true });
const path = require('path');
const express = require('express');
const router = require('./app/routers/routeur');
const port = process.env.PORT;
const app = express();
const expressSession = require('express-session');

app.locals.siteName = "Hirel";

app.set('view engine', 'ejs');
app.set('views', './app/views');

app.use(express.static(__dirname + '/public'));

app.use(router);

app.use(expressSession({
  resave: true,
  saveUninitialized: true,
  secret: "Guess it!",
  cookie: {
    secure: false,
    maxAge: (1000*60*60) // ça fait une heure
  }
}))

app.listen(port, () => {
  console.log(`Server ready: http://localhost:${port}`);
});
