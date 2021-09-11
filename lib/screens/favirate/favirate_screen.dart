import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/home/see&do/latest%20experiences.dart';
import 'package:ecommerce_final_project/screens/home/see&do/widgat/card.dart';
import 'package:ecommerce_final_project/screens/home/details/appBar/booking/booking_bar.dart';
import 'package:ecommerce_final_project/screens/widgets/bottom_bar.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavirateScreen extends StatefulWidget {
  const FavirateScreen({Key? key}) : super(key: key);

  @override
  _FavirateScreenState createState() => _FavirateScreenState();
}

var data;

class _FavirateScreenState extends State<FavirateScreen> {
  @override
  void initState() {
    print(
        '============================================================================');
    context
        .read<Userprovider>()
        .getFavirateData(url: context.read<Userprovider>().user!.userId);

    super.initState();
  }

  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<DetailsProvidder>().detailesData;

    var watcher1 = context.watch<Userprovider>();
    print(watcher1.favirateData);
    return SafeArea(
      child: Scaffold(
        body: watcher1.favirateData[0] != ''
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    childAspectRatio: .76),
                itemCount: watcher1.favirateData.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return BookingBar(
                                watcher: watcher.where((element) =>
                                    element.name ==
                                    watcher.elementAt(index).name));
                          }));
                          print(watcher.length);
                        },
                        child: Card(
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            height: getScreenHeight() / 2,
                            padding: EdgeInsets.all(2),
                            width: getScreenWidth() / 5.5,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            '${"${context.watch<DetailsProvidder>().detailesData.where((element) => element.name == context.watch<Userprovider>().favirateData[index]).first.mainImagUrl}"}'),
                                      ),
                                    ),
                                  ),
                                  flex: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '${"${context.watch<DetailsProvidder>().detailesData.where((element) => element.name == context.watch<Userprovider>().favirateData[index]).first.name}"}',
                                            style: TextStyle(
                                                fontSize: getScreenWidth() / 48,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueGrey),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '''${"${context.watch<DetailsProvidder>().detailesData.where((element) => element.name == context.watch<Userprovider>().favirateData[index]).first.infoDetails}"}''',
                                            style: TextStyle(
                                                fontSize: getScreenWidth() / 60,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  flex: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              context
                                                  .read<Userprovider>()
                                                  .deleteFavirate(
                                                      url: context
                                                          .read<Userprovider>()
                                                          .user!
                                                          .userId,
                                                      name:
                                                          "${context.read<DetailsProvidder>().detailesData.where((element) => element.name == context.read<Userprovider>().favirateData[index]).first.name}");
                                              setState(() {});
                                            },
                                            icon: Icon(Icons.delete)),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  flex: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(15)));
                })
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No Item in your favorite list"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(BottonBar.namedRoute);
                        },
                        child: Text("ADD Items"))
                  ],
                ),
              ),
      ),
    );
  }
}
