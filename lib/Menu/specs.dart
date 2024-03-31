import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Get/bools.dart';

SwitchController switchController = Get.put(SwitchController());

class Durumlar extends StatefulWidget {
  final Function sendcmd;
  const Durumlar({super.key, required this.sendcmd});

  @override
  State<Durumlar> createState() => _DurumlarState();
}

class _DurumlarState extends State<Durumlar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    double referenceWidth = width / 392.7;
    double referenceHeight = height / 825.5;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 167, 255, 164),
          Color.fromARGB(255, 236, 255, 235),
        ],
      )),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          alignment: Alignment.topCenter,
          width: referenceWidth * 370,
          height: referenceHeight * 230,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: referenceHeight * 5,
              ),
              const Text("SU SEVİYELERİ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: referenceHeight * 5),
              Container(
                  height: referenceHeight * 55,
                  width: referenceWidth * 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: height > 888 && width > 666
                      ? Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              SizedBox(width: referenceWidth * 70),
                              Image.asset("assets/images/clean_water.png",
                                  width: referenceWidth * 55,
                                  height: referenceHeight * 55),
                              SizedBox(width: referenceWidth * 20),
                              SizedBox(
                                width: referenceWidth * 140,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Temiz Su Seviyesi",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          )),
                                      SizedBox(height: referenceHeight * 1),
                                      Text("%${switchController.statuswhite}",
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ]),
                              )
                            ])
                      :height < 888 && width > 666
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Image.asset("assets/images/clean_water.png",
                                  width: referenceWidth * 45,
                                  height: referenceHeight * 45),
                              SizedBox(width: referenceWidth * 20),
                              SizedBox(
                                width: referenceWidth * 220,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Temiz Su Seviyesi:   ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text("%${switchController.statuswhite}",
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ]),
                              )
                            ]):
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Image.asset("assets/images/clean_water.png",
                                  width: referenceWidth * 35,
                                  height: referenceHeight * 35),
                              SizedBox(width: referenceWidth * 20),
                              SizedBox(
                                width: referenceWidth * 220,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Temiz Su Seviyesi:   ",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text("%${switchController.statuswhite}",
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ]),
                              )
                            ])
                            ),
              SizedBox(height: referenceHeight * 5),
              Container(
                  height: referenceHeight * 55,
                  width: referenceWidth * 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: height > 888 && width > 666
                      ? Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: referenceWidth * 70),
                        Image.asset("assets/images/gray_water.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 140,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Gri Su Seviyesi",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: referenceHeight * 1),
                                Text("%${switchController.statusgray}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      :height < 888 && width > 666
                      ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/gray_water.png",
                            width: referenceWidth * 45,
                            height: referenceHeight * 45),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Gri Su Seviyesi: ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("%${switchController.statusgray}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ]): Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/gray_water.png",
                            width: referenceWidth * 35,
                            height: referenceHeight * 35),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Gri Su Seviyesi: ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("%${switchController.statusgray}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      ),
              SizedBox(height: referenceHeight * 5),
              Container(
                  height: referenceHeight * 55,
                  width: referenceWidth * 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: height > 888 && width > 666
                  ? Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: referenceWidth * 70),
                        Image.asset("assets/images/dirty_water.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 140,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Kirli Su Seviyesi:   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("%${switchController.statusblack}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      :height < 888 && width > 666
                  ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/dirty_water.png",
                            width: referenceWidth * 45,
                            height: referenceHeight * 45),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Kirli Su Seviyesi:   ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("%${switchController.statusblack}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ]):Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/dirty_water.png",
                            width: referenceWidth * 35,
                            height: referenceHeight * 35),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Kirli Su Seviyesi:   ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("%${switchController.statusblack}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      ),
            ],
          ),
        ),
        SizedBox(
          height: referenceHeight * 22,
        ),
        Container(
          alignment: Alignment.topCenter,
          width: referenceWidth * 370,
          height: referenceHeight * 230,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: referenceHeight * 5,
              ),
              const Text("AKÜ VOLTAJLARI",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(height: 5),
              Container(
                  height: referenceHeight * 80,
                  width: referenceWidth * 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  height > 888 && width >666
                  ?Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: referenceWidth * 70),
                        Image.asset("assets/images/battery_1.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 140,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Yaşam akü voltajı",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: referenceHeight * 1),
                                Text("${switchController.statusbattery1}v",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      :height < 888 && width >666
                  ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/battery_1.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Yaşam akü voltajı:  ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${switchController.statusbattery1}v",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      :Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/battery_1.png",
                            width: referenceWidth * 45,
                            height: referenceHeight * 45),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Yaşam akü voltajı:  ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${switchController.statusbattery1}v",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      ),
              SizedBox(height: referenceHeight * 5),
              Container(
                  height: referenceHeight * 80,
                  width: referenceWidth * 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  height > 888 && width >666
                  ?Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: referenceWidth * 70),
                        Image.asset("assets/images/battery_2.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 140,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Araç akü voltajı",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: referenceHeight * 1),
                                Text("${switchController.statusbattery2}v",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ]) : height < 888 && width >666
                  ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/battery_2.png",
                            width: referenceWidth * 55,
                            height: referenceHeight * 55),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Araç akü voltajı:  ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${switchController.statusbattery2}v",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ]): Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/battery_2.png",
                            width: referenceWidth * 45,
                            height: referenceHeight * 45),
                        SizedBox(width: referenceWidth * 20),
                        SizedBox(
                          width: referenceWidth * 220,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Araç akü voltajı:  ",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("${switchController.statusbattery2}v",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        )
                      ])
                      ),
            ],
          ),
        ),
        SizedBox(
          height: referenceHeight * 22,
        ),
        Container(
          alignment: Alignment.topCenter,
          width: referenceWidth * 370,
          height: referenceHeight * 130,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: referenceHeight * 5,
              ),
              const Text("SICAKLIKLAR",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: referenceHeight * 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: referenceWidth * 175,
                  height: referenceHeight * 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  height > 888 && width >666
                  ?Row(
                    children: [
                      Image.asset(
                        "assets/images/temp_in.png",
                        width: referenceWidth * 55,
                        height: referenceHeight * 55,
                      ),
                      SizedBox(
                        width: referenceWidth * 5,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("İç Sıcaklık",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("${switchController.statustempin}°C",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                    ],
                  )
                  :height < 888 && width >666
                  ?Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset(
                        "assets/images/temp_in.png",
                        width: referenceWidth * 55,
                        height: referenceHeight * 55,
                      ),
                      const Text("İç Sıcaklık:  ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                      Text("${switchController.statustempin}°C",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                          SizedBox(
                            width: referenceWidth * 20,
                          )
                    ],
                  ): Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset(
                        "assets/images/temp_in.png",
                        width: referenceWidth * 55,
                        height: referenceHeight * 55,
                      ),
                      SizedBox(
                        width: referenceWidth *5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("İç Sıcaklık:",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              )),
                        
                      Text("${switchController.statustempin}°C",
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),],
                      ),
                    ],
                  )
                ),
                SizedBox(width: referenceWidth * 20),
                Container(
                  width: referenceWidth * 175,
                  height: referenceHeight * 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  height > 888 && width >666
                  ? Row(
                    children: [
                      Image.asset(
                        "assets/images/temp_out.png",
                        width: referenceWidth * 55,
                        height: referenceHeight * 55,
                      ),
                      SizedBox(
                        width: referenceWidth * 5,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Dış Sıcaklık",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("${switchController.statustempout}°C",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                    ],
                  ) :height < 888 && width >666
                  ?Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset(
                        "assets/images/temp_out.png",
                        width: referenceWidth * 55,
                        height: referenceHeight * 55,
                      ),
                      const Text("Dış Sıcaklık:  ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                      Text("${switchController.statustempout}°C",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                          SizedBox(
                            width: referenceWidth * 20,
                          )
                    ],
                  ): Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset(
                        "assets/images/temp_out.png",
                        width: referenceWidth * 45,
                        height: referenceHeight * 45,
                      ),
                      SizedBox(
                        width: referenceWidth * 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dış Sıcaklık:",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              )),
                        
                      Text("${switchController.statustempout}°C",
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),],
                      ),
                    ],
                  )
                ),
              ])
            ],
          ),
        ),
      ])),
    );
  }
}
