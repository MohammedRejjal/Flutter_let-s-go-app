import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

List<String> offers = [ 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtxm8GfZ13CzSsmlg5hKHNorpF1T_GHxz0ZQ&usqp=CAU',
              'https://scontent.famm9-1.fna.fbcdn.net/v/t1.6435-9/217460696_3119706268316350_5586250042446119543_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHJ0-0kE3DCuO7ITNGq8wxqwfUo7a_OOG7B9Sjtr844bnwhqxvBTnVyyyDAKilLJhl3icyHrg2JMr-hqC0FerPQ&_nc_ohc=Ugm63xN7ia4AX-QDeBE&_nc_ht=scontent.famm9-1.fna&oh=5a192727b222ebe3c6439bb3cbaefc8b&oe=615B0177',
              'https://scontent.famm9-1.fna.fbcdn.net/v/t1.6435-9/222407188_654517855941996_7325297437980806308_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFYZw5ReGmStqFd15EvMFXU5y3Z1oM_dgDnLdnWgz92AB8x9IBPrm8tIH6aXZwOuiavEi-7NtFSP_LGkncnWaAe&_nc_ohc=Dm8U1M13YYUAX-Sw_z9&_nc_ht=scontent.famm9-1.fna&oh=d8726aa6bdc1334b83dbbdea34b6d6d0&oe=615BA69E',
              'https://tashatgo.com/wp-content/uploads/2021/07/%D8%AA%D9%86%D8%B2%D9%8A%D9%84-3.jpg',
];

class _notificationsState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           appBar: AppBar( backgroundColor: Colors.blueGrey[100],),
         body: ListView.builder(
          itemCount: offers.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getScreenHeight()/3,
                    width: double.infinity,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image: NetworkImage(offers[index]),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                ],
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
