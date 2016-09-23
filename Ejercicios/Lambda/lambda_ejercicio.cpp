#include <functional>
#include <iostream>
#include <vector>

using namespace std;


class Filter{
    public:
    vector <function<void(int&)>> v;
    int valor = 10;
    void addFilter(){
        filter v = this;
        v.push_back([v](int &a){
            a+=v->valor;
            cout << valor;
        });
    }
}

int main(){
    
    void ex(){
        int a = 5;
        [&](int&){
            a+=valor;
            cout << valor;
        }(a);
    }
}

