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

$(function(){
  $("#theForm").submit(calculate);
});

function calculate(){
  var leftValue = Number($("#left").val());
  var rightValue = Number($("#right").val());
  var operator = $("#operator").val();
  var resultElement = $("#result");

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
  resultElement.text(result);
  return false;
}
