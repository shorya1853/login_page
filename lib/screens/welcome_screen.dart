import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://media.gettyimages.com/id/479287689/vector/happy-doctor.jpg?s=1024x1024&w=gi&k=20&c=Mtr8NkckHnRNLPMHUkWUyPF5RMLCqXZAYyLrhem2Djw='))),
        alignment: Alignment.bottomCenter,
        child: Container(

          padding: const EdgeInsets.all(8),
         
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                margin: const EdgeInsets.all(22),
        color: const Color.fromARGB(255, 217, 239, 248),
        elevation: 20,
        shadowColor: Theme.of(context).primaryColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25, top: 8),
                      child: Text('Welcome', style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 3, 18, 103),
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    const Text('Bringing Healtcare to You!',style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 3, 18, 103)
                    )),
                    Container(
                      width: 350,
                      alignment: Alignment.center,
                      child: const Text("Get medical checkups and doctor vist right at your doorstep", 
                      style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 3, 18, 103)
                      )),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
                      foregroundColor: const MaterialStatePropertyAll(Colors.white)),
                      onPressed: null, child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: const [
                          Text('Get Started',style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    )),
                          SizedBox(width: 20,),
                          Icon(Icons.arrow_forward)
                        ],
                      ))
                
                  ],),
                )),
            ],
          ),
        ),
      ),
    );
  }
}
