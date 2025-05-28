domains
	list = integer*.
	num = integer.

predicates
	len(list, num, num)
	len(list, num)
	sum(list, num, num)
	sum(list, num)
	odds(list, num, num)
	odds(list, num)
	bigger(list, list, num, list)
	bigger(list, list, num)
	del(list, list, num, list)
	del(list, list, num)
	con(list, list, list)
	
clauses
	len([], X, X).
	len([_|T], X, N) :- N2 = N + 1, len(T, X, N2).
	len(L, X) :- len(L, X, 0).
	
	sum([], X, X).
	sum([H|T], X, N) :- N2 = N + H, sum(T, X, N2).
	sum(L, X) :- sum(L, X, 0).
	
	odds([], X, X).
	odds([_], X, X).
	odds([_,H|T], X, N) :- N2 = N + H, odds(T, X, N2).
	odds(L, X) :- odds(L, X, 0).
	
	bigger([], XL, _, XL).
	bigger([H|T], XL, N, L) :- H > N, !, bigger(T, XL, N, [H|L]).
	bigger([_|T], XL, N, L) :- bigger(T, XL, N, L).
	bigger(InL, Res, N) :- bigger(InL, Res, N, []).
	
	del([], XL, _, XL).
	del([H|T], XL, D, L) :- H <> D, !, del(T, XL, D, [H|L]).
	del([_|T], XL, D, L) :- del(T, XL, D, L).
	del(InL, Res, D) :- del(InL, Res, D, []).
	
	con([], X, X). 
	con([H|T], L, X) :- con(T, [H|L], X).
		
goal
	%len([1, 2, 3], Res).
	%sum([1, 2, 3], Res).
	%odds([1, 2, 3, 4], Res).
	%bigger([1, 3, 4, 1, 0], Res, 2).
	%del([1, 2, 3, 2, 2], Res, 2).
	con([3], [1, 2], Res).