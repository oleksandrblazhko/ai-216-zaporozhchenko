CREATE OR REPLACE TYPE User_ AS OBJECT (
    num_card INT,        
    valid_per VARCHAR(10),       
    cvv2 INT,
    pin_code INT
    NOT FINAL MEMBER PROCEDURE display
) NOT FINAL 
/

CREATE OR REPLACE TYPE Client UNDER User_ (
    telephone INT, 
    email VARCHAR(100),      
    OVERRIDING MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE Operator AS OBJECT (
    MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE Food AS OBJECT (
    name VARCHAR(100),
    quantity INT,
    weight INT,
    cost INT,
    MEMBER PROCEDURE display
); 
/


