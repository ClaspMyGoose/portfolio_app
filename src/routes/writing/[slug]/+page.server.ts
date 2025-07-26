import pool from '$lib/db'
import { error, isHttpError } from '@sveltejs/kit';

export async function load({ params }) { 
    
    const { slug } = params 

    const returnObj: ResultsObject = {
        rows: []
    }

    try { 
        const result = await pool.query(`SELECT * FROM writing WHERE piece_id=${slug};`)
        
        if (result.rows.length === 0) {
            throw error(404, 'Article not found');
        }

        returnObj.rows = result.rows
        return returnObj
        
    } catch(err: unknown) {
        if (isHttpError(err)) {
            throw err;
        }
        console.error(`DB error: ${error}`);
        throw error(500, 'Database error');
    }

}

type Results = any[] 

interface ResultsObject {
    [key: string]: Results
}