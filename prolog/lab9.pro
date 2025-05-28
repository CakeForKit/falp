domains
	name = symbol.
	gender = male; female.
	num = integer.
	
predicates
	parentage(name, name, gender) % (child, parant, mom/dad)
	grandparents(name, name, gender, gender)
	max2(num, num, num)
	max2c(num, num, num)
	max3(num, num, num, num)
	max3c(num, num, num, num)

clauses
	parentage(amy, ben, male).
	parentage(amy, mia, female).
	parentage(ben, tom , male).
	parentage(ben, ava, female).
	parentage(sam, tom , male).
	parentage(sam, ava, female).
	parentage(mia, leo, male).
	parentage(mia, ann, female).
	parentage(tim, mia, female).
	parentage(tim, dan, male).
	parentage(ann, liz, female).
	parentage(ann, roy, male).
	parentage(leo, ted, male).
	parentage(leo, zoe, female).
	parentage(ava, zoe, female).
	
	grandparents(Child, Grandp, Gender, Line) :-
		parentage(Child, Parent, Line),
		parentage(Parent, Grandp, Gender).
		
	max2(N1, N2, N1) :- N1 >= N2.
	max2(N1, N2, N2) :- N2 > N1.
	max2c(N1, N2, N1) :- N1 >= N2, !.
	max2c(_, N2, N2).
	
	max3(N1, N2, N3, N1) :- N1 >= N2, N1 >= N3.
	max3(N1, N2, N3, N2) :- N2 > N1, N2 >= N3.
	max3(N1, N2, N3, N3) :- N3 > N1, N3 > N2.
	max3c(N1, N2, N3, N1) :- N1 >= N2, N1 >= N3, !.
	max3c(_, N2, N3, N2) :- N2 > N3, !.
	max3c(_, _, N3, N3).
goal
	% grandparents(mia, Grandp, female, _).
	%grandparents(amy, Grandp, male, _).
	%grandparents(amy, Grandp, _, _).
	%grandparents(tim, Grandp, female, female).
	%grandparents(tim, Grandp, _, female).
	
	%max2(1, 2, MAX).
	%max2c(1, 2, MAX).
	%max2c(3, 2, MAX).
	%max3(1, 2, 3, MAX).
	%max3(1, 3, 2, MAX).
	%max3(3, 1, 2, MAX).
	%max3c(1, 2, 3, MAX).
	%max3c(1, 3, 2, MAX).
	%max3c(3, 1, 2, MAX).