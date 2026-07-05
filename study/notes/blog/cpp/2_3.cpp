#include<iostream>
#include<string>
using namespace std;
int study_time;
string study_name;
bool check;
int total;
int main() {
    while (true){
        cout<<"你今天学习了什么?"<<endl;
        cin>>study_name;
        cout<<"你学习他学习了多长时间"<<endl;
        cin>>study_time;
        total+=study_time;
        cout<<"如果你想退出循环就输入1"<<endl;
        cin>>check;
        if (check==1){
            break;
        }
    }
    cout<<"Total study time: "<<total<<" hours."<<endl;
    return 0;
}