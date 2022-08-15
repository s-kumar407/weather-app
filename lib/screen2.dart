import 'package:flutter/material.dart';
import 'package:http/http.dart';

class secondscreen extends StatelessWidget {
  final String cityname;

  final String statename;
  final String countryname;
  final String localtime;
  final String temperater1;
  final String temperater2;
  final String windspeed;
  final String pressure;
  final String humidity;

  secondscreen(
      this.cityname,
      this.statename,
      this.countryname,
      this.localtime,
      this.temperater1,
      this.temperater2,
      this.windspeed,
      this.humidity,
      this.pressure);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assests/images/locationicon.jpg',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Text(
                      cityname,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    Text(",",
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    Text(statename,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    Text(",",
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    Text(countryname,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DATE & TIME :",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black)),
                  Text(localtime,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.red))
                ],
              ),
              Container(
                child: Image.asset(
                  "assests/images/tem1.jpg",
                  width: 150,
                  height: 150,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Tempareture :   ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black)),
                    TextSpan(
                      text: temperater1,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 19.0,
                          fontWeight: FontWeight.w500),
                    ),
                    const TextSpan(
                      text: "°",
                      style: TextStyle(color: Colors.red, fontSize: 19.0),
                    ),
                    const TextSpan(
                      text: "   celsius",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Tempareture :",
              //       style: TextStyle(
              //           fontSize: 20.0, fontWeight: FontWeight.w500,),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(left: 5,right: 5),
              //       child: Text(
              //         temperater1,
              //         style: const TextStyle(
              //             color: Colors.black,
              //             fontSize: 30.0,
              //             fontWeight: FontWeight.w400),
              //       ),
              //     ),
              //     const Text("in_celcius")
              //   ],
              // ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              "assests/images/tem2.jpg",
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Tempareture :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                TextSpan(
                                  text: temperater2,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 17.0),
                                ),
                                TextSpan(
                                  text: "°",
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 19.0),
                                ),
                                TextSpan(
                                  text: "  farenheit",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Expanded(
                        //   flex: 2,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(bottom: 8),
                        //     child: Row(
                        //       children: [
                        //         const Text(
                        //           "Tempareture :",
                        //           style: TextStyle(fontWeight: FontWeight.w500),
                        //         ),
                        //         Padding(
                        //           padding: const EdgeInsets.all(5.0),
                        //           child: Text(
                        //             temperater2,
                        //             style: const TextStyle(
                        //                 color: Colors.black, fontSize: 15.0),
                        //           ),
                        //         ),
                        //         const Text("in_farenheit")
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              "assests/images/wind.jpg",
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Windspeed :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                TextSpan(
                                  text: windspeed,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 17.0),
                                ),
                                TextSpan(
                                  text: " mph",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     const Text("Windspeed :",style: TextStyle(fontWeight: FontWeight.w500)),
                        //     Padding(
                        //       padding: const EdgeInsets.all(5.0),
                        //       child: Text(windspeed,
                        //           style: const TextStyle(color: Colors.black,fontSize: 15.0)),
                        //     ),
                        //     const Text("in_mph")
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              "assests/images/pressure.jpg",
                              width: 90,
                              height: 90,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Pressure :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                TextSpan(
                                  text: pressure,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 17.0),
                                ),
                                TextSpan(
                                  text: " Hg(inch)",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     const Text("Pressure :",
                        //         style: TextStyle(fontWeight: FontWeight.w500)),
                        //     Padding(
                        //       padding: const EdgeInsets.all(5.0),
                        //       child: Text(
                        //         pressure,
                        //         style: const TextStyle(
                        //             color: Colors.black, fontSize: 15.0),
                        //       ),
                        //     ),
                        //     const Text("in_pascal")
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Image.asset(
                              "assests/images/humidity.jpg",
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Humidity :  ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: humidity,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 17.0),
                                ),
                                TextSpan(
                                  text: " g/kg",
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        )
                        // Row(
                        //   children: [
                        //     Text("Humidity :",
                        //         style: TextStyle(fontWeight: FontWeight.w500)),
                        //     Padding(
                        //       padding: const EdgeInsets.all(5.0),
                        //       child: Text(humidity,
                        //           style: const TextStyle(
                        //               color: Colors.black, fontSize: 15.0)),
                        //     ),
                        //     const Text("in_g/kg")
                        //   ],
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
