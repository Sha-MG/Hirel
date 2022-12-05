const { client } = require('./database');

const dataMapper = {

    async getAllNews(){
        const sql = `SELECT * FROM "news"`;
        const result = await client.query(sql);
        return result.rows;
      },

    async getThreeNews(){
        const sql = `SELECT * FROM "news" LIMIT 3`;
        const result = await client.query(sql);
        return result.rows;
      },
    
    async getOneNews(id){
        const sql = `SELECT * FROM "news" WHERE "id"=$1`;
        const result = await client.query(sql, [id]);
        return result.rows[0];
    },
    async getAllConseil(){
      const sql = `SELECT * FROM "conseil"`;
      const result = await client.query(sql);
      return result.rows;
  }
    
};

module.exports = dataMapper;