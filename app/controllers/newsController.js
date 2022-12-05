const { localsName } = require('ejs');
const { appendFile } = require('fs');
const { nextTick } = require('process');
const dataMapper = require('../dataMapper');


module.exports = {
    async getNewsPage(req,res){
        try {
        // Récup les news
        let NewsList = await dataMapper.getAllNews();
    
        
          res.render("news", {css : 'news', NewsList });
    
        }catch(err){
          console.log('On est pouet')
          res.redirect(500, 'error')
        }
     
      },
    
      async getUnicNewsPage(req, res){
        try {
          let foundArticle = await dataMapper.getOneNews(req.params.id);
          if(!foundArticle){
    
            res.error(err)
            res.redirect('error', {err, css : 'error'})
          }
          res.render("uniqueNews", {css : 'uniqueNews', foundArticle });
        }
        catch(err){
          console.log(err)
          res.error(err)
          res.redirect('error', {err, css : 'error'})
        } 
      },
    
      async getNewsPageByCategory(req, res){
        // Récup les news
        let NewsList = await dataMapper.getAllNews();
    
        NewsList = NewsList.filter(element => element.category == req.params.category )
    
        res.render("news", {css : 'news', NewsList });
      },
    
      async getNewsPageBySaison(req, res){
        // Récup les news
        let NewsList = await dataMapper.getAllNews();
    
        NewsList = NewsList.filter(element => element.saison == req.params.saison )
    
        res.render("news", {css : 'news', NewsList });
      },
    
      async getNewsCategoryAndSaison(req,res, next){
        let NewsList = await dataMapper.getAllNews();
    
        // Créer le tableau des catégories et des saisons
        let tableaucat= []
        let tableausaison= []  
    
        // Parcours les catégories et en ajoute une si elle n'est pas déjà présente 
        for (news of NewsList) {
          if (!tableaucat.includes(news.category)){
              tableaucat.push(news.category)
            }
          if (!tableausaison.includes(news.saison)){
              tableausaison.push(news.saison)
            }
          }
    
          res.locals.NewsListSaison = tableausaison ;
          res.locals.NewsListCategory = tableaucat ; 
    
          next()
      }

}