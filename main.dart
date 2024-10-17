import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget{
  @override
  _CalculatorState createState()  => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed:(){
          calculation(btntxt);
        // funciones para los botones
        },
        child: Text(btntxt,
          style: TextStyle(
            fontSize: 25,
            color: txtcolor,

          ),
        ), 
        style: ElevatedButton.styleFrom ( 
          backgroundColor: btncolor,
          shape: CircleBorder(),       
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
 


  @override
  Widget build(BuildContext context) {  
    return Scaffold( 
      backgroundColor: const Color.fromARGB(255, 47, 22, 98),
      appBar: AppBar(title: Text('Calculadora'), backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // pantalla calculadora
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(10.0),
                  child:Text(text,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                    fontSize: 80
                    ),
                  ),
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //botones
                  
                   SizedBox(
                     width: 80,
                    height: 70,
                    
                    
                    child: calcbutton('AC', const Color.fromARGB(255, 59, 183, 236), const Color.fromARGB(255, 255, 254, 254)),
                    
                    ),
                  SizedBox(
                     width: 80,
                    height: 70,
                    
                    
                    child: calcbutton('+/-',  const Color.fromARGB(255, 59, 183, 236), const Color.fromARGB(255, 255, 254, 254)),
                    
                    ),

                    SizedBox(
                     width: 70,
                    height: 70,
                    
                    
                    child: calcbutton('%',  const Color.fromARGB(255, 59, 183, 236), const Color.fromARGB(255, 255, 254, 254)),

                    
                    ),
                    SizedBox(
                     width: 70,
                    height: 70,
                    
                    
                    child: calcbutton('/',   const Color.fromARGB(255, 14, 206, 190), const Color.fromARGB(255, 255, 254, 254)),


                    
                    ),
                    
                  
                ],
            ),
            SizedBox(
              height: 20,),

            //repetimos el codigo de arriba desde el Row
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //botones
                  calcbutton('7', const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('8',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('9',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('x', const Color.fromARGB(255, 14, 206, 190), const Color.fromARGB(255, 255, 254, 254)),
                  
                ],
            ),
            SizedBox(
              height: 20,),
            //
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //botones
                  calcbutton('4',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('5',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('6',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('-', const Color.fromARGB(255, 14, 206, 190), const Color.fromARGB(255, 255, 254, 254)),
                  
                ],
            ),
            SizedBox(height: 20,),
            //
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //botones
                  calcbutton('1',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('2',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('3',  const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 0, 0, 0)),
                  calcbutton('+', const Color.fromARGB(255, 14, 206, 190), const Color.fromARGB(255, 255, 254, 254)),
                  
                ],
            ),
            SizedBox(height: 20,),
            //
            //
           
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ElevatedButton(
                onPressed: (){
                },

                style: ElevatedButton.styleFrom (
                padding: EdgeInsets.fromLTRB(14, 10, 30,  10 ),
                shape: StadiumBorder(),
                backgroundColor:const Color.fromARGB(255, 255, 255, 255),
                
              ),
                child: Text("0", 
                  style: TextStyle(
                    fontSize: 30,
                    color:const Color.fromARGB(255, 3, 3, 3),
                    
                  ),
                ),
                
              ),
                    // Espacio entre botones

              const SizedBox(width: 28), calcbutton('.',  const Color.fromARGB(255, 7, 7, 7), const Color.fromARGB(255, 255, 254, 254)),
              const SizedBox(width: 28), calcbutton('⌫', const Color.fromARGB(255, 255, 0, 0), Colors.white),
              const SizedBox(width: 28), calcbutton('=', const Color.fromARGB(255, 14, 206, 190), const Color.fromARGB(255, 255, 254, 254)),

              
                 
       // ), 
              ],

            ),
            SizedBox(height: 20,),
            //
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //botones
                 SizedBox(
                     width: 90,
                    height: 70,
                    
                    
                    child: calcbutton('cos',  const Color.fromARGB(255, 23, 122, 3), const Color.fromARGB(255, 255, 254, 254)),


                    
                    ),
                    SizedBox(
                     width: 80,
                    height: 70,
                    
                    
                 child: calcbutton('tan', const Color.fromARGB(255, 23, 122, 3), const Color.fromARGB(255, 255, 254, 254)),


                    
                    ),
                    
                  calcbutton('**', const Color.fromARGB(255, 23, 122, 3), const Color.fromARGB(255, 255, 254, 254)),
                  calcbutton('√',  const Color.fromARGB(255, 23, 122, 3), const Color.fromARGB(255, 255, 254, 254)),
                ],
            ),
            SizedBox(height: 30,),
          ],
        ),  
      ),
    );
  }
///////////////Aqui va la logica de la calculadora


  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
   void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    
    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
         finalResult = add();
      } else if( preOpr == '-') {
          finalResult = sub();
      } else if( preOpr == 'x') {
          finalResult = mul();
      } else if( preOpr == '/') {
          finalResult = div();
      } 

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
          numOne = double.parse(result);
      } else {
          numTwo = double.parse(result);
      }

      if(opr == '+') {
          finalResult = add();
      } else if( opr == '-') {
          finalResult = sub();
      } else if( opr == 'x') {
          finalResult = mul();
      } else if( opr == '/') {
          finalResult = div();
      } 
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
     result = numOne / 100;
     finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }
    
    else if(btnText == '+/-') {
        result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();        
        finalResult = result;        
    
    } 
    
    else {
        result = result + btnText;
        finalResult = result;        
    }


    setState(() {
          text = finalResult;
        });

  }


  String add() {
         result = (numOne + numTwo).toString();
         numOne = double.parse(result);           
         return doesContainDecimal(result);
  }

  String sub() {
         result = (numOne - numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String mul() {
         result = (numOne * numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String div() {
          result = (numOne / numTwo).toString();
          numOne = double.parse(result);
          return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {
    
    if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0))
         return result = splitDecimal[0].toString();
    }
    return result; 
  }

}