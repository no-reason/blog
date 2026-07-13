#include<iostream>
using namespace std;
int hp;
int main(){
    cin>>hp;
    if (hp>0){
        cout<<"Player Alive";
    }
    else {
        cout<<"Game Over";
    }
    return 0;
}