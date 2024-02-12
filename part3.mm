
#include <iostream>
including namespace std;

char letter;
int counterU, counterL;
void askPhrase()
{
    cout << "Q3" << endl;
}
void readChar()
{
    letter = cin.get();
}
void displayCounter()
{
    cout << "Number of upper case = " << counterU << endl;
    cout << "Number of lower case =" << counterL << endl;
}

int main() {
    _asm {
    mov letter, 0;// letter =0
   call askPhrase;// call on askPhrase
whileLoop:
    call readChar; // call on readChar
    cmp letter, '\n'; // compare letter with new line
    je exitLoop; // if so exit to loop, else:

    cmp letter 'a'; // we will need to compare letter w a

    // count lower case and upper cases using jumps
   // if character is betweem 'a' and 'z' its lower case 
  // if its between A and Z its upper case - ASCII TABLE
    }
    return 0;
  }