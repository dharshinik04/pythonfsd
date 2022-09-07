let count = 0;
function array(arr) {
  for (let element of arr) if (element === true) count++;
  return count;
}

console.log(array([false, true, true, false, true, true]));
