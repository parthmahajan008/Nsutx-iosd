import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nsutx/data/id_pass_list.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController emailcontroller =
      TextEditingController(); // Abstract data type constructor
  TextEditingController passController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/images/register.png'), fit: BoxFit.cover),
      // ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80),
            child: Column(
              children: const [
                Text(
                  "Welcome to\nNSUT  ",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
                Text(
                  'Perhaps its better than DTU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: MediaQuery.of(context).size.height * 0.27),
              child: Column(children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  // const Text(
                  //   'Sign In',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 27,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        if (emailcontroller.text.toString().contains("@") &&
                            !emails.contains(emailcontroller.text.toString())) {
                          setState(() {
                            emails.add(emailcontroller.text.toString());
                            password.add(passController.text.toString());
                          });
                        } else {
                          Fluttertoast.showToast(
                            msg: "User already Exists",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Color.fromARGB(119, 19, 23, 32),
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        }
                        emailcontroller.clear();
                        nameController.clear();
                        passController.clear();
                      },
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
