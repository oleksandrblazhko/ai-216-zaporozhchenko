| FR id | TC id | Опис кроків тестового сценарію | Опис очікуваних результатів |
| ----- | ----- | ------------------------------ | --------------------------- |
| FR1.1 | TC1.1 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 1<br>3) weight = 125<br>4) cost = 200| Результат = 1 |
| FR1.1 | TC1.2 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 101 символів<br>2) quantity = 1<br>3) weight = 125<br>4) cost = 200| Результат = -1 |
| FR1.1 | TC1.3 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'щщщщщщ'<br>2) quantity = 1<br>3) weight = 125<br>4) cost = 200| Результат = -1 |
| FR1.1 | TC1.4 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 0<br>3) weight = 125<br>4) cost = 200| Результат = -2 |
| FR1.1 | TC1.5 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 999<br>3) weight = 125<br>4) cost = 200| Результат = -2 |
| FR1.1 | TC1.6 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 1<br>3) weight = 0<br>4) cost = 200| Результат = -3 |
| FR1.1 | TC1.7 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 1<br>3) weight = 9999999<br>4) cost = 200| Результат = -3 |
| FR1.1 | TC1.8 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 1<br>3) weight = 125<br>4) cost = 0| Результат = -4 |
| FR1.1 | TC1.9 | Початкові умови - відсутні<br> Кроки сценарію:<br>1) name = 'Борщ'<br>2) quantity = 1<br>3) weight = 125<br>4) cost = 9999999| Результат = -4 |
