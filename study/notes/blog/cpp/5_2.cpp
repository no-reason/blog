#include<iostream>
#include<fstream>
using namespace std;
string message;
int main(){
    ifstream file("message.txt");
    getline(file,message);
    cout<<"Stored Message:"<<endl<<message;
    return 0;
}