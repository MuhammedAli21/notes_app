import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/Constents.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child:
              isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
        ),
      ),
    );
  }
}
