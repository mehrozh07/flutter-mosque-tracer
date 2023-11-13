import 'package:flutter/material.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:mosque_tracer/widgets/custom_button.dart';
import 'package:mosque_tracer/widgets/custom_field.dart';

class ZakatView3 extends StatelessWidget {
  ZakatView3({super.key});

  final taxesRentC = TextEditingController();
  final borowdC = TextEditingController();
  final loanC = TextEditingController();
  final investmentOthersC = TextEditingController();
  final goldC = TextEditingController();
  final wadgesDueC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: size.height * 0.1,
            right: 0,
            left: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04,),
                  child: Text('Zakaat', style: InterStyle.w600f16White),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height * 0.8,
              width: size.width,
              padding: EdgeInsets.only(
                  left: size.width * 0.04,
                  right: size.width * 0.04,
                  top: size.height * 0.05),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Total Net Worth',
                      textAlign: TextAlign.start,
                      style: InterStyle.w500f24Black),
                  Text('Rs. 160,000',style: InterStyle.w500f24Black),
                  SizedBox(height: size.height*0.06),
                  Text('Zakat Payable',
                      textAlign: TextAlign.start,
                      style: InterStyle.w500f24Black),
                  Text('Rs. 10,000',style: InterStyle.w500f24Black),
                  SizedBox(height: size.height*0.1),
                  Row(
                    children: [
                      Expanded(child: CustomButton(
                        onPressed: (){},
                        title: 'Give your Zakat',
                      )),
                      SizedBox(width: size.width*0.03),
                      Expanded(child: CustomButton(
                        onPressed: (){},
                        title: 'Reset',
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
