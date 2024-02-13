#include <iostream>
using namespace std;

int score, scoreTotal, averageScore, counter;

void askScoreData() {
    cout << "Enter your score (-1) to stop: ";
    cin >> score;
}

void displayScore() {
    cout << "Your average is " << averageScore << endl;
}

void displayError() {
    cout << "Cannot divide by zero." << endl;
}

int main() {
    cout << "Q2" << endl;
    _asm {
        mov scoreTotal, 0; // scoreTotal = 0
        mov counter, 0; // counter = 0

    whileLoop:
        call askScoreData; // move call here due to while loop
        cmp score, -1;  // compare if score is equal to -1
        je calculateAverage; // if so exit
                           // else
        add scoreTotal, score; // add score to scoreTotal
        inc counter;// ++

        jmp whileLoop; // jump back to whileLoop

        calculateAverage:
        cmp counter, 0;
        je displayError;
        mov eax, scoreTotal;
        cdq;
        idiv counter;
        mov averageScore, eax;
        jmp display
    displayError:
    call displayError;
    jmp done;
    display:
    call displayScore; // call on the void function displayScore
    }

    return 0;
}