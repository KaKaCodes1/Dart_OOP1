import 'dart:io';
//interface
abstract class Vehicle{
  String name;
  int wheels;

  Vehicle(this.name, this.wheels);

  void display();
}
//inmplements Vehicle
class Car implements Vehicle{
  @override
  String name;

  @override
  int wheels;

  Car(this.name, this.wheels) ;
  @override
  void display(){
    print('Name: $name');
    print('Number of wheels: $wheels');
  }
}
void populateList(List<String> carList){
  
   // Use a loop to continuously read input from the keyboard until Enter is pressed
  while (true) {
    print("Enter the name of the cars(Press Enter Key to finish)");
    String? input = stdin.readLineSync(); // Read input from the keyboard
    //inputs if input is not null
    if(input != ""){
    carList.add(input!); // Add the input to the list of cars
    }
    else {
      break; // Exit the loop if Enter is pressed (empty input)
    }
  }
}

void displayCarList(List<String> carList) {
  print("\nList of cars:");

   // Use a loop to display each car name in the list
   for(int i=0; i< carList.length; i++){
    print("${i + 1}. ${carList[i]}");
   }
}

void main(){
  Car toyota = Car('toyota',4);

  toyota.display();

  List<String>cars=[];

  //calling methods for creating, populating and displaying the list
  populateList(cars);

  displayCarList(cars);


}