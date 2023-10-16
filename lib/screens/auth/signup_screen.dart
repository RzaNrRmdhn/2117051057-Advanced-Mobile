import 'package:flutter/material.dart';
import 'package:justduit/screens/auth/account/account_user.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController getEmailUser = TextEditingController();
  TextEditingController getPasswordUser = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50.0),  
                  height: 20
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logo.png')
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),  
                  height: 20
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hi, Welcome Back to Justduit',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Email Address',
                              style: Theme.of(context).textTheme.headlineSmall,
                              children: const [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: Colors.red,
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: getEmailUser,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            isDense: true,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Password',
                              style: Theme.of(context).textTheme.headlineSmall,
                              children: const [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: Colors.red,
                                  )
                                ),
                              ],
                            ),  
                          )
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          controller: getPasswordUser,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            isDense: true,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if(inputValidator(getEmailUser.text.trim(), getPasswordUser.text.trim())){
                                isAccountValidator(getEmailUser.text.trim(), getPasswordUser.text.trim()) 
                                ? Navigator.pushNamed(context, '/Home') 
                                : ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Invalid Email or Password, please try again'),
                                  ),
                                );
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Please fill all the fields'),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            child: Text(
                              'Sign In Now',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignIn');
                            },
                            child: Text(
                              'Create New Account',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )                
              ],
            ),
          ),
        ),
      ),
    );
  }
  bool inputValidator(String email, String pass) {
    if (email.isEmpty ) return false;
    if (pass.isEmpty ) return false;
    
    return true;
  }

  bool isAccountValidator(String email, String pass){
    for (var element in getAccounts) {
      if (element.getEmail == email) {
        if (element.getPassword == pass) return true;
      }
    }
    
    return false;
  }
}