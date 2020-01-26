domains
  name=symbol
predicates
  nondeterm parent(name,name)
  nondeterm brother(name,name)
  nondeterm ancestor(name,name)
  nondeterm sister(name,name)
  nondeterm female(name)
  nondeterm male(name)
  nondeterm grandfather(name)
  nondeterm grandmother(name)
  nondeterm uncle(name)
 
clauses
  parent(anna, olga).
  parent(anna, sveta).
  parent(vlada, roma).
  parent(vlada, sergey).
  parent(masha, vlada).
  male(roma).
  male(sergey).
  female(sveta).
  female(vlada).
  

  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y).
  ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y).
  grandfather(X,Y):- father(X,Z), parent(Z,Y). 
  grandmother(X,Y):- mother(X,Z), parent(Z,Y).
  uncle(X,Y):- parent(Z,Y), brother(X,Z), X<>Z.

goal
  sister(olga, sveta).
  %sister(X,Y).
  %brother(X,Y).
  %grandfather(X,Y).
  %grandmother(X,Y).
uncle(X,Y).
