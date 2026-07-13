#include<iostream>
using namespace std;
int choice;
int main(){
    do{
        cout<<"1. Add Note"<<endl;
        cout<<"2. View Notes"<<endl;
        cout<<"3. Exit"<<endl;
        cin>>choice;
    }while(choice!=3);
    return 0;
}