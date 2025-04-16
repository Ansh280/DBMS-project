CREATE TABLE AUTHENTICATION_SYSTEM (
    login_id VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE STAFF (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    login_id VARCHAR(50),
    FOREIGN KEY (login_id) REFERENCES AUTHENTICATION_SYSTEM(login_id)
);

CREATE TABLE READERS (
    user_id INT PRIMARY KEY,
    email VARCHAR(100),
    phone_no VARCHAR(15),
    address VARCHAR(255),
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE BOOKS (
    book_no INT PRIMARY KEY,
    price DECIMAL(10, 2),
    category VARCHAR(50),
    edition VARCHAR(50),
    auth_no INT,
    publisherid INT
);

CREATE TABLE PUBLISHER (
    publisherid INT PRIMARY KEY,
    yearofpublication YEAR,
    name VARCHAR(100)
);

ALTER TABLE BOOKS
ADD CONSTRAINT fk_publisher FOREIGN KEY (publisherid) REFERENCES PUBLISHER(publisherid);

CREATE TABLE REPORTS (
    user_id INT,
    reg_no INT PRIMARY KEY,
    book_no INT,
    issue_return DATE,
    FOREIGN KEY (user_id) REFERENCES READERS(user_id),
    FOREIGN KEY (book_no) REFERENCES BOOKS(book_no)
);
