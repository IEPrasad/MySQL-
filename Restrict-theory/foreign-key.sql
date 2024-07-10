CREATE TABLE parent (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE child (
    id INT PRIMARY KEY,
    parent_id INT,
    name VARCHAR(50),
    FOREIGN KEY (parent_id) REFERENCES parent(id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT
);
