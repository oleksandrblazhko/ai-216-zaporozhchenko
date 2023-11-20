CREATE OR REPLACE FUNCTION order_food ( --функція не називається "order", тому що це слово є ключовим для oracle
    f_name IN VARCHAR2,
    f_quantity IN INT,
    f_weight IN INT,
    f_cost IN INT
)
RETURN BOOLEAN IS
    v_name food.name%Type := upper(f_name);
    v_quantity food.quantity%Type := f_quantity;
    v_weight food.weight%Type := f_weight;
    v_cost food.cost%Type := f_cost;
    v_food_id food.food_id%Type;
BEGIN
    IF LENGTH(v_name) > 100 THEN
        RETURN FALSE;

    END IF;
    BEGIN
        SELECT food_id INTO v_food_id FROM food WHERE TRIM (upper(name)) = v_name AND quantity = v_quantity AND weight = v_weight AND cost = v_cost;
        RETURN TRUE;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    END;
END;
/