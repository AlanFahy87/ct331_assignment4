%Definitions for isElementInList(El, List)
isElementInList(X, [X|_]).
isElementInList(X,[_|T]):-
isElementInList(X,T).
%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([X|Xrev],Rev) :-
reverseList(Xrev,Yrev), mergeLists(Yrev,[X],Rev).
%Definitions for insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(X,[],[X]).
insertElementIntoListEnd(X,[Y|Tail],[Y|Tail1]):-
insertElementIntoListEnd(X,Tail,Tail1).
%Definitions for mergeLists(List1, List2, Merged)
mergeLists([],List,List).
mergeLists([H|T],List,[H|M]):-
mergeLists(T,List,M).
