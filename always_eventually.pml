// [] always
// <> eventually
// ! not
// X next

// U until
// && and
// || or
// -> implication
// <-> equivalence

// Verify that p is always eventually 10

int count = 0;
bool incr = false;

active proctype counter() {
	do
    :: count != 10 ->
        if
        :: count = 0
        fi
	:: else ->
        :: incr -> 
		    count++
	od
}
active proctype env() {
	do
	:: incr = false
	:: incr = true
	od
}
ltl p1 { []<> (count > 9) }