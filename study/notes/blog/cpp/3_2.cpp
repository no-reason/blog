#include<iostream>
using namespace std;
int level,coins;
int main(){
	cin>>level>>coins;
	if (level>=10&&coins>=100){
		cout<<"VIP Shop Unlocked";
	}
	else {
		cout<<"Keep Grinding";
	}
	return 0;
}
