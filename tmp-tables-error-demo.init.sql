CREATE TABLE source_table (
    id VARCHAR2(255 CHAR) PRIMARY KEY,
    c1 VARCHAR2(255 CHAR)
);

CREATE TABLE target_table (
    id VARCHAR2(255 CHAR) PRIMARY KEY,
    c2 VARCHAR2(255 CHAR) NOT NULL
);