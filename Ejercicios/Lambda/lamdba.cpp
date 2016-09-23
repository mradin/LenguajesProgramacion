#include <functional>
#include <iostream>

using namespace std;


void ejecutaFuncion(function<void(int&)> f){
    int a = 5;
    f(a);
}

int main(){
    int z = 2;
    int a = 1;
    
    auto f =[=](int &b)mutable{
      cout << b << endl;
      cout << z << endl;
      cout << a << endl;
    };
    
    ejecutaFuncion(f);
}
