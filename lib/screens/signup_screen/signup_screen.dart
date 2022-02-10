import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:whats_flutter/screens/home_screen/home_screen.dart';
import 'package:whats_flutter/screens/main_screen/main_screen.dart';
import 'package:whats_flutter/stores/signup_store.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final store = SignupStore();

  @override
  void initState() {
    super.initState();
    when((_) => store.successSignup, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MainScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff075E54),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'images/logo_whats.jpg',
                      height: MediaQuery.of(context).size.height / 3,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      autofocus: false,
                      onChanged: store.setName,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      style: GoogleFonts.lato(fontSize: 16),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        errorText: store.nameError,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      autofocus: false,
                      onChanged: store.setEmail,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      style: GoogleFonts.lato(fontSize: 16),
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        hintText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        errorText: store.emailError,
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      onChanged: store.setAge,
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      style: GoogleFonts.lato(fontSize: 16),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      decoration: InputDecoration(
                        errorText: store.ageError,
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        hintText: 'Age',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      onChanged: store.setPhone,
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      style: GoogleFonts.lato(fontSize: 16),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        FilteringTextInputFormatter.singleLineFormatter,
                        TelefoneInputFormatter(),
                      ],
                      decoration: InputDecoration(
                        errorText: store.phoneError,
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      onChanged: store.setPassword,
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      obscureText: true,
                      style: GoogleFonts.lato(fontSize: 16),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      enabled: !store.loading,
                      onChanged: store.setConfirmPassword,
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      obscureText: true,
                      style: GoogleFonts.lato(fontSize: 16),
                      decoration: InputDecoration(
                        errorText: store.confirmPasswordError,
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Observer(builder: (_) {
                  if (store.loading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 7.5,
                      child: InkWell(
                        onTap: store.setInvalidSendPressed,
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 32,
                          ),
                          child: Observer(builder: (_) {
                            return ElevatedButton(
                              onPressed: store.sendPressedValid as Function()?,
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    );
                  }
                }),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const HomeScreen(),
                        ),
                      );

                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      height: 60,
                      child: Text(
                        'Already have an account? Click here',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
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
}
