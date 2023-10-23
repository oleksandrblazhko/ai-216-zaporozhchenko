CREATE TABLE operator
(
    operator_id INT PRIMARY KEY
);

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    telephone INT UNSIGNED NOT NULL,
    CONSTRAINT chk_telephone_length CHECK (LENGTH(telephone::TEXT) = 12),
    email VARCHAR(1000) CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$'),
    operator_id INT REFERENCES operator(operator_id)
);

CREATE TABLE food 
(
    food_id INT PRIMARY KEY,
    name VARCHAR(100),
    quantity INT UNSIGNED NOT NULL,
    weight INT UNSIGNED NOT NULL,
    cost INT UNSIGNED NOT NULL,
    customer_id INT REFERENCES customer(customer_id)
);

CREATE TABLE user
(
    user_id INT PRIMARY KEY,
    num_card INT,
    CONSTRAINT chk_num_card_length CHECK (LENGTH(num_card::TEXT) = 16),
    valid_per TEXT, --тип даних саме TEXT, тому що формат "ММ/РР" не є стандартним форматом для типу даних DATE в SQL.  Тип даних DATE відображає дату в стандартному форматі "РРРР-ММ-ДД" (рік-місяць-день).
    CONSTRAINT chk_valid_per_format CHECK (valid_per ~ '^(0[1-9]|1[0-2])/[0-9][0-9]$' AND RIGHT(valid_per, 2)::INT + 2000 >= 2023), 
    cvv2 INT,
    CONSTRAINT chk_cvv2_length CHECK (LENGTH(cvv2::TEXT) = 3),
    pin_code INT,
    CONSTRAINT chk_pin_code_length CHECK (LENGTH(cvv2::TEXT) = 4),
    customer_id INT UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
