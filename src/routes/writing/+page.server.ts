import pool from '$lib/db'; 

export async function load() {

    try {
        const result = await pool.query('SELECT * FROM writing;')
        return {
            rows: result.rows,
            error: null
        }; 

    } catch(error) {
       console.error(`DB error: ${error}`);
        return {
            rows: [],
            error: error
        }; 
    }; 

}