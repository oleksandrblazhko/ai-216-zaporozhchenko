BEGIN
    DBMS_OUTPUT.PUT('TC1.1: ');
    IF order_('Борщ', 1, 250, 500) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;
    
    DBMS_OUTPUT.PUT('TC1.2: ');
    IF NOT order_('БОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩБОРЩ', 1, 250, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.3: ');
    IF NOT order_('щщщщщ', 1, 250, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.4: ');
    IF NOT order_('Борщ', -1, 250, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.5: ');
    IF NOT order_('Борщ', 43534, 250, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.6: ');
    IF NOT order_('Борщ', 1, -250, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.7: ');
    IF NOT order_('Борщ', 1, 45345345, 500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.8: ');
    IF NOT order_('Борщ', 1, 250, -500) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.9: ');
    IF NOT order_('Борщ', 1, 250, 4566456) = 1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;
END;
/


