import pool from '$lib/db'


export async function load() { 

    const results: ResultsObject = {
        projects: [],
        experience: [], 
        writing: []
    }

    try { 
        const result = await pool.query('SELECT * FROM project;')
        results.projects = result.rows
    } catch(error) {
        console.error(`DB error: ${error}`);
    }

    return results;
}


type Results = any[] 

interface ResultsObject {
    [key: string]: Results
}


