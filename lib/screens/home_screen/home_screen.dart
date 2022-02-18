import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:whats_flutter/screens/main_screen/main_screen.dart';
import 'package:whats_flutter/screens/signup_screen/signup_screen.dart';
import 'package:whats_flutter/stores/login_store.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  final loginStore = LoginStore();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    when(
      (_) => widget.loginStore.successfulLogin,
      () {
        Future.delayed(Duration.zero, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const MainScreen(),
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                  child: Observer(
                    builder: (_) {
                      return TextFormField(
                        enabled: !widget.loginStore.loading,
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        style: GoogleFonts.lato(fontSize: 16),
                        decoration: InputDecoration(
                          errorText: widget.loginStore.emailError,
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
                        ),
                        onChanged: widget.loginStore.setEmail,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                  ),
                  child: Observer(builder: (_) {
                    return TextFormField(
                      autofocus: false,
                      enabled: !widget.loginStore.loading,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      style: GoogleFonts.lato(fontSize: 16),
                      decoration: InputDecoration(
                        errorText: widget.loginStore.passwordError,
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
                      onChanged: widget.loginStore.setPassword,
                    );
                  }),
                ),
                Observer(builder: (_) {
                  if (widget.loginStore.loading) {
                    return const Padding(
                        padding: EdgeInsets.all(32),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            valueColor: AlwaysStoppedAnimation(
                              Colors.white,
                            ),
                          ),
                        ));
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 9,
                      child: InkWell(
                        onTap: widget.loginStore.setInvalidSendPressed,
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 32,
                          ),
                          child: Observer(builder: (_) {
                            return ElevatedButton(
                              onPressed: widget.loginStore.sendPressedValid
                                  as Function()?,
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Login',
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
                    splashColor: Colors.tealAccent,
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignupScreen(),
                      ),
                    ),
                    child: SizedBox(
                      height: 60,
                      child: Text(
                        'Click here if you still dont have an account.',
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
