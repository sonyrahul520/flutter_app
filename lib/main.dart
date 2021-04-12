import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectycube_sdk/connectycube_sdk.dart';

import 'video_call.dart';
import 'utils/settings.dart' as config;


void main() {
  runApp(DocInterface());
}

class DocInterface extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }

}

class Dashboard extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text('Doctor Interface'),
    ),

        body:Container(
            child:Center(
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));}, child: Text('Profile')),
                      ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Appointment()));}, child: Text('Appointments'))
                    ]

                )
            )
        )
    );
  }
  @override
  void initState() {
    super.initState();
    init(
      config.appId,
      config.authKey,
      config.authSecret,
    );
  }
}
}

class Profile extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title:Text('Profile'),


    ),

    );
  }

}

class Appointment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text('Appointment'),

    ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Availability()));}, child: Text(' Choose your availability')),
              ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));}, child: Text('Make A Call'))
            ],
          ),
        ),
      ),
    );
  }


}

class Availability extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(appBar: AppBar(title: Text('The list of Appointment'),
    ),
    body: Container(
        child:Center(
        child: Column(






    )
    )
    )
    );

  }


}



