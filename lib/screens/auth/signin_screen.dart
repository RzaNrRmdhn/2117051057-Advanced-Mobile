import 'package:flutter/material.dart';
import 'package:justduit/screens/auth/account/account_user.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController getEmailUser = TextEditingController();
  TextEditingController getPasswordUser = TextEditingController();
  TextEditingController getFullNameUser = TextEditingController();
  TextEditingController getConfirmPasswordUser = TextEditingController();

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
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign Up Now and Unlock the Power of Justduit',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Full Name',
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
                          controller: getFullNameUser,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                          ),
                        ),
                        const SizedBox(height: 10.0),
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
                          controller: getEmailUser,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              text: 'Confirm Password',
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
                          controller: getConfirmPasswordUser,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            isDense: true,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if(isValidator(getFullNameUser.text.trim(), getEmailUser.text.trim(), getPasswordUser.text.trim(), getConfirmPasswordUser.text.trim())){
                                addAccount(getFullNameUser.text.trim(), getEmailUser.text.trim(), getPasswordUser.text.trim());
                                Navigator.pushNamed(context, '/SignUp');
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
                              'Sign Up',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/SignUp');
                            },
                            child: Text(
                              'Sign In',
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
  bool isValidator(String getUsername, String getEmail, String getPassword,String getConfirmPasswordUser){
    if(getUsername.isEmpty) return false;
    if(getEmail.isEmpty) return false;
    if(getPassword.isEmpty) return false;
    if(getConfirmPasswordUser.isEmpty) return false;
    if(getPassword != getConfirmPasswordUser) return false;

    return true;
  }

  void addAccount(String username, String email, String pass){
    var newAccount = AccountService(
      getUsername: username,
      getEmail: email,
      getPassword: pass
    );

    getAccounts.add(newAccount);
  }
}