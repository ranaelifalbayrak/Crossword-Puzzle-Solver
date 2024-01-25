
grid(_,[],_).
grid(Lengths,[[Word1Index,Char1Index,Word2Index,Char2Index]|Rest],Words):-
     nth0(Word1Index,Words,Word1),
     nth0(Word2Index,Words,Word2),
     word(Word1),
     word(Word2),
     atom_chars(Word1,Chars1),
     atom_chars(Word2,Chars2),
     nth0(Word1Index,Lengths,L1),
     nth0(Word2Index,Lengths,L2),
     length(Chars1,L1),
     length(Chars2,L2),
     nth0(Char1Index,Chars1,Char1),
     nth0(Char2Index,Chars2,Char2),
     Char1 = Char2,
     grid(Lengths,Rest,Words).

