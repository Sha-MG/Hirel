const { localsName } = require('ejs');
const { appendFile } = require('fs');
const { nextTick } = require('process');
const dataMapper = require('../dataMapper');


module.exports = {
  async getHomePage(req, res){
    try {
    // Récup les news
      let NewsList = await dataMapper.getAllNews();
      res.render('index', {css : 'index', NewsList });
    }
    catch(err){
      res.error(err)
      res.redirect('error', {err})
    }
  },


  async getConseilPage(req, res){
    let conseil = await dataMapper.getAllConseil();
    res.render('conseil', {css: 'conseil', conseil})
  },

  getComissionsPage(req, res){

    res.render('comissions', {css : 'comissions'})
  }
  
}
