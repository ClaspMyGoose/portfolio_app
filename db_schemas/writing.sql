


CREATE TABLE writing (
    piece_id SERIAL PRIMARY KEY,
    piece_text TEXT,
    piece_category VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO writing VALUES (DEFAULT, 'Cavernouse space\nImpossible Peaks\n', 'Miscellaneous');
INSERT INTO writing VALUES (DEFAULT, 'I learned to love my companion rain cloud', 'Miscellaneous');
