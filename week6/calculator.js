function sayHello(){
  console.log("greetings!");
}

function sayGoodbye(){
  console.log("Bye!");
  return false;
}

function printValue(){
  console.log(document.getElementById('left').value);
  return false;
}

function calculate(){
  var leftValue = Number(document.getElementById('left').value);
  var rightValue = Number(document.getElementById('right').value);
  var operator = document.getElementById('operator').value;
  var resultElement = document.getElementById('result');

  if( operator === "+" ){
    var result = leftValue + rightValue;
  } else if( operator === "-"){
    var result = leftValue - rightValue;
  } else if( operator === "*"){
    var result = leftValue * rightValue;
  } else if( operator === "/"){
    var result = leftValue / rightValue;
  } else if( operator === "**"){
    var result = Math.pow(leftValue, rightValue);
  } else {
    var result = "Math is hard...";
  }
  resultElement.innerText = result;
  return false;
}
