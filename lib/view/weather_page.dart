import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wether_app/providers/location_provider.dart';
import 'package:wether_app/providers/wether_provider.dart';

class LocationPage extends StatelessWidget {
  
   LocationPage({super.key});

 final TextEditingController _controller = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
     final location = Provider.of<LocationProvider>(context);
     final wether = Provider.of<WetherProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Wether App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
              padding:const EdgeInsets.only(top:20,right:10,left:10),
              child:Card(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
              color:Colors.white,
              child: Container(
                padding:const EdgeInsets.only(left:12),
                child: TextFormField(
                  autofocus: false,
                  controller: _controller,
                  onChanged: ((value) {
                    if(_controller.text.trim().length>3){
                      location.getLocationData(context, value.trim().toString());

                    }else{
                       const Text('location must is greater than 3 digit');
                    }
                  }),
                  decoration:const InputDecoration(
                    hintText:"Search Location...",
                    border:InputBorder.none,
                    fillColor:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          location.locationModel==null?
          const SizedBox():
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: location.isLoading==true
            ? SizedBox(
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor:Colors.blue,
                  highlightColor: Colors.yellow,
                  child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.blueAccent)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Loading..')
                     
                    ],
                  ),
                )
                ),
              )
            : SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount:location.locationModel.length,
                itemBuilder: ((context, index) {
                  final locationData = location.locationModel[index];
                  return Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(locationData.name.toString()),
                        TextButton(onPressed: (){
                          wether.getLocationData(context, location.locationModel[index].lat, location.locationModel[index].lon);
            
                        }, child: const Text('CheckWether'))
                      ],
                    ),
                  );
              })),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Wether ForeCast',style: TextStyle(
              fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(
            height: 10,
          ),
          wether.wetherModel==null?
          const SizedBox():
          SizedBox(
            height: 100, 
           child: wether.isWetherLoading==true
            ? const SizedBox(
              height: 10,
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
                color: Colors.black,
              ),
            )
            : ListView.builder(
              itemCount:5,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                // final wetherData = wether.wetherModel.list[index];
                return Container(
                  margin: const EdgeInsets.only(left: 10, top: 0.0, right: 30, bottom: 10),
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                       BoxShadow(
                        color: Colors.purple,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(

                  ),
                );
            })),
          )
        ],
      ),
    );
  }
}