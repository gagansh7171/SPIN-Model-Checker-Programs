// [] always
// <> eventually
// ! not
// X next

// U until
// && and
// || or
// -> implication
// <-> equivalence

// Verify that variable b is always true

bool b = true
active proctype main(){
    do
    :: b = false // commnt this line to pass the test
    :: b = true
    od
}

ltl p1 {
    [] b;
}