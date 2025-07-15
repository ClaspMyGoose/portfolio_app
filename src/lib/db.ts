
/* eslint-disable import/first */
import dotenv from 'dotenv'
import pg from 'pg'


dotenv.config({ path: __dirname+'/.env'}); 

const { Pool } = pg; 

const pool = new Pool({
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    port: 5432
})

export default pool 