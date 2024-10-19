import 'package:flutter/material.dart';
import 'package:myapp/Component/bottom_sheet.dart';

class MenuSlider extends StatefulWidget {
  const MenuSlider({super.key});

  @override
  State<MenuSlider> createState() => _MenuSliderState();
}

class _MenuSliderState extends State<MenuSlider> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const Bottomsheet(text1: "Solve",text2: "Learn",text3:"Patterns" );
          }),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 5, left: 3, right: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                    
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                    
               borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                height: 150, width: 150, color: Colors.grey),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Timer",
                                ),
                                Icon(Icons.arrow_right_alt)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      
                  decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                    
                     borderRadius: BorderRadius.circular(20),
                      ),   height: 200,
                      width: 180,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                                height: 150, width: 150, color: Colors.grey),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Timer",
                                ),
                                Icon(Icons.arrow_right_alt)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
