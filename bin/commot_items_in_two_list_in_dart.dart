/* 

In this code, we showed two approaches to check an common items into two lists. First one is better than the second approach as the first one 
has less time complexity. 

first approach ==> O(n+m)
second approach ==> O(n*m)

array1 = ['a', 'b', 'd', 'x'];   
array2 = ['y', 'd'];          ===> return true as 'd' is common in both list


array1 = ['a', 'b', 'd', 'x'];   
array2 = ['y', 'c'];          ===> return false as nothing is common in both list


*/

void main() {
  //////////////////////////////// First Approach //////////////////////////////

  final data =
      {}; //we would like to save first List's elements into an object to avoid nested iteration which saves time and resolve the time complexity of the second approach.

  bool isThereAnyCommonElement(array1, array2) {
    for (int i = 0; i < array1.length; i++) {
      if (!data.containsKey(data[array1[i]])) {
        final item = array1[i];

        data[item] = true;
      }
    }
    print(data);
    for (int i = 0; i < array2.length; i++) {
      if (data[array2[i]] == true) {
        print(true);
        return true;
      }
    }
    return false;
  }

  final List list1 = ['a', 'b', 'd', 'x'];
  final List list2 = ['y', 'd'];

  isThereAnyCommonElement(list1, list2);

  //////////////////////////////// Second Approach //////////////////////////////

  // step 1 ==> iterating first List's first item with the second list's every item and check whether is there any common item or not.

  bool isThereAnyCommonElement2(array1, array2) {
    print('second approach');
    for (int i = 0; i < array1.length; i++) {
      for (int j = 0; j < array2.length; j++) {
        if (array1[i] == array2[j]) {
          print('true');
          return true;
        }
      }
    }
    return false;
  }

  isThereAnyCommonElement2(list1, list2);
}

/*
Output: 

{a: true, b: true, d: true, x: true}
true
second approach
true

*/
