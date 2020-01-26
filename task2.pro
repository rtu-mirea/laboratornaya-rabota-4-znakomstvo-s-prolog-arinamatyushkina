predicates

nondeterm likes(symbol,symbol) 
nondeterm can_buy(symbol, symbol)
nondeterm person(symbol) 
nondeterm exist(symbol) 
nondeterm haveMoney(symbol)


clauses

person(vlad). 
person(anna). 
person(den). 
person(sergey). 
person(anton). 
person(sem). 
person(alex).

haveMoney(anna). 
haveMoney(sergey).
haveMoney(sem). 
haveMoney(alex). 
haveMoney(anton).

likes(vlad, banana). 
likes(anna, kiwi). 
likes(den, apple). 
likes(alex, cherry). 
likes(antom, coconut). 
likes(sem, apricot).

exist(banana). 
exist(kiwi). 
exist(apple). 
exist(cherry).
exist(coconut). 
exist(apricot).

can_buy(X, Y) :- person(X),exist(Y), likes(X, Y), haveMoney(X).

goal 
can_buy(X, Y).
