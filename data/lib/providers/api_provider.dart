class ApiProvider {
  Future<Map<String, dynamic>> getUsersOnTable() async {
    return <String, dynamic>{
      '0': <String, dynamic>{'id' : '1', 'firstName' : 'Ivan', 'secondName' : 'Ivanov', 'age' : 20, 'heartsAmount' : 0},
      '1': <String, dynamic>{'id' : '2', 'firstName' : 'Denis', 'secondName' : 'Maliush', 'age' : 19},
      '2': <String, dynamic>{'id' : '3', 'firstName' : 'Vlad', 'secondName' : 'Stepanau', 'age' : 19},
      '3': <String, dynamic>{'id' : '4', 'firstName' : 'Yagor', 'secondName' : 'Trukhan', 'age' : 19},
      '4': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '5': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '6': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '7': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '8': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '9': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '10': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
      '11': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18},
    };
  }

  Future<void> saveTableChanges() async {}
}
