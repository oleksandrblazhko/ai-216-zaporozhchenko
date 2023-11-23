CREATE OR REPLACE FUNCTION order_ ( 
    f_name IN VARCHAR2,
    f_quantity IN INT,
    f_weight IN INT,
    f_cost IN INT
)
RETURN INT IS
    v_name food.name%Type := upper(f_name);
    v_quantity food.quantity%Type := f_quantity;
    v_weight food.weight%Type := f_weight;
    v_cost food.cost%Type := f_cost;
    v_food_id food.food_id%Type;
BEGIN
    IF LENGTH(v_name) > 100 THEN
        RETURN -1;
    END IF;
    IF v_quantity < 0 OR v_quantity = 0 THEN
        RETURN -2;
    END IF;
    IF v_weight < 0 OR v_weight = 0 THEN
        RETURN -3;
    END IF;
    IF v_cost < 0 OR v_cost = 0 THEN
        RETURN -4;
    END IF;

    BEGIN
        SELECT food_id INTO v_food_id FROM food WHERE TRIM (upper(name)) = v_name AND quantity = v_quantity AND weight = v_weight AND cost = v_cost;
        RETURN 1;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RETURN 0;
    END;
END;
/
