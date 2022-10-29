// [] always
// <> eventually
// ! not
// X next

// U until
// && and
// || or
// -> implication
// <-> equivalence

// Verify that whenever there is request there is response

bool req = false;

active proctype request() {
    do
    :: !req ->
        if
        :: req = true
        :: req = false
        fi
    :: else ->
    req = true
    od
}
active proctype response() {
	do
	:: req = false
	od
}
ltl p1 { []<> req -> []<> _last==1 }