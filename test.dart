


void main(){

  var hello = 'Hello, World!';
  var year = 2024;
  int nextYear = 2025;

  var fruits = ['apple', 'lemon', 'watermelon'];

  printText(hello);
  printText(year);
  printText(nextYear);
  printText(fruits[2]);

  if(nextYear - year == 1){
    printText('Anos corretos');
  }else{
    printText('Anos incorretos.');
  }

  for(int i = 0; i < fruits.length; i++){
    printText(fruits[i]);
  }

  printText(sum(2,3));
  printText(sum(2,3,4));

}

int sum(int n1, int n2, [int? n3]){
  if(n3 == null){
    return n1+n2;
  }else{
    return n1+n2+n3;
  }
}

void printText(text){
  print(text);
}
