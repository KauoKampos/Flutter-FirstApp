import 'package:flutter/material.dart';
import 'package:first_flutter_app/view/newscreen.dart';
 
//Tela pode ser reconstruida - tem um setstate
class RickyPage extends StatefulWidget {
  const RickyPage({super.key});
 
 
  @override
  State<RickyPage> createState() => _RickyPageState();
}
 
class _RickyPageState extends State<RickyPage> {
  String frase = "Ok"; //Criei String
  bool showBlue = false;
 
  TextEditingController emailController = TextEditingController();
  TextEditingController SenhaController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column (children: [
      Text("Login"),
      SizedBox(
   height: 20,),
      TextField(
        controller: emailController,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Email',
  ),
),
SizedBox(
   height: 20,),
      TextFormField(
        controller: SenhaController,
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Senha',
  ),
),
  ElevatedButton(// Within the `FirstRoute` widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewScreen()),
  );
},
 child: Text("New Screen")),
      Expanded(
        flex: 2,
        child: Container(
        width: 200,
        height: 200,
        color: Colors.blueGrey,
        child: Text(frase),
            ),
      ),
    if(showBlue)
    Expanded(
      flex: 2,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Text(frase),
      ),
    ),
    Text(emailController.text),
    Text(SenhaController.text),
    ],
    ),
   floatingActionButton: FloatingActionButton(
    onPressed: () {
      print(emailController.text);
      print(SenhaController.text);
     
      setState(() {
        showBlue = !showBlue;
        frase = "Nova Mensagem ...";
      });
    },
    child: Text("Clique"),
   ),
    );
  }
}