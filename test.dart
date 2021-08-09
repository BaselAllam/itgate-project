// // List y = [100, 500, 900];

// // x.addAll(y);

// // x.insertAll(0, y);

// // x.remove(500);

// // x.removeAt(2);

// // x[0] = 20;

// List<List<List>> x = [
//   [
//     [10, 20, 30],
//     [10, 20, 30]
//   ],
//   [
//     [true, 'ahmed', 10.5],
//     [true, 'ahmed', 10.5]
//   ]
// ];

// Map<int, Map<String, dynamic>> std = {
//   1 : {
//     'name' : 'ahmed',
//     'email' : 'ahmed.com',
//     'age' : 20,
//     'familyMember' : [
//       {
//         'memberName' : 'Ahmed Father',
//         'memberAge' : 50,
//       },
//       {
//         'memberName' : 'Ahmed Mother',
//         'memberAge' : 40,
//       },
//     ],
//   },
//   2 : {
//     'name' : 'ali',
//     'email' : 'ali.com',
//     'age' : 25,
//     'familyMember' : [
//       {
//         'memberName' : 'Ali Father',
//         'memberAge' : 55,
//       },
//       {
//         'memberName' : 'Ali Mother',
//         'memberAge' : 45,
//       },
//     ],
//   }
// };

// void main() {

//   print('''
//   Std Name is: ${std[1]!['name']},
//   Std Father Name is ${std[1]!['familyMember'][0]['memberName']},
//   Std Mother Name is ${std[1]!['familyMember'][1]['memberName']},
//   ''');
// }

// for(Map<String, dynamic> i in stds) {
  //   print('''
  //   Std Name is: ${i['name']},
  //   Std Father Name is ${i['familyMember'][0]['memberName']},
  //   Std Mother Name is ${i['familyMember'][1]['memberName']},
  // ''');
  // }

  // std.forEach((k, v) {
  //   print('''
  //   Std Name is: ${v['name']},
  //   Std Father Name is ${v['familyMember'][0]['memberName']},
  //   Std Mother Name is ${v['familyMember'][1]['memberName']},
  // ''');
  // });

  // for(int i = 1; i < std.length; i++) {
  //   print(std[i]);
  // }
  

void main() {

  // int x = 20;

  // if(x == 20) {
  //   print('its ==');
  //   if(x < 25){
  //     print('< 25');
  //   }else{
  //     print('> 25');
  //   }
  // }else if(x > 20){
  //   print('its >');
  // }else if(x < 20){
  //   print('<');
  // }else{
  //   print('not above');
  // }


  // while(x != 20) {
  //   print('!=');
  //   break;
  // }

  // do{
  //   print('!=');
  // }while(x != 20);

  // for() {}

  // Header => Definition (condition, (conditon, startpoint, endpoint, inc), arg, async, inher)
  // Body => process , methods, properties
  // Scope
  // nested
}

// void main() {

//   List x = [10, 20, 30];

//   // for(int i = 0; i < x.length; i++) {
//   //   x[i] += 10;
//   // }

//   // for(int i in x) {
//   //   i += 10;
//   // }

//   // print(x);

//   // List y = [];

//   // add values from 100 to 500
//   // ex: 110, 120, 130, 140
//   // print(y);

//   // for(int i = 100; i < 500; i +=10) {
//   //   y.add(i);
//   // }

//   // print(y);

// }



// List<Map<String, dynamic>> stds = [
//   {
//     'name' : 'ahmed',
//     'email' : 'ahmed.com',
//     'age' : 20,
//     'familyMember' : [
//       {
//         'memberName' : 'Ahmed Father',
//         'memberAge' : 50,
//       },
//       {
//         'memberName' : 'Ahmed Mother',
//         'memberAge' : 40,
//       },
//     ],
//   },
//   {
//     'name' : 'ali',
//     'email' : 'ali.com',
//     'age' : 25,
//     'familyMember' : [
//       {
//         'memberName' : 'Ali Father',
//         'memberAge' : 55,
//       },
//       {
//         'memberName' : 'Ali Mother',
//         'memberAge' : 45,
//       },
//     ],
//   }
// ];