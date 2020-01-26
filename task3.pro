domains
  name = symbol
predicates
  nondeterm employee(name).
  nondeterm department(name).
  nondeterm firm(name).

clauses
  employee(anna). 
  employee(sergey). 
  employee(olga).
  department(engineer).
  department(bookkeeping). 
  department(juridical). 
  

  firm(X):-employee(X),department(X).
  firm(X):-employee(anna),department(bookkeeping).
  

goal
 firm(X).
