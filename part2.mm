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

int main() {
    cout << "Q2" << endl;
    _asm {
        mov scoreTotal, 0; // scoreTotal = 0
        mov counter, 0; // counter = 0

    whileLoop:
        call askScoreData; // move call here due to while loop
        cmp score, -1;  // compare if score is equal to -1
        je exitLoop; // if so exit
                           // else
        add scoreTotal, score; // add score to scoreTotal
        inc counter;// ++

        jmp whileLoop; // jump back to whileLoop

    exitLoop:
        // display
        mov eax, scoreTotal; // eax = scoreTotal
        cdq;// extend
        idiv counter; // scoreTotal / counter
        mov averageScore, eax; // averageScore = eax

        mov ecx, averageScore; // store averageScore in ecx
        mov averageScore, scoreTotal; // swap averageScore and scoreTotal

        mov scoreTotal, ecx; // store the original averageScore in scoreTotal
        call displayScore; // call on the void function displayScore
    }

    return 0;
}