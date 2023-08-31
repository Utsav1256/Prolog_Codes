male(bob).
male(pat).
male(jim).
female(pam).
female(liz).
female(ann).

# parent of relation
parent_of(pam, bob).
parent_of(tom, bob).
parent_of(tom, liz).
parent_of(bob, ann).
parent_of(bob, pat).
parent_of(pat, jim).

# father_of & mother_of relation
father_of(X, Y):- male(X), parent_of(X, Y).
mother_of(X, Y):- female(X), parent_of(X, Y).

#  sister_of & brother_of
sister_of(Y, Z):- female(Y), parent_of(X, Y), parent_of(X, Z), Y \= Z.
brother_of(Z, Y):- male(Z), parent_of(X, Y), parent_of(X, Z), Z \= Y.

