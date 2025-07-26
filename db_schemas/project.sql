
--  ~ Reworked Create 

DROP TABLE project;


CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    project_name TEXT,
    project_description TEXT,
    project_main_tag TEXT,
    project_tags TEXT[],
    project_link TEXT,
    project_image_link TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- POSTGRES 
-- name 
-- description
-- main tag 
-- stack tags 
-- project_link 
-- project_image_link -> we're going to give this to Postgres right now. Later on if we do UI uploads these would need to happen as batched transactions in sync 

-- GCP 
-- Image 

INSERT INTO project VALUES (
    DEFAULT, 
    'Portfolio Svelte App', 
    'A personal portfolio application built with Svelte, a Javascript web development framework. In addition to the front end code (Typescript/Javascript, HTML, CSS), the data for the site is being pulled from a PostgreSQL database instance and Google Cloud Storage. The plan is to use this website both for professional purposes and as a permanent home for my creative writing, photos, and projects!',
    'WebDev',
    array['JS','Svelte','HTML', 'CSS', 'SQL', 'TS', 'WebDev'],
    'https://github.com/ClaspMyGoose/portfolio_app',
    'https://storage.googleapis.com/portfolio-project-photos/portfolio.png'
    );

INSERT INTO project VALUES (
    2, 
    'Photo Repo - Data Pipeline', 
    'A POC data pipeline built with Python for future Family Photo Repository website. The pipeline takes photos and metadata as input, reconciles data between the two sources, and then once reconciled loads the data to GCP (Cloud Storage and Big Query). The pipeline is manually triggered, but could be implemented as "Upload" button logic on a future site.',
    'ETL/Pipeline',
    array['Python', 'Data', 'Pandas', 'Cloud Storage', 'BigQuery', 'pytest', 'Monitoring'],
    'https://github.com/ClaspMyGoose/photo_repo_initial_load',
    'https://storage.googleapis.com/portfolio-project-photos/photo_repo.png'
    );



-- * Original Create 

-- CREATE TABLE project (
--     project_id SERIAL PRIMARY KEY,
--     project_name VARCHAR(30),
--     project_description TEXT,
--     project_thumbnail TEXT, 
--     project_link VARCHAR(100),
--     project_tags VARCHAR(30)[],
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- playing around with base64, probably makes sense to use a GCP bucket when we go live with this 

-- INSERT INTO project VALUES (
--     DEFAULT, 
--     'portfolio_app', 
--     'My personal website that hosts all of my various outputs.',
--      'BASE64 STRING WAS HERE', 
--     'https://github.com/ClaspMyGoose/portfolio_app',
--     array['JS','Svelte','HTML', 'CSS', 'SQL', 'TS', 'WebDev']
--     );


    