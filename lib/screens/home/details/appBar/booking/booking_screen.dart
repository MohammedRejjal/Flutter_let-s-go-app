import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/button_number_person.dart';
import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/date_picker_widget.dart';
import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/select_offers.dart';
import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/time_picker_widget.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft:Radius.circular(20) , topRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[Colors.black87, Colors.blueAccent], // red to yellow
          tileMode: TileMode.mirror, // repeats the gradient over the canvas
        ),
      ),
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DatePickerWidget(),
            const SizedBox(height: 24),
            TimePickerWidget(),
            const SizedBox(height: 24),
            NumberOfPerson(),
            const SizedBox(height: 24),
            SelectOffers(),
            const SizedBox(height: 24),
            Container(
                height: 60,
                width: getScreenWidth() / 3,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('BOOKING'),
                    style: ButtonStyle(
                         
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        )))))
          ],
        ),
      ),
    );
  }
}
