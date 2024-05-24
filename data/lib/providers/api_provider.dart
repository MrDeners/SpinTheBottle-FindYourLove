class ApiProvider {
  Future<Map<String, dynamic>> getUsersOnTable() async {
    return <String, dynamic>{
      '0': <String, dynamic>{'id' : '1', 'firstName' : 'Ivan', 'secondName' : 'Ivanov', 'age' : 20, 'heartsAmount' : 0},
      '1': <String, dynamic>{'id' : '2', 'firstName' : 'Denis', 'secondName' : 'Maliush', 'age' : 19},
      '2': <String, dynamic>{'id' : '3', 'firstName' : 'Vlad', 'secondName' : 'Stepanau', 'age' : 19},
      '3': <String, dynamic>{'id' : '4', 'firstName' : 'Yagor', 'secondName' : 'Trukhan', 'age' : 19},
      '4': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '5': null,
      '6': null,
      '7': null,
      '8': null,
      '9': null,
      '10': null,
      '11': null,
    };
  }

  Future<void> saveTableChanges() async {}
}
