

-- i.e. contact_desc - 'github', contact_val - 'https://github.com/ClaspMyGoose' (https://tinyurl.com/4s67jpph)

CREATE TABLE contact (
    contact_id SERIAL PRIMARY KEY,
    contact_desc VARCHAR(30),
    contact_val VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO contact VALUES (DEFAULT, 'email', 'mailto:michael.bearden1@outlook.com');
INSERT INTO contact VALUES (DEFAULT, 'linkedin', 'https://www.linkedin.com/in/michael-bearden-02486726a');
INSERT INTO contact VALUES (DEFAULT, 'github', 'https://github.com/ClaspMyGoose');
