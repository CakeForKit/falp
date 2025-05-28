domains
	num = integer.
	
predicates
	fact(num, num, num)	% (n, res, acc)
	fact(num, num)		% (n, res)
	fib(num, num, num, num)	%(n, res, lastlast, last)
	fib(num, num)		% (n, res)

clauses
	fact(0, X, X) :- !.
	fact(N, X, Acc) :- N2 = N - 1, Acc2 = Acc * N, fact(N2, X, Acc2).
	fact(N, X) :- fact(N, X, 1).
	
	fib(1, X, _, X) :- !.
	fib(N, X, A, B) :- N2 = N - 1, C = A + B, fib(N2, X, B, C).
	fib(N, X) :- fib(N, X, 0, 1).
goal
	%fact(2, Res).
	fib(2, Res).