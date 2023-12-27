import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsiveloginui/utils/button_page.dart';
import 'package:responsiveloginui/utils/create_account_page.dart';
import 'package:responsiveloginui/utils/text_field.dart';

class HomePage extends StatelessWidget {
  final purpleColor = Color(0xff6688FF);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xffF5F6FA);
  final borderColor = Color(0xffD9D9D9);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24,),
              Text('Sign Up to Masterminds',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: darkTextColor,
              ),
              ),
              SizedBox(height: 4.h,),

              Row(
                children: [
                  Wrap(
                    children: [
                      Text("Already have an account ? ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor,
                      ),
                      ),
                      SizedBox(width: 5.w,),
                  
                      Text("Login",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor,
                      ),
                      )
                    ],
                  ),
                ],
              ),
             const SizedBox(height: 16,),
             const getTextField(hint: 'First name'),
             const SizedBox(height: 16,),
             const getTextField(hint: 'Email'),
             const SizedBox(height: 16,),
             const getTextField(hint: 'Password'),
             const SizedBox(height: 16,),
             const getTextField(hint: 'Confirm Password'),
             const SizedBox(height: 16,),

            SizedBox(
              width: double.infinity,
              child:  TextButton(onPressed: (){},
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(purpleColor),
              foregroundColor: MaterialStateProperty.all(Colors.white),             
             ),
              child:TextButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountPage()));
              }, icon: Icon(Icons.home,color: Colors.white,), label: Text('Create Account',style: TextStyle(
                color: Colors.white,
              ),))
              ),
            ),

           const SizedBox(height: 16,),

           const Row(children: [
              Expanded(child: Divider()),
               SizedBox(width: 16,),
              Text('or sign up via'),
               SizedBox(width: 16,),
              Expanded(child: Divider()),
            ],),

            const SizedBox(height: 16,),

            SizedBox(
              width: double.infinity,
              child:  TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonPage()),);
              },
             style: ButtonStyle(
              
              backgroundColor: MaterialStateProperty.all(Colors.grey),
              foregroundColor: MaterialStateProperty.all(Colors.white),             
             ),
              child:const Text(
                'Gooogle',
                 ),
              ),
            ),
            ],
          ),
        ),
      ),

    );
  }
}