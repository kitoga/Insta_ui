import 'package:Insta_ui/constant/constant.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            //width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              //padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.5)
                  ]
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios, color: Colors.white, size: 28,),
                          Icon(Icons.add_shopping_cart, color: Colors.white, size: 28,),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 18),
                              child: Row(
                                children: <Widget>[
                                  location,
                                  locationText,
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: titleText,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    dollar,
                                    amountText,
                                    SizedBox(width: 5,),
                                    dot,
                                    SizedBox(width: 5,),
                                    foodTimeText,
                                    SizedBox(width: 8,),
                                    rateText,
                                    star,
                                    SizedBox(width: 3,),
                                    numberText,
                                  ],
                                ),
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: EdgeInsets.only(left: 15, ),
                              child: Row(
                                children: <Widget>[
                                  deliveryText,
                                  SizedBox(width: 20,),
                                  pickupText,
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: EdgeInsets.only(left: 15,),
                              child: Row(
                                children: <Widget>[
                                  minsText,
                                  SizedBox(width: 3),
                                  dollar,
                                  feeText,
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sharon-mccutcheon-D_lsnqKA3PE-unsplash.jpg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                              ),
                            )
                          ],
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}