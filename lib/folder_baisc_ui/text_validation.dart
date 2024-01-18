import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextValidation extends StatefulWidget {
  const MyTextValidation({super.key});

  @override
  State<MyTextValidation> createState() => _MyTextValidationState();
}

class _MyTextValidationState extends State<MyTextValidation> {
  ///here we use formkey for validation without this key we cant validate
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool visiblePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "enter your name",
                  labelText: "name",
                  prefixIcon: Icon(Icons.person),
                ),

                ///this is only keyboard type where it is alphabet
                keyboardType: TextInputType.name,

                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z ]")),
                  LengthLimitingTextInputFormatter(10),
                ],

                validator: (String? value) {
                  if (value?.isEmpty ?? false) {
                    return "please enter your name";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "number",
                  hintText: "enter your number",
                  prefixIcon: Icon(Icons.numbers),
                ),

                ///this is only keyboard type where it is alphabet
                keyboardType: TextInputType.name,

                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],

                validator: (String? value) {
                  if (value?.isEmpty ?? false) {
                    return "please enter your number";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "email",
                  hintText: "enter your email",
                  prefixIcon: Icon(Icons.email),
                ),

                ///this is only keyboard type where it will show an email char along alphabets
                keyboardType: TextInputType.emailAddress,

                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],

                validator: (String? value) {
                  if (value?.isEmpty ?? false) {
                    return "Enter Your Email";
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!)) {
                    return "Please Fill your valid email.";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: visiblePass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "password",
                  hintText: "enter your password",
                  prefixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          visiblePass = !visiblePass;
                        });
                      },

                      ///here whenever u run the screen, var visiblePass is  always true i.e its not visible but when u click on tap button then it becpme false
                      /// todo asjhfnkesfl
                      child: Icon(visiblePass
                          ? Icons.visibility_off
                          : Icons.visibility)),
                ),

                ///this is only keyboard type where it will show an email char along alphabets
                // keyboardType: TextInputType.visiblePassword,

                inputFormatters: [
                  LengthLimitingTextInputFormatter(20),
                ],

                validator: (String? value) {
                  if (value?.isEmpty ?? false) {
                    return "please enter your password";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) ;
                  },
                  child: Text(
                    "submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
