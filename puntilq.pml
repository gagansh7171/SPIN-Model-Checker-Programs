// [] always
// <> eventually
// ! not
// X next

// U until
// && and
// || or
// -> implication
// <-> equivalence

// Verify that p is true until q is true
// script ./pan -a  $2
bool p = true;
bool q = false;

active proctype P1() {
	do
	:: !q ->
        if
        :: p = true;
        fi
    :: else ->
        :: p = true;
        :: p = false;
        :: q = true;
        :: q = false;
	od
}
active proctype P2() {
	do
	:: q = true;
    :: p = true;
	od
}
ltl p1 { [] (p U q) }