import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mosque_tracer/View/dashboard/zakat_view/zakat_view_2.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:mosque_tracer/widgets/custom_button.dart';
import 'package:mosque_tracer/widgets/custom_field.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

enum ValueOfGoldSilver { GOLD, SILVER}

class ZakatView extends StatefulWidget {
   const ZakatView({super.key});

  @override
  State<ZakatView> createState() => _ZakatViewState();
}

class _ZakatViewState extends State<ZakatView> {

  int? selectedValue;
  final cashInHand = TextEditingController();

  final cashDeposited = TextEditingController();

  final loanC = TextEditingController();

  final investmentOthersC = TextEditingController();

  final goldC = TextEditingController();

  final silverC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

   ValueOfGoldSilver _valueOfGoldSilver = ValueOfGoldSilver.GOLD;

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
                width: double.infinity,
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
                        RadioListTile<ValueOfGoldSilver>(
                          contentPadding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                            value: ValueOfGoldSilver.GOLD,
                            groupValue: _valueOfGoldSilver,
                            onChanged: ( v){
                            setState(() {
                              _valueOfGoldSilver = v!;
                              if (_valueOfGoldSilver == ValueOfGoldSilver.GOLD) {
                                selectedValue = 1346947;
                                log('Selected: Value of gold(approximately Rs.$selectedValue)');
                              }
                            });
                            },
                          title: Text('Value of gold(approximately Rs.1,346,947)',style: InterStyle.w500f14Black),
                        ),
                        RadioListTile(
                          contentPadding: EdgeInsets.zero,
                          visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                          value: ValueOfGoldSilver.SILVER,
                          groupValue: _valueOfGoldSilver,
                          onChanged: ( v){
                            setState(() {
                              _valueOfGoldSilver = v!;
                              if (_valueOfGoldSilver == ValueOfGoldSilver.SILVER) {
                                selectedValue = 129570;
                                log('Selected: Value of silver is ==> $selectedValue');
                              }
                            });

                          },
                          title: Text('Value of silver(approximately Rs.1,29,570)',style: InterStyle.w500f14Black),
                        ),
                        SizedBox(height: size.height*0.005),
                        Text('Cash',style: InterStyle.w500f24Black),
                        Divider(color: Colors.grey.shade400,thickness: 2),
                        Row(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Text('Cash in hand & in bank account',
                                        maxLines: 2,
                                        style: InterStyle.w500f14Black),
                                    SizedBox(height: size.height*0.02),
                                    CustomTextFiled(
                                      controller: cashInHand,
                                      format: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                      showLabelText: true,
                                      validator: (v){
                                        if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                          return 'enter cash in hand';
                                        }
                                      },
                                      hintText: 'Enter cash in hand',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: size.width*0.04),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Cash deposited for some future purpose,e.g Hajj',
                                      maxLines: 2,
                                      style: InterStyle.w500f14Black),
                                  SizedBox(height: size.height*0.02),
                                  CustomTextFiled(
                                    controller: cashDeposited,
                                    format: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textInputType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                    showLabelText: true,
                                    validator: (v){
                                      if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                        return 'Please enter deposited cash';
                                      }
                                    },
                                    hintText: 'Enter deposited cash',
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ),
                        SizedBox(height: size.height*0.02),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Cash given out in loans of total',
                                        maxLines: 2,
                                        style: InterStyle.w500f14Black),
                                    SizedBox(height: size.height*0.02),
                                    CustomTextFiled(
                                      controller: loanC,
                                      format: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                      showLabelText: true,
                                      validator: (v){
                                        if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                          return 'enter cash given out loan';
                                        }
                                      },
                                      hintText: 'Enter cash given out loan',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: size.width*0.04),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Investment,shares,saving certificates,pensions funded by money in one’s possession',
                                        maxLines: 2,
                                        style: InterStyle.w500f14Black),
                                    SizedBox(height: size.height*0.02),
                                    CustomTextFiled(
                                      controller: investmentOthersC,
                                      format: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                      showLabelText: true,
                                      validator: (v){
                                        if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                          return 'Enter investment and others';
                                        }
                                      },
                                      hintText: 'Enter investments & others',
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: size.height*0.02),
                        Text('Gold and silver',style: InterStyle.w500f24Black),
                        Divider(color: Colors.grey.shade400,thickness: 2),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Value of gold that you posses',
                                        maxLines: 2,
                                        style: InterStyle.w500f14Black),
                                    SizedBox(height: size.height*0.02),
                                    CustomTextFiled(
                                      controller: goldC,
                                      format: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      prefixIcon: Icon(Icons.attach_money, color: Colors.grey.shade400),
                                      showLabelText: true,
                                      validator: (v){
                                        if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                          return 'Enter gold';
                                        }
                                      },
                                      hintText: 'Enter gold',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: size.width*0.04),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Value of silver that you posses',
                                        maxLines: 2,
                                        style: InterStyle.w500f14Black),
                                    SizedBox(height: size.height*0.02),
                                    CustomTextFiled(
                                      controller: silverC,
                                      format: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      textInputType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      prefixIcon: Icon(Icons.attach_money,color: Colors.grey.shade400),
                                      showLabelText: true,
                                      validator: (v){
                                        if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                                          return 'Enter silver';
                                        }
                                      },
                                      hintText: 'Enter silver',
                                    ),
                                  ],
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: size.height*0.025),
                        CustomButton(
                          bgColor: Theme.of(context).primaryColor,
                          title: 'Next',
                          onPressed: (){
                            if(_formKey.currentState!.validate() && selectedValue != null) {
                              PersistentNavBarNavigator.pushNewScreen(
                                context,
                                screen: ZakatView2(
                                  cashInHand: cashInHand.text,
                                  cashDeposited: cashDeposited.text,
                                  cashLoan: loanC.text,
                                  cashInvestment: investmentOthersC.text,
                                  gold: goldC.text,
                                  silver: silverC.text,
                                  selectedValue: selectedValue.toString(),
                                ),
                                withNavBar: true, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation: PageTransitionAnimation.cupertino,
                              );
                            }else{
                              Utils.toastMessage('Form can\'t be empty');
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
