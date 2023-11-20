DECLARE
    v_result BOOLEAN;
BEGIN
    v_result := order_food('Борщ', 1, 250, 500);

    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE(':)');
        DBMS_OUTPUT.PUT_LINE('Оплата успішно проведена!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Страву не знайдено!');
    END IF;
END;
/