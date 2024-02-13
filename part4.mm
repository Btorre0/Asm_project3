#include <iostream>
using namespace std;

// All need to be short 
short a, b, c, d, e, f;
short result1, result2, Finalresult; // Declare result1 and result2 as integers

void getValues() {
    cout << "Enter the values of a, b, and c: ";
    cin >> a >> b >> c;
    cout << "Enter the values of d, e, and f: ";
    cin >> d >> e >> f;
}
void returnResultX() {
    cout << "X = " << Finalresult << endl;
}

void returnResultY() {
    cout << "Y = " << Finalresult << endl;
}

int main() {
    cout << "Q4";
    _asm {
        call getValues;

        // Solve for Y
        mov ax, c;
        imul ax, e;

        mov cx, b;
        imul cx, f;

        sub ax, cx;
        mov result1, ax;

        mov ax, a;
        imul ax, e;

        mov cx, b;
        imul cx, d;

        sub ax, cx;
        mov result2, ax;

        mov ax, result1;
        cwd;
        idiv result2;
        mov Finalresult, ax;
        Call returnResultY;

        // Solve for X
        mov ax, a;
        imul ax, f; // multiply a and f, result in ax

        mov cx, c;
        imul cx, d; // multiply c and d, result in cx

        sub ax, cx;  // subtract the two results

        // move everything to ax
        mov result1, ax;

        mov ax, a;
        imul ax, e;

        mov cx, b;
        imul cx, d;

        sub ax, cx;
        mov result2, ax;

        mov ax, result1;
        cwd;
        idiv result2;
        mov Finalresult, ax;
        Call returnResultX;
        // maybe make a call that uses finalresult here 


    }

    return 0;
}
    