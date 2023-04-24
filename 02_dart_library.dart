import 'dart:collection';

void main(){
    //print(anObject);
    var tea="wulongcha";
    print('I drink $tea.');

    //convert a string into an integer or double
    assert(int.parse('42')==42);
    assert(int.parse('0x42') == 66);
    assert(double.parse('0.50') == 0.5);
    assert(num.parse('42') is int);
    assert(num.parse('0x42') is int);
    assert(num.parse('0.50') is double);
    assert(int.parse('42', radix: 16) == 66);

    // Convert an int to a string.
    assert(42.toString() == '42');

    // Convert a double to a string.
    assert(123.456.toString() == '123.456');

    // Specify the number of digits after the decimal.
    assert(123.456.toStringAsFixed(2) == '123.46');

    // Specify the number of significant figures.
    assert(123.456.toStringAsPrecision(2) == '1.2e+2');
    assert(double.parse('1.2e+2') == 120.0);

    // Check whether a string contains another string.
    assert('Never odd or even'.contains('odd'));

    // Does a string start with another string?
    assert('Never odd or even'.startsWith('Never'));

    // Does a string end with another string?
    assert('Never odd or even'.endsWith('even'));

    // Find the location of a string inside a string.
    assert('Never odd or even'.indexOf('odd') == 6);

    // Grab a substring.
    assert('Never odd or even'.substring(6, 9) == 'odd');

    // Split a string using a string pattern.
    var parts = 'progressive web apps'.split(' ');
    assert(parts.length == 3);
    assert(parts[0] == 'progressive');

    // Get a UTF-16 code unit (as a string) by index.
    assert('Never odd or even'[0] == 'N');

    // Use split() with an empty string parameter to get
    // a list of all characters (as Strings); good for
    // iterating.
    for (final char in 'hello'.split('')) {
      print(char);
    }

    // Get all the UTF-16 code units in the string.
    var codeUnitList = 'Never odd or even'.codeUnits.toList();
    assert(codeUnitList[0] == 78);
    // Convert to uppercase.
    assert('web apps'.toUpperCase() == 'WEB APPS');

    // Convert to lowercase.
    assert('WEB APPS'.toLowerCase() == 'web apps');
    // Trim a string.
    assert('  hello  '.trim() == 'hello');

    // Check whether a string is empty.
    assert(''.isEmpty);

    // Strings with only white space are not empty.
    assert('  '.isNotEmpty);
    var greetingTemplate = 'Hello, NAME!';
    var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

    // greetingTemplate didn't change.
    assert(greeting != greetingTemplate);
    var sb = StringBuffer();
    sb
      ..write('Use a StringBuffer for ')
      ..writeAll(['efficient', 'string', 'creation'], ' ')
      ..write('.');

    var fullString = sb.toString();

    assert(fullString == 'Use a StringBuffer for efficient string creation.');

    // Here's a regular expression for one or more digits.
    var numbers = RegExp(r'\d+');

    var allCharacters = 'llamas live fifteen to twenty years';
    var someDigits = 'llamas live 15 to 20 years';

    // contains() can use a regular expression.
    assert(!allCharacters.contains(numbers));
    assert(someDigits.contains(numbers));

    // Replace every match with another string.
    var exedOut = someDigits.replaceAll(numbers, 'XX');
    assert(exedOut == 'llamas live XX to XX years');
    
    var numbers1 = RegExp(r'\d+');
    var someDigits1 = 'llamas live 15 to 20 years';

    // Check whether the reg exp has a match in a string.
    assert(numbers1.hasMatch(someDigits1));

    // Loop through all matches.
    for (final match in numbers1.allMatches(someDigits1)) {
      print(match.group(0)); // 15, then 20
    }

    // Create an empty list of strings.
    var grains = <String>[];
    assert(grains.isEmpty);

    // Create a list using a list literal.
    var fruits = ['apples', 'oranges'];

    // Add to a list.
    fruits.add('kiwis');

    // Add multiple items to a list.
    fruits.addAll(['grapes', 'bananas']);

    // Get the list length.
    assert(fruits.length == 5);

    // Remove a single item.
    var appleIndex = fruits.indexOf('apples');
    fruits.removeAt(appleIndex);
    assert(fruits.length == 4);

    // Remove all elements from a list.
    fruits.clear();
    assert(fruits.isEmpty);

    // You can also create a List using one of the constructors.
    var vegetables = List.filled(99, 'broccoli');
    assert(vegetables.every((v) => v == 'broccoli'));
    var fruits1 = ['apples', 'oranges'];

    // Access a list item by index.
    assert(fruits1[0] == 'apples');

    // Find an item in a list.
    assert(fruits1.indexOf('apples') == 0);

    var fruits2 = ['bananas', 'apples', 'oranges'];

    // Sort a list.
    fruits2.sort((a, b) => a.compareTo(b));
    assert(fruits2[0] == 'apples');

    // This list should contain only strings.
    var fruits3 = <String>[];

    fruits3.add('apples');
    var fruits4 = fruits3[0];
    assert(fruits4 is String);
    //fruits.add(5);  Error: 'int' can't be assigned to 'String'

    // Create an empty set of strings.
    var ingredients = <String>{};

    // Add new items to it.
    ingredients.addAll(['gold', 'titanium', 'xenon']);
    assert(ingredients.length == 3);

    // Adding a duplicate item has no effect.
    ingredients.add('gold');
    assert(ingredients.length == 3);

    // Remove an item from a set.
    ingredients.remove('gold');
    assert(ingredients.length == 2);

    // You can also create sets using
    // one of the constructors.
    var atomicNumbers = Set.from([79, 22, 54]);

    var ingredients1 = Set<String>();
    ingredients1.addAll(['gold', 'titanium', 'xenon']);

    // Check whether an item is in the set.
    assert(ingredients1.contains('titanium'));

    // Check whether all the items are in the set.
    assert(ingredients1.containsAll(['titanium', 'xenon']));

    var ingredients2 = Set<String>();
    ingredients2.addAll(['gold', 'titanium', 'xenon']);

    // Create the intersection of two sets.
    var nobleGases = Set.from(['xenon', 'argon']);
    var intersection = ingredients2.intersection(nobleGases);
    assert(intersection.length == 1);
    assert(intersection.contains('xenon'));

    // Maps often use strings as keys.
    var hawaiianBeaches = {
      'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
      'Big Island': ['Wailea Bay', 'Pololu Beach'],
      'Kauai': ['Hanalei', 'Poipu']
    };

    // Maps can be built from a constructor.
    var searchTerms = Map();

    // Maps are parameterized types; you can specify what
    // types the key and value should be.
    var nobleGases1 = Map<int, String>();
    var nobleGases2 = {54: 'xenon'};

    // Retrieve a value with a key.
    assert(nobleGases2[54] == 'xenon');

    // Check whether a map contains a key.
    assert(nobleGases2.containsKey(54));

    // Remove a key and its value.
    nobleGases2.remove(54);
    assert(!nobleGases2.containsKey(54));
    
    // retrieve all the values or all the keys from a map
    var hawaiianBeaches1 = {
      'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
      'Big Island': ['Wailea Bay', 'Pololu Beach'],
      'Kauai': ['Hanalei', 'Poipu']
    };

    // Get all the keys as an unordered collection
    // (an Iterable).
    var keys = hawaiianBeaches1.keys;

    assert(keys.length == 3);
    assert(Set.from(keys).contains('Oahu'));

    // Get all the values as an unordered collection
    // (an Iterable of Lists).
    var values = hawaiianBeaches1.values;
    assert(values.length == 3);
    assert(values.any((v) => v.contains('Waikiki')));

    //To check whether a map contains a key, use containsKey().
    var hawaiianBeaches2 = {
      'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
      'Big Island': ['Wailea Bay', 'Pololu Beach'],
      'Kauai': ['Hanalei', 'Poipu']
    };

    assert(hawaiianBeaches2.containsKey('Oahu'));
    assert(!hawaiianBeaches2.containsKey('Florida'));

    //Use the putIfAbsent() method when you want to assign a value to a key 
    //if and only if the key does not already exist in a map.
    // You must provide a function that returns the value.
    var teamAssignments = <String, String>{};
    teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
    assert(teamAssignments['Catcher'] != null);
    
    //Use isEmpty or isNotEmpty to check whether a list, set, or map has items
    var coffees = <String>[];
    var teas = ['green', 'black', 'chamomile', 'earl grey'];
    assert(coffees.isEmpty);
    assert(teas.isNotEmpty);

    //To apply a function to each item in a list, set, or map with forEach()
    var teas1= ['green', 'black', 'chamomile', 'earl grey'];

    teas1.forEach((tea1) => print('I drink $tea1'));

    //invoke forEach() on a map, your function must take two arguments (the key and value)
    hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
    // I want to visit Oahu and swim at
    // [Waikiki, Kailua, Waimanalo], etc.
    });

    //Iterables provide the map() method, which gives you all the results in a single object:

    var teas2 = ['green', 'black', 'chamomile', 'earl grey'];

    var loudTeas = teas2.map((teas1) => teas1.toUpperCase());
    loudTeas.forEach(print);

    //To force your function to be called immediately on each item, use map().toList() or map().toSet():

    var loudTeas1 = teas.map((teas) => tea.toUpperCase()).toList();
}
 
 String pickToughestKid() {
  return 'Danny';
}
 
  

