#include <iostream>
using namespace std;

short a,b,c,d,e,f;

void getValues() {
    cout << "Enter the values of a,b, and c: ";
    cin >> a,b,c;
    cout << "Enter the values of d,e, and f: ";
    cin >> d, e ,f;
}
int main () {
    cout << "Q4";
    _asm {
         call getValues;
         // relocating all of the values
         mov eax, a;
         mov ebx,b;
         mov ecx, c;
         mov edx, d;
         mov eex, e;
         mov efx, f;

        imul eax, efx;
        imul ecx, edx;

        sub eax, ecx; // eax = a*f - c*d

        imul 
    }
}