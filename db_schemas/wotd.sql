


CREATE TABLE wotd (
    wotd_id SERIAL PRIMARY KEY,
    wotd_date DATE,
    wotd VARCHAR(30),
    potd TEXT, 
    wotd_winner VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO wotd VALUES (DEFAULT, '2025-07-15', 'release', 'release myself to accept who I am', 'duck');
INSERT INTO wotd VALUES (DEFAULT, '2025-07-14', 'peace', 'the mind was still and my heart was at peace', 'duck');
