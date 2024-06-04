import 'package:flutter/material.dart';
import 'package:schaffen_task/search1.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  final Map<int, Map<String, String>> members = {
    0: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    1: {'name': 'John', 'age': '31', 'country': 'USA'},
    2: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    3: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    4: {'name': 'John', 'age': '31', 'country': 'USA'},
    5: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    6: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    7: {'name': 'John', 'age': '31', 'country': 'USA'},
    8: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    9: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    10: {'name': 'John', 'age': '31', 'country': 'USA'},
    11: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    12: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    13: {'name': 'John', 'age': '31', 'country': 'USA'},
    14: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    15: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    16: {'name': 'John', 'age': '31', 'country': 'USA'},
    17: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    18: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    19: {'name': 'John', 'age': '31', 'country': 'USA'},
    20: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    21: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    22: {'name': 'John', 'age': '31', 'country': 'USA'},
    23: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    24: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    25: {'name': 'John', 'age': '31', 'country': 'USA'},
    26: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    27: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    28: {'name': 'John', 'age': '31', 'country': 'USA'},
    29: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
    30: {'name': 'Yashika', 'age': '29', 'country': 'India'},
    31: {'name': 'John', 'age': '31', 'country': 'USA'},
    32: {'name': 'Sophia', 'age': '25', 'country': 'Canada'},
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Members',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchAppBarOne(),
                      ));
                  print('search button clicked');
                },
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ],
          ),
          Column(
            children: members.entries.map((entry) {
              final Map<String, String> member = entry.value;
              return ListTile(
                title: Text(member['name']!),
                subtitle: Text('${member['age']}, ${member['country']}'),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/background.png'),
                ),
                trailing: InkWell(
                  onTap: () {
                    print('add button clicked');
                  },
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: member['name'] == 'Yashika'
                          ? Colors.grey.shade400
                          : Colors.red,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        member['name'] == 'Yashika' ? 'Following' : 'Add',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
