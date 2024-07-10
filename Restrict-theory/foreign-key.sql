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

-- Insert a row into the parent table
INSERT INTO parent (id, name) VALUES (1, 'Parent 1');

-- Insert a row into the child table
INSERT INTO child (id, parent_id, name) VALUES (1, 1, 'Child 1');

-- Attempt to delete the parent row (will fail due to RESTRICT)
DELETE FROM parent WHERE id = 1; -- This will fail

-- Attempt to update the parent row (will fail due to RESTRICT)
UPDATE parent SET id = 2 WHERE id = 1; -- This will fail
