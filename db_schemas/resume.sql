

CREATE TABLE resume (
    id SERIAL PRIMARY KEY,
    resume_content bytea, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- skipping this for now probably makes sense to use a gcp bucket for this 
