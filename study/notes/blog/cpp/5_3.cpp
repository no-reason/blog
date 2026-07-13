#include<iostream>
#include<fstream>
using namespace std;
string name,saved;
int main(){
    getline(cin,name);
    ofstream out("name.txt");
    out<<name;
    out.close();
    ifstream in("name.txt");
    getline(in,saved);
    cout<<"Welcome back, "<<saved<<"!";
    return 0;
}