import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utilities/themes/app_colors.dart';
import '../../../home_page/view/Screen/home_screen.dart';
import '../../controller/LoginController.dart';



class LoginScreen extends StatelessWidget{

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  bool showSpinner =false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }
  static String userToken = "USERTOKENKEY";

  TextEditingController userEmailController =  TextEditingController();

  TextEditingController passwordController =  TextEditingController();

  bool ischecked = false;

  late String? email;

  late String? password;
  bool isvisible =true;

  void _toggle() {

    isvisible = !isvisible;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(

        body: Container(

            decoration: BoxDecoration(
              color: Color(0xFF005373),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: SizedBox(
                          height: 10.0,
                          child: Container(
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/location.png'),
                              radius: 60,
                            ),

                          ),
                        ),
                      )),
                  // SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    child:  Text("Login to contuine",
                      style: TextStyle(fontSize: 23,
                          color: Colors.white),
                    ),
                    //padding: EdgeInsets.symmetric(horizontal: 40),
                  ),

                  SizedBox(height: size.height * 0.024,),
                  SizedBox(
                    height: 4,
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFDDE3E5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35),
                          ),),

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(35),
                              topLeft: Radius.circular(35),
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Form(
                                  key: _formKey,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: <Widget>[


                                        Container(


                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: TextFormField(

                                              controller: userEmailController,
                                              obscureText: false,
                                              validator: (value) {
                                                if (value!.isEmpty ||
                                                    value == null) {
                                                  return "please your name is required";
                                                }
                                                // else if (!value.contains("@") ||
                                                //     !value.contains(".")) {
                                                //   return " please enter valide email";
                                                // }
                                                return null;
                                              },
                                              onChanged: (value) {

                                              },
                                              keyboardType: TextInputType
                                                  .name,
                                              decoration: InputDecoration(

                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(20)
                                                  ),),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 1,

                                                  ),

                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(20)
                                                  ),

                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2,

                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(20)

                                                  ),
                                                ),
                                                labelText: "UserName", //babel text
                                                hintText: "Enter your name",


                                                contentPadding: EdgeInsets
                                                    .symmetric(
                                                    vertical: 1, horizontal: 5),
                                                //hint text
                                                prefixIcon: Icon(Icons.person),
                                                //prefix iocn
                                                hintStyle: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black45),
                                                //hint text style
                                                labelStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.secondaryColor), //label style

                                              ),

                                            )

                                        ),
                                        SizedBox(height: size.height * 0.03,),

                                        Container(

                                          // decoration: BoxDecoration(color: Colors.white,
                                          // borderRadius: BorderRadius.all(Radius.circular(10)),
                                          // ),

                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: TextFormField(
                                              controller: passwordController,
                                              obscureText: isvisible,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "please password is required";
                                                }
                                                else if (value.length < 8) {
                                                  return "password should be 8 character or more characters";
                                                }
                                                return null;
                                              },
                                              onChanged: (value) {

                                              },
                                              keyboardType: TextInputType
                                                  .visiblePassword,

                                              decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                  icon: Icon(isvisible
                                                      ? Icons.visibility_off :
                                                  Icons.visibility),
                                                  onPressed: _toggle,
                                                ),
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .all(
                                                        Radius.circular(20))),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 1,

                                                  ),

                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(20)
                                                  ),

                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2,

                                                  ),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(20)

                                                  ),
                                                ),
                                              labelText: "password", //babel text
                                                hintText: "Enter your password",
                                                contentPadding: EdgeInsets
                                                    .symmetric(vertical: 1,
                                                    horizontal: 10),

                                                //hint text
                                                prefixIcon: Icon(
                                                    Icons.password),
                                                //prefix iocn
                                                hintStyle: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black45),
                                                //hint text style
                                                labelStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.secondaryColor), //label style

                                              ),

                                            )


                                        ),
                                        SizedBox(height: size.height * 0.03,),
    Container(
    alignment: Alignment.centerRight,
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: GestureDetector(
    onTap: () {
    // Navigator.push(context,
    // MaterialPageRoute(builder: (context) => ResetPassword()));
    },
    child: Text(
    "Forget yourPassword",
      style: TextStyle(fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black45),),
    //babel text
    )
    ),

    SizedBox(width: size.width * 0.07,),

    Container(
                                          width: 200,
                                          height: 70,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(left: 10,
                                              right: 30,
                                              top: 10,
                                              bottom: 0),
                                          child: ElevatedButton(

                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(
                                                  0xFF005373),
                                              elevation: 5,
                                              padding: EdgeInsets.all(20.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(25.0),

                                              ),

                                            ),
                                            onPressed: () async {
                                              if (userEmailController.text
                                                  .isEmpty ||
                                                  userEmailController.text ==
                                                      null &&
                                                      passwordController.text
                                                          .isEmpty ||
                                                  passwordController.text ==
                                                      null) {
                                                _submit();
                                              }
                                              else{
                                              Get.to(HomeScreen(userName: userEmailController.text));
                                            }},
                                            child: Text(
                                                "LogIn",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18)

                                          ),
                                        ),
                              ),


                              SizedBox(height: size.height * 0.04,),

                              Container(

                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(left: 70, right: 10, top: 0, bottom: 2),
                                  child: GestureDetector(
                                    onTap: () {

                                    },
                                    child: Text(""
                                        "Don't Have an account? Sign Up",
                                      style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black45),),
                                  )
                              ),





                                        SizedBox(height: size.height * 0.04,),


                                      ])
                              )


                          ),
                        ),
                      )

                  )
                ]
            )
        )

    );
  }}