function ageCalculator(age) {
  if (age > 0) {
    var ageInDays = age * 365;
    return ageInDays;
  } else {
    return "Negative value is given";
  }
}

console.log("Age in days", ageCalculator(1));
