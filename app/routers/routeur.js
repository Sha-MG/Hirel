const express = require('express');
const mainController = require('../controllers/mainController');
const newsController = require('../controllers/newsController');
const router = express.Router();


router.get('/', mainController.getHomePage);
router.get('/news', newsController.getNewsCategoryAndSaison, newsController.getNewsPage);
router.get('/news/unic/:id', newsController.getNewsCategoryAndSaison, newsController.getUnicNewsPage);
router.get('/news/:category', newsController.getNewsCategoryAndSaison, newsController.getNewsPageByCategory);
router.get('/news/saison/:saison', newsController.getNewsCategoryAndSaison, newsController.getNewsPageBySaison);
router.get('/conseil', mainController.getConseilPage);
router.get('/comissions', mainController.getComissionsPage);


router.use((req, res) => {
  res.status(404).render('error', { err: "404 - Cette resource n'existe pas", css : 'error' })
})

module.exports = router;
