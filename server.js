const path = require('path');
require('dotenv').config({
    override: true,
    path: path.join(__dirname, 'config.env')
});

const { Pool, Client } = require('pg');

const pool = new Pool({
    user: process.env.USER,
    host: process.env.HOST,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
    port: process.env.PORT,
});

(async () => {
    try {
        console.log(process.env.USER);
        const client = await pool.connect();
        const { rows } = await client.query('SELECT current_user');
        const currentUser = rows[0]['current_user']
        console.log(currentUser);
    } catch (err) {
        console.error(err);
    } finally {
        //client.release();
    }
})();

