import 'package:flutter/material.dart';
import 'package:promote_uganda/bloc/user_authentication/signup_logic.dart';
import 'package:promote_uganda/routes.dart';

//ignore:camel_case_types
class signUpForm extends StatefulWidget {
  const signUpForm({super.key});

  @override
  _signUpFormState createState() => _signUpFormState();
}

//ignore:camel_case_types
class _signUpFormState extends State<signUpForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  late final TextEditingController _usernameController;
  late final TextEditingController _gmailController;
  late final TextEditingController _contactController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _gmailController = TextEditingController();
    _confirmController = TextEditingController();
    _contactController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _confirmController.dispose();
    _gmailController.dispose();
    _passwordController.dispose();
    _contactController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const signUpTopWidget(),

        const SizedBox(height: 30,),

        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 223, 223)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(3),
            child: TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Enter username"),
            )),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 223, 223)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(3),
            child: TextFormField(
              controller: _gmailController,
              validator: signUpLogic.gmailValidate,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Enter gmail"),
            )),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 223, 223)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(3),
            child: TextFormField(
              controller: _contactController,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Enter Contact"),
            )),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 223, 223)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(3),
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              validator: signUpLogic.passwordValidate,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Enter password"),
            )),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 223, 223, 223)),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(3),
            child: TextFormField(
              controller: _confirmController,
              obscureText: true,
              obscuringCharacter: "*",
              validator: signUpLogic.passwordConfirmValidate,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Confirm password"),
            )),

            const SizedBox(height: 25,),
            TextButton(
              onPressed: ()=>signUpLogic.signUp(_key, 
              context, _gmailController.text, 
              _passwordController.text, _usernameController.text, _contactController.text), 
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
                  "Create account",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                  )),
              )),

             const  IHaveAnAccountOptionWidget()
      ],
    ));
  }
}






//ignore:camel_case_types
class signUpTopWidget extends StatelessWidget {
  const signUpTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Account",
          style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "Signup with us and promote uganada.",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),)
      ],
    ));
  }
}




//ignore:camel_case_types
class IHaveAnAccountOptionWidget extends StatelessWidget{
  const IHaveAnAccountOptionWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "I already have an account."),
        TextButton(
          onPressed: ()=> Navigator.pushNamed(context, RouteGenerator.signinscreen), 
          child: const Text("SignIn"))
      ],
    );
  }
}