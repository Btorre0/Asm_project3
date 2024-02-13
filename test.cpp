#include <iostream>
using namespace std;

int counter = 0;
char c ;
int main() {
    cout << "enter a sentence ";
   c = cin.get();

    while ( c != '\n') {
        if (c == ' ') {
            counter++;
        }
        c = cin.get();
    }
    cout << "number of words = " << counter +1;
}