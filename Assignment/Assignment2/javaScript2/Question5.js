function xValue(b, m) {
  let x = m;
  function f(x) {
    return x ^ b;
  }
  return f(x);
}
console.log("Value", xValue(5, 7));
