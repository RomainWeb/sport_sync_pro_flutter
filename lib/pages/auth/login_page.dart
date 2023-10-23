import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/utils/colors.dart';


import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    Future<void> login() async {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } catch(e) {
        print(e);
      }
    }

    // Future<UserCredential> signInWithGoogle() async {
    //   // Trigger the authentication flow
    //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    //
    //   // Obtain the auth details from the request
    //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    //
    //   // Create a new credential
    //   final credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth?.accessToken,
    //     idToken: googleAuth?.idToken,
    //   );
    //
    //   // Once signed in, return the UserCredential
    //   return await FirebaseAuth.instance.signInWithCredential(credential);
    // }

    @override
    void dispose() {
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor
                  )
                ),
                Image.asset(
                  'assets/images/login-illustration.jpg',
                  width: 220,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Email', style: TextStyle(
                        color: AppColors.primaryColorLighter,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
                TextField(
                  controller: emailController,
                  style: const TextStyle(
                    color: AppColors.primaryColorDarker,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.email_outlined,
                      color: AppColors.greyLight,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.primaryColor
                        ),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: const Color(0xffeff5fe),
                    filled: true,
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Password', style: TextStyle(
                        color: AppColors.primaryColorLighter,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: const TextStyle(
                    color: AppColors.primaryColorDarker,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.password,
                      color: AppColors.greyLight,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400, ),
                    fillColor: const Color(0xffeff5fe),
                    filled: true,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.house)
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.secondaryColor),
                      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
                    ),
                    onPressed: login,
                    child: const Text('LOGIN'),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                          )
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(color: AppColors.secondaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
