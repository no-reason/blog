#include<iostream>
using namespace std;
int computerChoice=1,playerChoice;
int main(){
	cin>>playerChoice;
	if (playerChoice==computerChoice){
		cout<<"Draw";
	}
	else if (playerChoice==1&&computerChoice==3||playerChoice==2&&computerChoice==1||playerChoice==3&&computerChoice==2){
		cout<<"Win";
	}
	else {
		cout<<"Lose";
	}
	return 0;
}
