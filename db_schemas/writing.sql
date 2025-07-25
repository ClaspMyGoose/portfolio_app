
-- ~ Reworked 

CREATE TABLE writing (
    piece_id SERIAL PRIMARY KEY,
    piece_title VARCHAR(30),
    piece_category VARCHAR(100),
    piece_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- * Original 

-- CREATE TABLE writing (
--     piece_id SERIAL PRIMARY KEY,
--     piece_text TEXT,
--     piece_category VARCHAR(100),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );


INSERT INTO writing VALUES (DEFAULT, 'On patience', 'Human Behavior X Project Management', 'loren ipsum loren ipsum loren ipsum loren ipsum loren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum');
INSERT INTO writing VALUES (DEFAULT, 'On perspective', 'Human Behavior X Process Design', 'loren ipsum loren ipsum loren ipsum loren ipsum loren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum
        loren ipsum loren ipsumloren ipsum loren ipsumloren ipsum loren ipsum');
INSERT INTO writing VALUES (DEFAULT, 'Poetry - 2025', 'Misc. (Prose and Poetry)', 'oh to be young and full of joy / light as the feather / free as the wind / laughing and chasing / the sun round again');



-- Title 
-- Category 
-- text 
