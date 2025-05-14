domains
	surname = symbol.
	phone = string.
	
	city = symbol.
	street = symbol.
	houseNumber = integer.
	apartmentNumber = integer.
	address = addr(city, street, houseNumber, apartmentNumber)
	
	car_model = symbol.
	colour = symbol.
    	price = integer.
	number = symbol.
	

predicates
	phonebook(surname, phone, address).
	car(surname, car_model, colour, price, number).
	person(car_model, colour, surname, phone, city).

clauses
	phonebook(surname1, "89999999991", addr(city1, street1, 1, 123)).
	phonebook(surname1, "89999999992", addr(city1, street1, 1, 123)).
	
	phonebook(surname1, "89999999993", addr(city2, street12, 12, 223)).
    
	phonebook(surname2, "89998999994", addr(city2, street1, 20, 222)).
	phonebook(surname2, "89999999995", addr(city2, street1, 20, 222)).
	
	phonebook(surname3, "89999999996", addr(city3, street3, 3, 5)).
    
	car(surname1, m1, black, 100, qwe33q).
	car(surname1, m3, black, 110, asd22r).
	car(surname1, m3, red, 44, ert44t).
	
	car(surname2, m1, black, 100, gfd44y).
	car(surname2, m2, white, 200, fre34r).
	car(surname2, m4, red, 200, dfg11r).
	
	person(Marka, Colour, Surname, Phone, City):-
        	car(Surname, Marka, Colour, _, _),
        	phonebook(Surname, Phone, addr(City, _, _, _)).
	
goal
	% phonebook(surname1, "89999999991", addr(city1, street1, 1, 123)).
	% phonebook(surname10, "89999999991", addr(city1, street1, 1, 123)).
	% phonebook(surname1, Phone, addr(city1, street1, 1, 123)).
	% phonebook(Surname, Phone, addr(City, Street, Num, Anum)).
	% car(surname1, m1, black, 100, qwe33q).
	% car(surname1, m1, yellow, 100, qwe33q).
	% car(Surname, m1, yellow, 100, Number).
	% car(Surname, m1, black, 100, Number).
	% car(Surname, Model, Colour, Price, Number).
	% person(m1, black, surname1, "89999999991", city1).
	% person(m1, black, Surname, Phone, City).
	% person(m10, white, Surname, Phone, City).
	% person(Model, Colour, surname1, "89999999993", city2).
	% person(Model, Colour, surname3, "89999999996", city3).
	person(Model, Colour, Surname, Phone, City).