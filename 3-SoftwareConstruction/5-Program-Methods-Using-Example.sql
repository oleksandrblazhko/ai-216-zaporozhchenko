DECLARE
    v_result INT;
BEGIN
    v_result := order_('Борщ', 1, 250, 500);

    IF v_result = 1 THEN
        DBMS_OUTPUT.PUT_LINE(':)');
        DBMS_OUTPUT.PUT_LINE('Оплата успішно проведена!');
        DBMS_OUTPUT.PUT_LINE(v_result);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Страву не знайдено!');
        DBMS_OUTPUT.PUT_LINE(v_result);
    END IF;
END;
/
