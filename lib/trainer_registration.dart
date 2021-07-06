import 'package:flutter/material.dart';
import 'package:shaftt_app/themes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shaftt_app/profile_studant.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'trainer_main_login.dart';

class TrainerRegistration extends StatefulWidget {
   final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController= TextEditingController();
  final phoneController= TextEditingController();
  final idController= TextEditingController();
   final confPassController= TextEditingController();
    final detailsController= TextEditingController();
   
  @override
  _TrainerRegistrationState createState() => _TrainerRegistrationState();
}
class _TrainerRegistrationState extends State<TrainerRegistration> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final lastNameController= TextEditingController();
   final firstNameController= TextEditingController();
  final phoneController= TextEditingController();
  final idController= TextEditingController();
   final confPassController= TextEditingController();
   final detailsController= TextEditingController();
  DateTime selectedDate = DateTime.now();
File file;
 void _choose() async {
  //  file = await ImagePicker.pickImage(source: ImageSource.camera);
    file = await ImagePicker.pickImage(source: ImageSource.gallery);
     if (file == null) return;
    base64Image = base64Encode(file.readAsBytesSync());
    fileName = file.path.split("/").last;

 }
  void _chooseDriverLicensimage() async {
  //  file = await ImagePicker.pickImage(source: ImageSource.camera);
    file = await ImagePicker.pickImage(source: ImageSource.gallery);
     if (file == null) return;
    base64ImageDriverLicensimage = base64Encode(file.readAsBytesSync());
    fileNameDriverLicensimage = file.path.split("/").last;

 }

