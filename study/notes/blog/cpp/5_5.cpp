#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int choice=0;
string note;
int main(){
    do{
        cout<<"1. Add Note"<<endl;
        cout<<"2. View Note"<<endl;
        cout<<"3. Save Note"<<endl;
        cout<<"4. Load Note"<<endl;
        cout<<"5. Exit"<<endl;
        cout<<"Choice: ";
        cin>>choice;
        if(choice==1){
            cout<<"Enter note: ";
            getline(cin>>ws,note);
        }
        else if(choice==2){
            cout<<note<<endl;
        }
        else if(choice==3){
            ofstream file("notes.txt");
            file<<note;
            file.close();
            cout<<"Note saved."<<endl;
        }
        else if(choice==4){
            ifstream file("notes.txt");
            getline(file,note);
            cout<<"Note loaded."<<endl;
        }
        else if(choice==5){
            cout<<"Goodbye!"<<endl;
        }
    }while(choice!=5);
    return 0;
}