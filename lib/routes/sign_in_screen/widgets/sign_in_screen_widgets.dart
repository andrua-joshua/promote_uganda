import 'package:flutter/material.dart';
import 'package:promote_uganda/routes.dart';

//ignore:camel_case_types
class loginFormWidget extends StatefulWidget {
  const loginFormWidget({super.key});

  @override
  _loginFormWidgetState createState() => _loginFormWidgetState();
}

//ignore:camel_case_types
class _loginFormWidgetState extends State<loginFormWidget> {
  late GlobalKey key = GlobalKey<FormState>();
  late TextEditingController _usernameOrgmailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameOrgmailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameOrgmailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 223, 223)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3),
                child: TextFormField(
                  controller: _usernameOrgmailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter username or gmail"),
                )),
            
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 223, 223, 223)),
                margin: const EdgeInsets.all(10),

                padding: const EdgeInsets.all(3),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(border: InputBorder.none, hintText: "Enter password"),
                )),

            const forgotOptionsWidget(),

            const SizedBox(
              height: 20,
            ),

            TextButton(
              onPressed: ()=>Navigator.pushNamed(context, RouteGenerator.homescreen), 
              child: Container(
                constraints: const BoxConstraints.expand(
                  height: 40
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(child:Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                  )),
              )),
              const dontHavaAnAccountOptionWidget()
          ],
        ));
  }
}

//ignore:camel_case_types
class loginTopWidget extends StatelessWidget {
  const loginTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Let's promote uganda together.",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),)
      ],
    ));
  }
}




//ignore:camel_case_types
class forgotOptionsWidget extends StatelessWidget{
  const forgotOptionsWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: (){}, 
          child: const Text("forgot password"))
      ],
    );
  }
}


//ignore:camel_case_types
class dontHavaAnAccountOptionWidget extends StatelessWidget{
  const dontHavaAnAccountOptionWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I don't have an account."),
        TextButton(
          onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.signupscreen), 
          child: Text("SignUp"))
      ],
    );
  }
}