#include<iostream>
#include<fstream>
using namespace std;
string message;
int main(){
    getline(cin,message);
    ofstream file("message.txt");
    file<<message;
    file.close();
    cout<<"Message Saved!";
    return 0;
}