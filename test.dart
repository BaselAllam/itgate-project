

main() {

  List<num> x = [100, 200, 400];

  // print(avg(x, 20));

  print(avg2());

  print('heloooooo');
}

// Exception Handling
// Framework Crach Silently 
// Crash Report

num avg2({List<num>? l = const [], num? deductValue = 0}) {

  try{
      num sum = l!.reduce((value, element) => value + element);

    num avg = sum / l.length;

    return avg - deductValue!;
  }catch(e) {
    print(e);
    return 404;
  }
}

num avg(List<num> l, num deductValue) {

  num sum = l.reduce((value, element) => value + element);

  num avg = sum / l.length;

  return avg - deductValue;
}


// Positional Arg => required, passed by index
// NonPositional Arg => not required give pair key 