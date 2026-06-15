import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/widgets/Custom_btn.dart';
import 'package:medical_flutter/UI_login/widgets/TextField.dart';
import 'package:medical_flutter/core/function/buldAppBar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,"Edit Name"),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          CostomTextFormField(labelText: "Enter Name",),
          SizedBox(height: 15,),
          CustomBtn(text: 'Update', onTap: (){

          })
        
             
        ],),
      ),
    );
  }


}