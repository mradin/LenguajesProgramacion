#include <iostream>
using namespace std;

class Foo{
    public:
        Foo(int value = 0) : value(value){
            cout << "Default constructor" << endl;
        }
        
        Foo(const Foo& foo){
            cout << "const copy constructor" << endl;
        }
       
        ~Foo() = default;
        
        /*Foo& operator = (const Foo& foo){
            cout << "const copy assiggnment" << endl;
            return *this;
        }*/
        
        Foo& operator =(Foo&& foo){
            cout << "Rvalue reference copy assiggnment" << endl;
            return *this;
        }
        
        Foo& getFoo(){
            return *this;
        }
        
        int val(){
            return 5;
        }
    
    private:
       int value;
};

int main(){
    
    Foo a(5);
    Foo b;
    
    Foo c(Foo());
    
    
    
}