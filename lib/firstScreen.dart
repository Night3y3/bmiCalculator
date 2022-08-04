import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reused.dart';
import 'iconCard.dart';
import 'constants.dart';


enum Gender {
  male,
  female,
  trans,
}

int height = 180;
int weight = 60;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender tapGender = Gender.trans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        color: color1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tapGender = Gender.male;
                    });

                  },
                  child: Reused(
                    colour: tapGender == Gender.male ? color2 : color1,
                    cardChild: iconCard(iconName: FontAwesomeIcons.mars,text: 'MALE',),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      tapGender = Gender.female;
                    });

                  },
                    child: Reused(
                      colour: tapGender == Gender.female ? color2 : color1,
                      cardChild: iconCard(iconName: FontAwesomeIcons.venus,text: 'FEMALE',),
                )),
              ],
            ),
            Reused(colour: color2,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT(in cm)",
                    style: kWordStyle,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                      style: kNumberStyle,
                      ),
                      Text("cm",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFF44336),
                        overlayColor: Color(0x26F44336),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 25)
                    ),
                    child: Slider(value: height.toDouble(),
                        min: 100,
                        max: 300,

                        inactiveColor: Color(0XFFE0E0E0),
                        onChanged:(double newValue){
                      setState(() {
                        height = newValue.round();
                      });
                        }),
                  )

              ],
            ),

              width: double.infinity,
              height: 170,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Reused(
                  colour: color2,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                      style: kWordStyle,),
                      Text(weight.toString(),
                      style: kNumberStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomRoundButtom(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,

                          ),
                          CustomRoundButtom(icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              height--;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
                ),
                Reused(
                  colour: color2,
                  cardChild: iconCard(iconName: FontAwesomeIcons.earthAmericas,text: '',),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.red[400],
              height: 70.0,
              width: double.infinity,
            )
          ],
        ),
      )
    );
  }
}

class CustomRoundButtom extends StatelessWidget {
  CustomRoundButtom({this.icon = FontAwesomeIcons.plus, required this.onPressed,});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(),
      child: Icon(icon),
      style: ElevatedButton.styleFrom(fixedSize: const Size(2.0, 2.0), shape: const CircleBorder()),
    );
  }
}




