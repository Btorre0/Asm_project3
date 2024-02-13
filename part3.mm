
#include <iostream>
using namespace std;

char letter;
int counterU, counterL;
void askPhrase()
{
    cout << "Enter a sentence: " << endl;
}
void readChar()
{   
    cin.get(letter);
}
void displayCounter()
{
    cout << "Number of upper case = " << counterU << endl;
    cout << "Number of lower case =" << counterL << endl;
}

int main() {
    _asm {
   mov counterU, 0;
   mov counterL, 0;

   call askPhrase;// call on askPhrase
whileLoop:
    call readChar; // call on readChar
    cmp letter, '\n'; // compare letter with new line
    je exitLoop; // if so exit to loop, else:

    cmp letter, 'a'; // we will need to compare letter w a

    // count lower case and upper cases using jumps
   // if character is betweem 'a' and 'z' its lower case 
  // if its between A and Z its upper case - ASCII TABLE
        jl notLowerCase;
        cmp letter, 'z';
        jg notLowerCase;
        inc counterL;
        jmp continueLoop;

    notLowerCase:
        cmp letter, 'A';
        jl continueLoop;
        cmp letter, 'Z';
        jg continueLoop;
        inc counterU;

    continueLoop:
        jmp whileLoop;

    exitLoop:
    call displayCounter;
    }
    return 0;
  }