String errMessage = 'Error Uploading Image';
 List<bool> isSelectedGender;
  List<bool> isSelectedCar;

  bool visible = false ;
   bool accept = false;

   String base64Image = null ;
   String fileName = "";
   
   String base64ImageDriverLicensimage = null ;
   String fileNameDriverLicensimage = "";

    @override
    void initState() {
        isSelectedGender = [true, false];
         isSelectedCar = [true, false];
        super.initState();
                     


    }
    
    void _onRememberMeChanged(bool newValue) => setState(() {
    accept = newValue;

    if (accept) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
   
  });
  Future<void> _selectDate(BuildContext context) async {
    
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1980, 8),
        lastDate: DateTime(2028));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
 Future userLogin() async{
 
  // Showing CircularProgressIndicator.
 setState(() {
  visible = true ; 
  });

  // Getting value from Controller
  String email = emailController.text;
  String password = passwordController.text;
  String firstname = firstNameController.text;
    String lastname = lastNameController.text;
  String phone = phoneController.text;
  String id = idController.text;
   String details = detailsController.text;
      String gende = "male";
      String carType = "male";



  // SERVER LOGIN API URL
  var url = 'http://shafft.com/API/register.php';
   if(isSelectedGender[0]){
    gende="male";
  }else{
    gende="female";
  }
   if(isSelectedCar[0]){
    carType="manual";
  }else{
    carType="auto";
  }

  var data = {'role':"trainer",'firstName':firstname,'lastName':lastname,'details':details,'email': email,'password': password,'phoneNumber':phone,'birthday':selectedDate.toIso8601String(),'carImaageimage':base64Image,'carImaagefileName':fileName,'driverLicensimage':base64ImageDriverLicensimage,'driverLicensfileName':fileNameDriverLicensimage,'IDNum':id,'Gender':gende,'shiftGear':carType};

  // Starting Web API Call.
  var response = await http.post(url, body: json.encode(data));

  // Getting Server response into variable.
 Map<String, dynamic> map = jsonDecode(response.body);
  
   var message=map["message"];
   print(message);


  // If the Response Message is Matched.
  if(message == 'You have successfully registered.')
  {
 
    // Hiding the CircularProgressIndicator.
      setState(() {
      visible = false; 
      });
   Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>ProfileStudant(email : emailController.text)));
    // Navigate to Profile Screen & Sending Email to Next Screen.
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ProfileStudant(email : emailController.text))
      // );
  }else{
 
    // If Email or Password did not Matched.
    // Hiding the CircularProgressIndicator.
    setState(() {
      visible = false; 
      });
 
    // Showing Alert Dialog with Response JSON Message.
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          FlatButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
    );}
 
}


  

  @override
  Widget build(BuildContext context) {

    return Container(  
       child: new Scaffold( 
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                  children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top:0,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller:firstNameController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "First Name",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ), Padding(
            padding: EdgeInsets.only(top:10,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller:lastNameController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Last Name",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
      Padding(
            padding: EdgeInsets.only(top:10,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller:emailController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Email",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
                      Padding(
            padding: EdgeInsets.only(top:15,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller: phoneController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Phone",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
   
                    Padding(
            padding: EdgeInsets.only(top:15,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller: idController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "ID Num",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
   
                       
                     Padding(
            padding: EdgeInsets.only(top:15,left: 20,right: 20),
            child: Container(
              width: 430,
              height: 70 ,
                     child:Card(
                  
                            color: Colors.white, 
                            shape: RoundedRectangleBorder(
                            side: BorderSide( color: Color(0xff007EE7), width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
  
                          
                                child:  ListTile(
                                title: Row(
                                children: <Widget>[
                                   
                                    Text(
                                        'birthdate '+"${selectedDate.toLocal()}".split(' ')[0],style:TextStyle(fontSize: 22,fontFamily: "HelveticaThin",color:  Color(0xff707070),) ,
                                                
                                        ),
                                    RaisedButton(
                                onPressed: () => _selectDate(context),
                                elevation: 0,
                                child: Text('set',style: TextStyle(fontSize: 22,fontFamily: "HelveticaBold"),),color: Colors.white,textColor:  Color(0xff007EE7),
                              ),
                                ],
                                ),
                                )
                            
                        
                             
                          ),
      
            ),
            ), Padding(
            padding: EdgeInsets.only(top:10,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller:detailsController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                           
                            decoration: InputDecoration(
                                    labelText: "Details",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
                      Padding(
            padding: EdgeInsets.only(top:15,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller: passwordController,
                           keyboardType: TextInputType.visiblePassword,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Password",
                                    labelStyle: TextStyle(fontSize: 16,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff707070),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),obscureText: true,
                          )
                    )
                    ), 
             Padding(
                padding: EdgeInsets.only(top:15,left: 20,right: 20),
          
            child: Container(
                     width: 450,
                     height: 40 ,
                    
              child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
                Text("Gender",style: TextStyle(fontSize: 20,
                fontFamily: "HelveticaThin",
                color:  Color(0xff707070),
                ),
                ),
                ToggleButtons(
                borderColor: Colors.transparent,
                fillColor: Color(0xff007EE7),
                borderWidth: 1,
                selectedBorderColor: Color(0xff007EE7),
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Male',
                        style: TextStyle(fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color:  Color(0xff707070), 
                        ),
                    ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Female',
                        style: TextStyle(fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color:  Color(0xff707070), 
                        ),
                    ),
                    ),
                ],
                onPressed: (int index) {
                    setState(() {
                       
                    for (int i = 0; i < isSelectedGender.length; i++) {
                        if (i == index) { 
                          isSelectedGender[i] = true;
                         
                         
                           } else {
                             isSelectedGender[i] = false; 
                             
                       
                             }
                    }
                    });
                },
                isSelected: isSelectedGender,
                 
                ),
           
            ]
            ),
            
         ),
             ),    Padding(
                padding: EdgeInsets.only(top:15,left: 20,right: 20),
          
            child: Container(
                     width: 450,
                     height: 40 ,
                    
              child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
                Text("Car type",style: TextStyle(fontSize: 20,
                fontFamily: "HelveticaThin",
                color:  Color(0xff707070),
                ),
                ),
                ToggleButtons(
                borderColor: Colors.transparent,
                fillColor: Color(0xff007EE7),
                borderWidth: 1,
                selectedBorderColor: Color(0xff007EE7),
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Manual',
                        style: TextStyle(fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color:  Color(0xff707070), 
                        ),
                    ),
                    ),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Auto',
                        style: TextStyle(fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color:  Color(0xff707070), 
                        ),
                    ),
                    ),
                ],
                onPressed: (int index) {
                    setState(() {
                       
                    for (int i = 0; i < isSelectedCar.length; i++) {
                        if (i == index) { 
                          isSelectedCar[i] = true;
                          print(isSelectedCar);
                         
                           } else {
                             isSelectedCar[i] = false; 
                              print(isSelectedCar);
                       
                             }
                    }
                    });
                },
                isSelected: isSelectedCar,
                 
                ),
           
            ]
            ),
            
         ),
             ),
               
                     
                     Padding(
            padding: EdgeInsets.only(top:15,left: 10,right: 20),
            child: Container(
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Drive certificate",
              style:TextStyle(fontSize: 22,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
              ),
             IconButton(
            icon: Icon(
              Icons.cloud_upload,
            ),
            iconSize: 30,
            color:  Color(0xff007EE7),
            splashColor: Color(0xff007EE7),
            padding: EdgeInsets.only(top:15,left: 35,right: 10),
            onPressed: _chooseDriverLicensimage,
          ),
            ]
              ),
            ),
             ),
               Padding(
            padding: EdgeInsets.only(top:15,left: 10,right: 20),
            child: Container(
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Drive test certificate",
              style:TextStyle(fontSize: 22,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
              ),
             IconButton(
            icon: Icon(
              Icons.cloud_upload,
            ),
            iconSize: 30,
            color:  Color(0xff007EE7),
            splashColor: Color(0xff007EE7),
            padding: EdgeInsets.only(top:15,left: 35,right: 10),
            onPressed: _chooseDriverLicensimage,
          ),
            ]
              ),
            ),
             ),
             Padding(
            padding: EdgeInsets.only(top:15,left: 10,right: 20),
            child: Container(
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Car Pic",
              style:TextStyle(fontSize: 22,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
              ),
             IconButton(
            icon: Icon(
              Icons.cloud_upload,
            ),
            iconSize: 30,
            color:  Color(0xff007EE7),
            splashColor: Color(0xff007EE7),
            padding: EdgeInsets.only(top:15,left: 35,right: 10),
            onPressed: _choose,
          ),
            ]
              ),
            ),
            
             ),
              Padding(
                            padding: EdgeInsets.only(top:15,left: 20,right: 20),
                            child: Container(
                                    
                                    child:
                                    CheckboxListTile(
                                      checkColor:Color(0xff707070),
                                      activeColor:Color(0xff007EE7),
                                      title: Text("Accept privacy policy",style: TextStyle(fontSize: 18,fontFamily: "HelveticaThin",color:  Color(0xff707070)),),
                                      value: accept,
                                      onChanged: _onRememberMeChanged
                                    ),
                            ),
                            ),Padding(
                                  padding: EdgeInsets.only(top:15,left: 20,right: 20,bottom: 15),
                                  child:Container(
                                    height:60,
                                    width: 340,
                                    child: roundedRectButton("Signup",Color(0xffffffff), blueGradients,TrainerMAinLogin()),
                                      )  
                                      ),
                ],
              ),
             ),
            )
           )  
    ); 
  }
  
   Widget roundedRectButton(String title,Color textColor, List<Color> gradient, Widget page) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            InkWell(
              child: Container(
                alignment: Alignment.center,
                 height:55,
                 width: 350,
                decoration: BoxDecoration(
                  color: Color(0xff007EE7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                        ),
                        boxShadow: [
                            BoxShadow(
                              color: Color(0xffffffff).withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          
                
            ),
               child:ButtonTheme(
                minWidth: 317,
                height: 35,            
                child: RaisedButton(
                   elevation: 0, 
                    onPressed: userLogin,
                     color:Color(0xff007EE7),
                    child: Text(title,
                    style: TextStyle(
                      fontFamily: "HelveticaBold",
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w300)
                        ),
              
        ),
        ),
              
            ),
              ),
           
          ]
          ),
     
        

        );
      
    });
  }
}