
// FP
  // Goals
    // Organize Code
    // Readble Code
    // Customized Code
    // Resuabilty

  // Steps
    // Definition //
    // Writing Body 
    // Writing Header 
    // Calling or Excution //


  // Fun in Detail
    // Arguments
        // Postional Arguments
        // NonPositional Arguments
    // Return Type
        // Dynamic Fun
        // Has a return Value
    // Exception Handling
        // Unhandled Exception
        // Handled Exception

import 'test2.dart';


void main() {

  std.forEach((key, value) {
    stdData(value);
    calAges(value);
  });

}

stdData(Map<String, dynamic> x) {
  print('name ${x['name']} age ${x['age']}');
}

calAges(Map<String, dynamic> x) {
  x['familyMember'].forEach((i) {
    print('${i['memberAge'] - x['age']}');
  });
}

  // std.forEach((key, value) {
  //   stdData(value);
  // });

// stdData(Map<String, dynamic> data) {
//   print('Name ${data['name']} Age ${data['age']}');
//   // calAges(data['familyMember'], data['age']);
// }

// calAges(List<Map<String, dynamic>> ages, int stdAge) {

//   ages.forEach((i) {
//     print('std is smaller than by ${i['memberAge'] - stdAge}');
//   });
// }