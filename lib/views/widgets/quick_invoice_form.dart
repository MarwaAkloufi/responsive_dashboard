import 'package:flutter/material.dart';
import 'package:responsuve_dash_board/views/widgets/custom_button.dart';
import 'package:responsuve_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
       Expanded(child:TitleTextField(
          hint: 'Type customer name ',
           title: 'Customer name'
          )),
          SizedBox(width: 16,),
        Expanded(child:TitleTextField(
          hint: 'Type customer email ',
           title: 'Customer Email'
          )),
          ],
        ),
   SizedBox(height: 24,),

     Row(
          children: [
       Expanded(child:TitleTextField(
          hint: 'Type customer name ',
           title: 'Item name'
          )),
          SizedBox(width: 16,),
        Expanded(child:TitleTextField(
          hint: 'USD',
           title: 'Item mount'
          )),
          ],
        ),
      SizedBox(height: 24,),

   Row(
    children: [
 Expanded(child:CustomButton(backgroundColor: Colors.transparent,textColor: Color(0xFF4DB7F2),)),
    SizedBox(width: 24,),

Expanded(child: CustomButton())

    ])
      ],
    );
  }
}