import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
 
Card BuildCard(
  var image,
  var text_name,
  var text_details,
) {
  var icon = Icon(Icons.favorite);
  return Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Container(
      height: getScreenHeight()/2,
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
                  image: NetworkImage('${image}'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${text_name}',
                      style: TextStyle(
                          fontSize: getScreenWidth() / 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '''${text_details}''',
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
                        if (icon == Icon(Icons.favorite))
                          
                            icon = Icon(Icons.favorite_border);
                          
                        else {
                       
                            icon = Icon(Icons.favorite);
                         
                        }
                      },
                      icon: icon),
                  Spacer(),
                  //rate
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    ),
  );
}
