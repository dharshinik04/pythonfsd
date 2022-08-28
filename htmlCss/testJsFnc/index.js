let user = {};

user["name"] = "John";
user.surname = "smith";
user.name = "pete";
console.log(user["name"]);
delete user.name;
console.log(user["name"]);

//task 2
value1 = { one: 1, two: 2, three: 3 };
value2 = {};
console.log(isvalueEmpty(value1));
console.log(isvalueEmpty(value2));
function isvalueEmpty(value) {
  for (let prop in value) {
    return false;
  }
  return true;
}

//task 3
let salary = {
  user1: 200,
  user2: 500,
  user: 700,
};
let sum = 0;
for (let key in salary) {
  sum += salary[key];
}
console.log(sum);

//task 4
let v1 = [1, 2, 4, 5, 8, 9, 10];
let v2 = [2, 3, 6, 10, 11, 14];

const mergearray = (v1 = [], v2 = []) => {
  let res = [];
  let i = 0;
  let j = 0;
  while (i < v1.length && v2.length) {
    if (v1[i] < v2[j]) {
      res.push(v1[i]);
      i++;
    } else {
      res.push(v2[j]);
      j++;
    }
  }
  while (i < v1.length) {
    res.push(v1[i]);
    i++;
  }
  while (j < v2.length) {
    res.push(v2[j]);
    j++;
  }
  return res;
};
console.log(mergearray(v1, v2));

//task 5
function factorial(n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
let n = 6;
a = factorial(n);

console.log("the factorial of n is", a);
