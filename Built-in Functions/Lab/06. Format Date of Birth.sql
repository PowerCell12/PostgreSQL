select last_name as "Last Name", concat(to_char(born, 'DD'), ' ', '(',to_char(born, 'Dy'), ')', ' ', to_char(born, 'Mon'), ' ', to_char(born, 'YYYY')) from authors;
