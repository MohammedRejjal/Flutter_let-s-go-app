import 'package:flutter/material.dart';

class AdmainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<AdmainScreen> {
  GlobalKey<ScaffoldState>? _key;
  bool? _isSelected;
  //List<CompanyWidget>? _companies;
  List<String>? _filters;
  List<String>? categoryChoices;
  List<String>? subCategoryChoices;

  List<IconData>? IconCategoryChoices;
  String? url;
  int? _choiceIndex;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _isSelected = false;
    _choiceIndex = 0;
    _filters = <String>[];
    // _companies = <CompanyWidget>[
    //   CompanyWidget('CEO'),
    //   CompanyWidget('Director'),
    //   CompanyWidget('Manager'),
    //   CompanyWidget('Team Leader'),
    //   CompanyWidget('Employee'),
    // ];
  }

  @override
  Widget build(BuildContext context) {
    categoryChoices = [
      "Sport",
      "Nature",
      "Games",
      "Farms",
      "Adventure",
      "kids places",
      "Archaeological sites",
      'tourism'
    ];
    
    IconCategoryChoices = [
      Icons.sports_soccer_sharp,
      Icons.landscape,
      Icons.sports_kabaddi,
      Icons.cottage,
      Icons.hiking,
      Icons.bedroom_baby,
      Icons.wb_sunny,
      Icons.museum
    ];
    print(_filters);
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("Chip Widget In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose category ',
              style: TextStyle(fontSize: 20),
            ),
            // chipList(),
            // _buildActionChips(),
            // _buildInputChips(),
            // Wrap(
            //   children: companyPosition.toList(),
            // ),
            _buildChoiceChips(),
          ],
        ),
      ),
    );
  }

  Widget _buildChoiceChips() {
    return Container(
      color: Colors.black12,
      height: 40,
      child: ListView.builder(
        itemCount: categoryChoices!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ChipTheme(
              data: ChipTheme.of(context)
                  .copyWith(backgroundColor: Colors.lightBlue),
              child: ChoiceChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blueGrey[400],
                  child: Icon(
                    IconCategoryChoices![index],
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                elevation: 100,
                label: Text(categoryChoices![index]),
                selected: _choiceIndex == index,
                selectedColor: Colors.red,
                onSelected: (_) {
                  setState(() {
                    _choiceIndex = index;
                    url = "/" + "${categoryChoices![index]}";
                    print(url);
                    _buildsubChoiceChips();
                  });
                },
                backgroundColor: Colors.green,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildsubChoiceChips() {
    return Container(
      color: Colors.black12,
      height: 40,
      child: ListView.builder(
        itemCount: subCategoryChoices!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ChipTheme(
              data: ChipTheme.of(context)
                  .copyWith(backgroundColor: Colors.lightBlue),
              child: ChoiceChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blueGrey[400],
                  child: Icon(
                    IconCategoryChoices![index],
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                elevation: 100,
                label: Text(categoryChoices![index]),
                selected: _choiceIndex == index,
                selectedColor: Colors.red,
                onSelected: (_) {
                  setState(() {
                    _choiceIndex = index;
                    url = "/" + "${categoryChoices![index]}";
                    print(url);
                  });
                },
                backgroundColor: Colors.green,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
//   chipList() {
//     return Wrap(
//       spacing: 6.0,
//       runSpacing: 6.0,
//       children: <Widget>[
//         _buildChip('Gamer', Color(0xFFff6666)),
//         _buildChip('Hacker', Color(0xFF007f5c)),
//         _buildChip('Developer', Color(0xFF5f65d3)),
//         _buildChip('Racer', Color(0xFF19ca21)),
//         _buildChip('Traveller', Color(0xFF60230b)),
//       ],
//     );
//   }


 

//   Widget _buildInputChips() {
//     return InputChip(
//       padding: EdgeInsets.all(2.0),
//       avatar: CircleAvatar(
//         backgroundColor: Colors.pink.shade600,
//         child: Text('FD'),
//       ),
//       label: Text(
//         'Flutter Devs',
//         style: TextStyle(color: _isSelected! ? Colors.white : Colors.black),
//       ),
//       selected: _isSelected!,
//       selectedColor: Colors.blue.shade600,
//       onSelected: (bool selected) {
//         setState(() {
//           _isSelected = selected;
//         });
//       },
//       onDeleted: () {},
//     );
//   }

//   Widget _buildActionChips() {
//     return ActionChip(
//       elevation: 8.0,
//       padding: EdgeInsets.all(2.0),
//       avatar: CircleAvatar(
//         backgroundColor: Colors.redAccent,
//         child: Icon(
//           Icons.mode_comment,
//           color: Colors.white,
//           size: 20,
//         ),
//       ),
//       label: Text('Message'),
//       onPressed: () {
//         _key!.currentState!.showSnackBar(SnackBar(
//           content: Text('Message...'),
//         ));
//       },
//       backgroundColor: Colors.grey[200],
//       shape: StadiumBorder(
//           side: BorderSide(
//         width: 1,
//         color: Colors.redAccent,
//       )),
//     );
//   }

//   Iterable<Widget> get companyPosition sync* {
//     for (CompanyWidget company in _companies!) {
//       yield Padding(
//         padding: const EdgeInsets.all(6.0),
//         child: FilterChip(
//           backgroundColor: Colors.tealAccent[200],
//           avatar: CircleAvatar(
//             backgroundColor: Colors.cyan,
//             child: Text(
//               company.name[0].toUpperCase(),
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           label: Text(
//             company.name,
//           ),
//           selected: _filters!.contains(company.name),
//           selectedColor: Colors.purpleAccent,
//           onSelected: (bool selected) {
//             setState(() {
//               if (selected) {
//                 _filters!.add(company.name);
//               } else {
//                 _filters!.removeWhere((String name) {
//                   return name == company.name;
//                 });
//               }
//             });
//           },
//         ),
//       );
//     }
//   }

//   Widget _buildChip(String label, Color color) {
//     return GestureDetector(
//       onTap: () {
//         print(label);
//         print(color);
//         setState(() {
//           color = Color(0xffffc107);
//         });
//         print(color);
//       },
//       child: Chip(
//         labelPadding: EdgeInsets.all(2.0),
//         avatar: CircleAvatar(
//           backgroundColor: Colors.white70,
//           child: Text(label[0].toUpperCase()),
//         ),
//         label: Text(
//           label,
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: color,
//         elevation: 6.0,
//         shadowColor: Colors.grey[60],
//         padding: EdgeInsets.all(8.0),
//       ),
//     );
//   }
// }

// class CompanyWidget {
//   const CompanyWidget(this.name);
//   final String name;
// }











// import 'package:flutter/material.dart';

// class AdmainScreen extends StatefulWidget {
//   const AdmainScreen({Key? key}) : super(key: key);

//   @override
//   _AdmainScreenState createState() => _AdmainScreenState();
// }

// class _AdmainScreenState extends State<AdmainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     String dropdownValue = 'One';
//     var company = 'aaaa';
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             FilterChip(
//               backgroundColor: Colors.tealAccent[200],
//               avatar: CircleAvatar(
//                 backgroundColor: Colors.cyan,
//                 child: Text(
//                   company.toUpperCase(),
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               label: Text(
//                 company,
//               ),
//               selected:true,
//               selectedColor: Colors.purpleAccent,
//               onSelected: (bool selected) {
//                 setState(() {
//                   if (selected) {
//                     _filters.add(company);
//                   } else {
//                     _filters.removeWhere((String name) {
//                       return name == company;
//                     });
//                   }
//                 });
//               },
//             ),
//             ActionChip(
//               elevation: 8.0,
//               padding: EdgeInsets.all(2.0),
//               avatar: CircleAvatar(
//                 backgroundColor: Colors.redAccent,
//                 child: Icon(
//                   Icons.mode_comment,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               ),
//               label: Text('Message'),
//               onPressed: () {},
//               backgroundColor: Colors.grey[200],
//               shape: StadiumBorder(
//                   side: BorderSide(
//                 width: 1,
//                 color: Colors.redAccent,
//               )),
//             ),
//             Wrap(
//               spacing: 8.0, // gap between adjacent chips
//               runSpacing: 1.0, // gap between lines
//               children: <Widget>[
//                 ActionChip(
//                   elevation: 8.0,
//                   padding: EdgeInsets.all(2.0),
//                   avatar: CircleAvatar(
//                     backgroundColor: Colors.redAccent,
//                     child: Icon(
//                       Icons.mode_comment,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                   ),
//                   label: Text('Message'),
//                   onPressed: () {},
//                   backgroundColor: Colors.grey[200],
//                   shape: StadiumBorder(
//                       side: BorderSide(
//                     width: 1,
//                     color: Colors.redAccent,
//                   )),
//                 ),
//                 Chip(
//                   labelPadding: EdgeInsets.all(2.0),
//                   avatar: CircleAvatar(
//                     backgroundColor: Colors.white70,
//                     child: Text('label[0].toUpperCase()'),
//                   ),
//                   label: Text(
//                     'label',
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                   backgroundColor: Colors.amber,
//                   elevation: 6.0,
//                   shadowColor: Colors.grey[60],
//                   padding: EdgeInsets.all(8.0),
//                 ),
//                 Chip(
//                   avatar: CircleAvatar(
//                       backgroundColor: Colors.blue.shade900,
//                       child: const Text('ML')),
//                   label: const Text('Lafayette'),
//                 ),
//                 Chip(
//                   avatar: CircleAvatar(
//                       backgroundColor: Colors.blue.shade900,
//                       child: const Text('HM')),
//                   label: const Text('Mulligan'),
//                 ),
//                 Chip(
//                   avatar: CircleAvatar(
//                       backgroundColor: Colors.blue.shade900,
//                       child: const Text('JL')),
//                   label: const Text('Laurens'),
//                 ),
//               ],
//             ),
//             DropdownButton<String>(
//               value: dropdownValue,
//               icon: const Icon(Icons.arrow_downward),
//               iconSize: 24,
//               elevation: 16,
//               style: const TextStyle(color: Colors.deepPurple),
//               underline: Container(
//                 height: 2,
//                 color: Colors.deepPurpleAccent,
//               ),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownValue = newValue!;
//                   print(dropdownValue);
//                 });
//               },
//               items: <String>['One', 'Two', 'Free', 'Four']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
