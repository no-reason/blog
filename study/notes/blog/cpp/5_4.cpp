#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int choice=0;
string quote;
int main(){
    do{
        cout<<"1. Save Quote"<<endl;
        cout<<"2. Load Quote"<<endl;
        cout<<"3. Exit"<<endl;
        cin>>choice;
        if(choice==1){
            cout<<"Enter quote: ";
            getline(cin>>ws,quote);
            ofstream file("quote.txt");
            file<<quote;
            file.close();
        }
        else if(choice==2){
            ifstream file("quote.txt");
            getline(file,quote);
            cout<<quote<<endl;
        }
    }while(choice!=3);
    return 0;
}