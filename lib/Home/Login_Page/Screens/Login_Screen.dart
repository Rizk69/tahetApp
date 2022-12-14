import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tahetapp/Home/HomePage/Screens/Home.dart';
import '../Cubit/click_country_cubit.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'Login';
  final formKey = GlobalKey<FormState>();
  final countryPicker = const FlCountryCodePicker(
    filteredCountries: ['EG', 'SA', 'AE'],
    showSearchBar: false,
  );

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneNumber = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Login',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          )),
      body: BlocProvider<ClickCountryCubit>(
        create: (context) => ClickCountryCubit(),
        child: BlocBuilder<ClickCountryCubit, ClickCountryState>(
          builder: (context, state) {
            var cubit = ClickCountryCubit.get(context);

            if (state is LoginLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoginError) {
              return const Center(
                child: Text("Error's"),
              );
            } else if (state is LoginLoaded) {
              Future.delayed(const Duration(milliseconds: 600), () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              });
              return const Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  Image.asset(
                    'lib/Asset/bg.png',
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.centerRight,
                    height: 260,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Welcome Back !',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 17, right: 17),
                      child: Container(
                          height: 140,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0XFF282828), width: 1),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () async {
                                  final code = await countryPicker.showPicker(
                                      context: context);
                                  cubit.getSelectCode(code);
                                },
                                child: Container(
                                  height: 60,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Row(
                                    children: [
                                      cubit.newCode != null
                                          ? cubit.newCode!.flagImage
                                          : const CountryCode(
                                                  code: 'SA',
                                                  dialCode: '+966',
                                                  name: 'aa')
                                              .flagImage,
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        cubit.newCode == null
                                            ? 'Saudi Arabia'
                                            : '${cubit.newCode?.name}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: const Color(0XFFC4C4C4),
                                height: 2,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                height: 60,
                                child: Row(
                                  children: [
                                    Text(
                                      cubit.newCode == null
                                          ? '+966 |'
                                          : "${cubit.newCode?.dialCode} |",
                                      style: const TextStyle(fontSize: 17,fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Form(
                                      key: formKey,
                                      child: Expanded(
                                          flex: 1,
                                          child: TextFormField(
                                            validator: (text) {
                                              if (text == null ||
                                                  text.trim().isEmpty) {
                                                return 'Please Enter Your Phone';
                                              }
                                              if (text.length < 10) {
                                                return 'Please Enter Right Number';
                                              }
                                              return null;
                                            },
                                            controller: phoneNumber,
                                            maxLines: 1,
                                            minLines: 1,
                                            scrollPhysics: const ScrollPhysics(
                                                parent:
                                                    AlwaysScrollableScrollPhysics()),
                                            decoration: const InputDecoration(
                                              hintStyle: TextStyle(
                                                  fontSize: 17,
                                                  color: Color(0XFFC4C4C4)),
                                              hintText: ' Phone Number',
                                              border: InputBorder.none,
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          backgroundColor: const Color(0XFFEA630B),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                        ),
                        onPressed: () {
                          // if (formKey.currentState!.validate()) {}
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        )),

                  ),
                ]));
          },
        ),
      ),
    );
  }
}
