import 'package:flutter/material.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:mosque_tracer/widgets/custom_button.dart';
import 'package:mosque_tracer/widgets/custom_field.dart';

class ZakatView3 extends StatefulWidget {
   String taxesRentC, borowdC, loanC ,
   investmentOthersC,
   goldC,
   stokTrades,
   wadgesDueC,selectedValue;
   String cashInHand,cashDeposited,cashLoan,cashInvestment,gold,silver;
   ZakatView3({super.key, required this.taxesRentC, required this.borowdC, required this.loanC, required this.investmentOthersC, required this.goldC, required this.wadgesDueC, required this.cashInHand, required this.cashDeposited, required this.cashLoan, required this.cashInvestment, required this.gold, required this.silver, required this.selectedValue, required this.stokTrades});

  @override
  State<ZakatView3> createState() => _ZakatView3State();
}

class _ZakatView3State extends State<ZakatView3> {

  int totalWorth = 0;

  @override
  void initState() {
   setState(() {
     totalWorth = (int.parse(widget.cashInHand)
         +int.parse(widget.cashInvestment) + int.parse(widget.cashLoan)
         + int.parse(widget.silver) + int.parse(widget.gold)
         + int.parse(widget.investmentOthersC))-(int.parse(widget.borowdC)
         +int.parse(widget.wadgesDueC)+int.parse(widget.taxesRentC));
         // widget.cashDeposited+widget.cashInvestment+
         // widget.cashLoan+widget.silver+widget.gold+widget.investmentOthersC
         // -int.parse(widget.borowdC+widget.wadgesDueC+widget.taxesRentC));
   });
    super.initState();
  }

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
                  Text('Rs. $totalWorth',style: InterStyle.w500f24Black),
                  SizedBox(height: size.height*0.06),
                  Text('Zakat Payable',
                      textAlign: TextAlign.start,
                      style: InterStyle.w500f24Black),
                  (totalWorth >= int.parse(widget.selectedValue))?
                  Text('Your are eligible to pay zakat $totalWorth',style: InterStyle.w500f24Black):
                  Text('You are not eligible to pay zakaat',style: InterStyle.w500f24Black),
                  SizedBox(height: size.height*0.1),
                  Row(
                    children: [
                      Expanded(child: CustomButton(
                        onPressed: (){
                          if(totalWorth >= int.parse(widget.selectedValue)){
                            Utils.toastMessage('You are eligible for zakaat');
                          }
                        },
                        title: 'Give your Zakat',
                      )),
                      SizedBox(width: size.width*0.03),
                      Expanded(child: CustomButton(
                        onPressed: (){
                          totalWorth = 0;
                          setState(() {});
                        },
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
