
/* eslint-disable import/first */
// * svelte kit handles env files differently 
//import dotenv from 'dotenv'

import { env } from '$env/dynamic/private'
import pg from 'pg'



const { Pool } = pg; 

const pool = new Pool({
    user: env.DB_USER,
    host: env.DB_HOST,
    database: env.DB_NAME,
    password: env.DB_PASSWORD,
    port: parseInt(env.DB_PORT || '5432')
})

export default pool 