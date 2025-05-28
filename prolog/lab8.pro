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
	
	bank = symbol.
	account = symbol.
	amount = integer.
	propertyName = symbol.
	
	propertyItem =
    		car(propertyName, price, colour, number);
    		building(propertyName, price);
    		water_vehicle(propertyName, price, colour).
	
predicates
	phonebook(surname, phone, address).
	depositors(surname, bank, account, amount).
	property(surname, propertyItem)
	
	getNameAndPrice(propertyItem, propertyName, price).
  	propertyAndPriceOfPerson(surname, propertyName, price)
  	sumPropertyPrice(surname, price)

clauses
	phonebook(surname1, "89999999991", addr(city1, street1, 1, 123)).
	phonebook(surname1, "89999999992", addr(city1, street1, 1, 123)).
	phonebook(surname1, "89999999993", addr(city2, street12, 12, 223)).
	phonebook(surname2, "89998999994", addr(city2, street1, 20, 222)).
	phonebook(surname2, "89999999995", addr(city2, street1, 20, 222)).
	phonebook(surname3, "89999999996", addr(city3, street3, 3, 5)).
    
    	depositors(surname1, bank1, account1, 100).
    	depositors(surname1, bank2, account2, 200).
    	depositors(surname2, bank1, account3, 0).
    	depositors(surname3, bank2, account4, 99).
    	
    	property(surname1, car(m, 100, black, qwe33q)).
    	property(surname1, building(b, 100)).
    	property(surname1, water_vehicle(w, 800, blue)).
    	
    	property(surname2, car(m, 200, white, qwe66q)).
    	property(surname2, building(b, 100)).
    	
    	property(surname3, water_vehicle(w, 10, white)).
    	
    	getNameAndPrice(car(PropertyName, Price, _, _), PropertyName, Price).
	getNameAndPrice(building(PropertyName, Price), PropertyName, Price).
	getNameAndPrice(water_vehicle(PropertyName, Price, _), PropertyName, Price).
	
	propertyAndPriceOfPerson(Surname, PropertyName, Price) :-
		property(Surname, PIterm),
		getNameAndPrice(PIterm, PropertyName, Price).
	
	
	
	sumPropertyPrice(Surname, ResPrice) :-
		property(Surname, car(_, CarPrice, _, _)),
		property(Surname, building(_, BuildingPrice)),
		property(Surname, water_vehicle(_, WaterVPrice, _)),
		ResPrice = CarPrice + BuildingPrice + WaterVPrice.
	
goal
	% propertyAndPriceOfPerson(surname1, PropertyName, _).
	% propertyAndPriceOfPerson(surname2, PropertyName, _).
	% propertyAndPriceOfPerson(surname3, PropertyName, _).
	% propertyAndPriceOfPerson(Surname, m, _).
	% propertyAndPriceOfPerson(Surname, w, _).
	% propertyAndPriceOfPerson(Surname, b, _).
	
	% propertyAndPriceOfPerson(surname1, PropertyName, Price).
	% propertyAndPriceOfPerson(surname2, PropertyName, Price).
	% propertyAndPriceOfPerson(surname3, PropertyName, Price).
	
	% sumPropertyPrice(surname1, ResPrice).
	% sumPropertyPrice(surname2, ResPrice).