import pool from '$lib/db'
 
// TODO do writing pull 
export async function load() { 

    const results: ResultsObject = {
        projects: [],
        writing: []
    }

    try { 
        const result = await pool.query('SELECT * FROM project;')
        results.projects = result.rows
    } catch(error) {
        console.error(`DB error: ${error}`);
    }

    try { 
        const result = await pool.query('SELECT * FROM writing;')
        results.writing = result.rows
    } catch(error) {
        console.error(`DB error: ${error}`);
    }


    return results;
}


type Results = any[] 

interface ResultsObject {
    [key: string]: Results
}


