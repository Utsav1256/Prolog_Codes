male(bob).
male(pat).
male(jim).
female(pam).
female(liz).
female(ann).

# parent of relation
parent_of(bob, pam).
parent_of(bob, tom).
parent_of(liz, pam).
parent_of(ann, bob).
parent_of(pat, bob).
parent_of(jim, pat).

# father_of & mother_of relation
father_of(X, Y):- male(Y), parent_of(X, Y).
mother_of(X, Y):- female(Y), parent_of(X, Y).

#  sister_of & brother_of
sister_of(Y, Z):- female(Z), parent_of(Y, X), parent_of(Z, X), Y \= Z.
brother_of(Z, Y):- male(Y), parent_of(Z, X), parent_of(Y, X), Z \= Y.

# grandMother_of & grandFather_of
grandMother_of(X, Y):- female(Y), parent_of(X,Z), parent_of(Z, Y)
grandFather_of(X, Y):- male(Y), parent_of(X, Z), parent_of(Z, Y)