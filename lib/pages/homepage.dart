import 'package:ccn_ui/pages/new.dart';
import 'package:ccn_ui/widgets/custom_button.dart';
import 'package:ccn_ui/widgets/textfieldinputdeco.dart';
import 'package:ccn_ui/utils/app_images.dart';
import 'package:ccn_ui/widgets/validation_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome to the test app',
                  style: textTheme.headline1!.copyWith(
                    // using this copy function, you can modify your text style from your theme class
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                    AppImage.image2), // the image is defined in the image class
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: fieldInputDecoration(hintText: "Email"),
                  validator: (value) => validateEmail(
                      value), // validation done in the helper class, you can do more validation there and pass the value on the UI
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.number,
                  decoration: fieldInputDecoration(hintText: "password"),
                  validator: (value) => validatePassword(value),
                ),
                const SizedBox(
                  height: 50,
                ),

                // you can have this custombutton class and style it to your design taste, instead of designing the button on every screen you need it
                Button(
                  title: "Click me",
                  onClick: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewScreen()));
                    }
                  },
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewScreen()));
                      }
                    },
                    child: const Text("Click me"),
                    style: ElevatedButton.styleFrom(),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("data"),
                  style: TextButton.styleFrom(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
