import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtech/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changedButton = false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
         key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                // height: 200,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "UserName",
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "UserName cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(

                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value){
                        if(value.isEmpty){
                          return "Password cannot be empty";
                        }else if(value.length <6)
                          {
                            return "Password length should be atleast 6";
                          }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changedButton?50:8),
                      child: InkWell(
                        onTap: () =>moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width:changedButton? 50:150,
                          height: 50,
                          alignment: Alignment.center,
                          child:changedButton?Icon(Icons.done,color: Colors.white,) :Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                            // shape: changedButton?BoxShape.circle:BoxShape.rectangle,
                            // borderRadius: BorderRadius.circular(changedButton?50:8),
                          // ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: (){
                    //      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //     },
                    //     child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
