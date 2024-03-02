select substring(description, 5, length(description)) from currencies;

update currencies
	SET description = SUBSTRING(description, 1, 4);
