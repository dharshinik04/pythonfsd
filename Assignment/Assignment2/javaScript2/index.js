//question 1
function convertMinuteToSecond(minutes) {
  return minutes * 60;
}
console.log("Seconds", convertMinuteToSecond(5));

//question 2
function power(voltage, current) {
  var power = voltage * current;
  return power;
}
console.log("Power", power(5, 10));

//question 3
function ageCalculator(age) {
  if (age > 0) {
    var ageInDays = age * 365;
    return ageInDays;
  } else {
    return "Negative value is given";
  }
}

console.log("Age in days", ageCalculator(1));

//question 4
let count = 0;
function array(arr) {
  for (let element of arr) if (element === true) count++;
  return count;
}

console.log(array([false, true, true, false, true, true]));

//question 5
function xValue(b, m) {
  let x = m;
  function f(x) {
    return x ^ b;
  }
  return f(x);
}
console.log("Value", xValue(5, 7));

//question 6
const convertArray = {
  Blue: 3,
  Red: 4,
  Pink: 5,
};
const entries = Object.entries(convertArray);
console.log(entries);
