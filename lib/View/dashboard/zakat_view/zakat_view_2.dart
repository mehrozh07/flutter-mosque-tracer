import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mosque_tracer/View/dashboard/zakat_view/zakat_view_3.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:mosque_tracer/widgets/custom_button.dart';
import 'package:mosque_tracer/widgets/custom_field.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ZakatView2 extends StatelessWidget {
  final String cashInHand,cashDeposited,cashLoan,cashInvestment,gold,silver,selectedValue;
  ZakatView2({super.key, required this.cashInHand,required this.cashDeposited,
    required this.cashLoan,required this.cashInvestment, required this.gold, required this.silver, required this.selectedValue});

  final stockC = TextEditingController();
  final borowdC = TextEditingController();
  final taxesC = TextEditingController();
  final wadgesDueC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: true,
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
                  top: size.height * 0.02),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Trade Goods',style: InterStyle.w500f24Black),
                      Divider(color: Colors.grey.shade400,thickness: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Value of stock',
                              maxLines: 2,
                              style: InterStyle.w500f14Black),
                          SizedBox(height: size.height*0.016),
                          CustomTextFiled(
                            controller: stockC,
                            format: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                            showLabelText: true,
                            validator: (v){
                              if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                return 'Enter value of stock';
                              }
                            },
                            hintText: 'Enter value of stock',
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.03),
                      Text('Liabilites',style: InterStyle.w500f24Black),
                      Divider(color: Colors.grey.shade400,thickness: 2),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Borrowed money,goods bought on credit',
                                      maxLines: 2,
                                      style: InterStyle.w500f14Black),
                                  SizedBox(height: size.height*0.02),
                                  CustomTextFiled(
                                    controller: borowdC,
                                    format: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textInputType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    prefixIcon: Icon(Icons.attach_money, color: Colors.grey.shade400),
                                    showLabelText: true,
                                    validator: (v){
                                      if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                        return 'Enter borrowed money & others';
                                      }
                                    },
                                    hintText: 'Enter borrowed money & others',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: size.width*0.04),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Wages due to employees',
                                      maxLines: 2,
                                      style: InterStyle.w500f14Black),
                                  SizedBox(height: size.height*0.02),
                                  CustomTextFiled(
                                    controller: wadgesDueC,
                                    format: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textInputType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                    showLabelText: true,
                                    validator: (v){
                                      if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                        return 'Enter wages due';
                                      }
                                    },
                                    hintText: 'Enter wages due',
                                  ),
                                ],
                              ),
                            ),
                          ]
                      ),
                      SizedBox(height: size.height*0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('taxes,rent,utility bills due immediately',
                              maxLines: 2,
                              style: InterStyle.w500f14Black),
                          SizedBox(height: size.height*0.016),
                          CustomTextFiled(
                            controller: taxesC,
                            format: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                            showLabelText: true,
                            validator: (v){
                              if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                return 'Enter taxes,rent,utility,bills due';
                              }
                            },
                            hintText: 'Enter taxes,rent,utility,bills due',
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.1),
                      CustomButton(
                        bgColor: Theme.of(context).primaryColor,
                        title: 'Next',
                        onPressed: (){
                          if(_formKey.currentState!.validate() && selectedValue.isNotEmpty){
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen:ZakatView3(
                                taxesRentC: taxesC.text,
                                stokTrades: stockC.text,
                                borowdC: borowdC.text,
                                loanC: cashLoan,
                                investmentOthersC: cashInvestment,
                                goldC: gold,
                                wadgesDueC: wadgesDueC.text,
                                cashInHand: cashInHand,
                                cashDeposited: cashDeposited,
                                cashInvestment: cashInvestment,
                                gold: gold,
                                cashLoan: cashLoan,
                                silver: silver,
                                selectedValue: selectedValue,
                              ),
                              withNavBar: true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            );
                          }else{
                            Utils.toastMessage('Please something to continue');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
