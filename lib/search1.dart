import 'package:flutter/material.dart';

class SearchAppBarOne extends StatefulWidget {
  const SearchAppBarOne({super.key});

  @override
  State<SearchAppBarOne> createState() => _SearchAppBarOneState();
}

class _SearchAppBarOneState extends State<SearchAppBarOne> {
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

  late List<Map<String, String>> filteredMembers;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredMembers = members.values.toList();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });

    _searchController.addListener(() {
      filterMembers();
    });
  }

  void filterMembers() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredMembers = members.values.where((member) {
        final name = member['name']?.toLowerCase() ?? '';
        final age = member['age'] ?? '';
        final country = member['country']?.toLowerCase() ?? '';
        return name.contains(query) ||
            age.contains(query) ||
            country.contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          highlightColor: const Color(0xff000000b2).withOpacity(0.7),
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFC32422),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        'assets/images/background.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'The weekend',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Community • +11K Members',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 200,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(
                                      Icons.link,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Invite',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.group,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Add member',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.group_add,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Add Group',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width * 0.70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFE9E9EB),
                    ),
                    child: TextField(
                      focusNode: _focusNode,
                      controller: _searchController,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: filteredMembers.map((member) {
                  return ListTile(
                    title: Text(member['name']!),
                    subtitle: Text('${member['age']}, ${member['country']}'),
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/background.png'),
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
        ),
      ),
    );
  }
}
