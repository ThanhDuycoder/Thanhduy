void main() {
  int age = 19;
  var isMember = 'Member';
  var memberType = 'Gold';
  if (age < 12) {
    print("Child ticket");
  } else if (age >= 12 && isMember == 'Member' && memberType == 'Gold') {
    print("Gold Member Ticket");
  } else if (age >= 12 && isMember == 'Member' && memberType == 'Silver') {
    print("Silver Member Ticket");
  } else {
    print("Standard Ticket");
  }
}
