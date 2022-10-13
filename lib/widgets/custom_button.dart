import 'package:ccn_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback? onClick;

  const Button({Key? key, required this.title, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: onClick,
        child: ElevatedButton(
            onPressed: onClick,
            style: ElevatedButton.styleFrom(
              primary: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            )),
      ),
    );
  }
}
