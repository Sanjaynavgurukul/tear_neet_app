class VariableConverter {
  static dynamic convertVariable({required dynamic data, required String variableType,String? defaultValue}) {
    if (variableType.isEmpty) return null;

    String value = data.toString();
    switch (variableType) {
      case 'double':
      case 'int':
        return VariableConverter().convertToNum(value: value.toString());
      case 'bool':
        return VariableConverter().convertToBool(value: value.toString());
      case 'binary':
        return VariableConverter().convertBinaryBool(value: value.toString());
      case 'date':
        return VariableConverter().convertDate(value:value.toString());
      default:
      //this is String :D
        if(value == 'null') return defaultValue??'';
        if(value.isEmpty) return defaultValue??'';
        return value.toString();
    }
  }

  DateTime convertDate({required String value}){
    try {
      DateTime d = DateTime.parse(value.toString());
      return d;
    } on FormatException catch (e) {
      return DateTime.now();
    } catch (e) {
      return DateTime.now();
    }
  }

  num convertToNum({required String value}) {
    if(value == 'null'){
      return 0;
    }
    try {
      num n = num.parse(value.toString());
      return n;
    } on FormatException catch (e) {
      return 0;
    } catch (e) {
      return 0;
    }
  }

  int convertBinaryBool({required String value}) {
    try {
      int n = int.parse(value.toString());
      return n;
    } on FormatException catch (e) {
      return 0;
    } catch (e) {
      return 0;
    }
  }

  bool convertToBool({required String value}) {
    if(value.isEmpty) return false;

    switch(value){
      case 'null':
      case 'Null':
      case 'NULL':
      case '0':
        return false;
      case '1':
        return true;
      case 'true':
        return true;
      case 'false':
        return false;
      default:
        return false;
    }
  }
}