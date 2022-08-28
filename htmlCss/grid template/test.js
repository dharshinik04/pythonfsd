// alert("Hello world");

//let array = [];
//array.push(10);
//array.push("Dharshu");
//array.push({name: "Dharshu"});
//array.push([1,2,3]);
//array.push(1.45);
//console.log(array);
//
//for (let i = 0; i < 10; i++) {
//  console.log(i);
//}

//array.forEach((item) => console.log(item));
//*Create object
//let tempObj = {};
//tempObj["Hello my key is this"] = 2;
//tempObj[45] = 67;
//tempObj[[1,2,3]] = 67;
//console.log(tempObj);
//console.log(tempObj["Hello my key is "]);

//*Create a triangle
//for(let i = 0; i < Number; i++){
//  let line = "";
//for(let space = 0; pace < num - i; space++) {
//  line = line + " ";
//}
// for (let star = 0; star < 1 +1; star++) {
//  lime = line + " * ";
//}
//  console.log(line);
//}
//
//function giveMultiples(sal, type) {
// if (type === "EMP1") {
//       return sal * 1.3;
// } else if (type === "EMP2") {
//    return sal * 1.7;
//  } else if (type ==="EMP3") {
//     return sal * 1.9;
//   } else{
//     return sal * 2;
//   }
//}
//
//function giveMultipleSwitch(sal, type) {
//  switch (type) {
//        case "EMP1":
//   return sal * 1.3;
// case "EMP2":
//  return sal * 1.7;
//case "EMP3":
//     return sal * 1.9;
//   default:
//         return sal *2;
//   }
//}

let num = [1, 2, 3, 4, 5];
let target = 8;
function twoSum(num, target) {
  for (let i = 0; i < num.length; i++) {
    for (let j = i + 1; j < num.length; j++) {
      if (num[i] + num[j] == target) {
        console.log([i, j]);
      }
    }
  }
}
console.log(twoSum(num, target));

function Palindrome(num) {
  if (num < 0) {
    return false;
  }
  let x = num;
  let rev = 0;
  while (x > 0) {
    rev = rev * 10 + (x % 10);
    x = parseInt(x / 10);
  }
  return num == rev;
}
console.log(Palindrome("1234321"));

function Roman(n) {
  switch (n) {
    case "I":
      return 1;
    case "V":
      return 5;
    case "X":
      return 10;
    case "L":
      return 50;
    case "C":
      return 100;
    case "D":
      return 500;
    case "M":
      return 1000;
    default:
      return -1;
  }
}
console.log(Roman("II"));
console.log(Roman("X"));
