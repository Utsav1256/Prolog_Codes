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

