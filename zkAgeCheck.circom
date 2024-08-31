pragma circom 2.0.0;

template AgeVerification() {
    signal input currentYear;
    
    signal private input birthYear;
    
    signal age;
    
    age <== currentYear - birthYear;
    
    signal ageCheck;
    ageCheck <== age - 20;
    ageCheck * (ageCheck + 1) === 0;

    signal birthYearCheck;
    birthYearCheck <== currentYear - birthYear;
    birthYearCheck * (birthYearCheck - 1) === 0;
}

component main = AgeVerification();