% Facts: Define parent-child relationships
parent(john, jim).
parent(john, ann).
parent(mary, jim).
parent(mary, ann).
parent(jim, susan).
parent(ann, bob).

% Rules: Define the sibling relationship
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Query examples:
% 1. Are Jim and Ann siblings?
%    Query: sibling(jim, ann).
%    Answer: true.
%
% 2. Are Bob and Susan siblings?
%    Query: sibling(bob, susan).
%    Answer: false.
