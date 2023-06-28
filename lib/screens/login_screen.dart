import 'package:flutter/material.dart';
import 'package:login_ui/screens/register.dart';
import 'package:login_ui/screens/welcome_screen.dart';
import 'package:login_ui/widget/text_field.dart';

class LoginScreen extends StatelessWidget {

  static const routeName = '/login-screen';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              'https://cdn.dribbble.com/users/782052/screenshots/11219988/doctors_illustration__4x.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 510,
              width: double.infinity,
              decoration:const BoxDecoration(
                color: Color.fromARGB(255, 133, 209, 245),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(bottom: 8, left: 20),
                      child:  Text(
                            'E-mail',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 18, 103)
                            ),
                          ),
                    ),
                      const TextFields(hintText: 'e-mail or mobile'),
                      const SizedBox(height: 12,),
                       const Padding(
                         padding: EdgeInsets.only(bottom: 8, left: 20),
                         child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 18, 103)
                            ),
                          ),
                       ),
                      const TextFields(hintText: 'password'),
                     const SizedBox(height: 10,),
                    Container(
                      height: 55,
                      padding: const EdgeInsets.only(top: 5, left: 70, right: 70),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlue
                          )
                        ),
                        onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const WelcomePage()));
                        },
                        child: const Text('Sign In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),
                      ),
                    ),
                    const SizedBox(height: 110),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don`t have account?'),
                        TextButton(
                          onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  SignupScreen()));
                        }, child: const Text('Create acount', style: TextStyle(color: Colors.white))),
                      ],
                    ),
                   
                   
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}