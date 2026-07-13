#include<iostream>
#include<string>
using namespace std;
string password,correct="cpp123";
int main(){
    while(password!=correct){
        cin>>password;
    }
    cout<<"Access Granted";
    return 0;
}