import 'package:flutter/material.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class ZakatView extends StatelessWidget {
  const ZakatView({super.key});

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
                    top: size.height * 0.1),
                alignment: Alignment.topCenter,
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
                    RadioListTile(
                      contentPadding: EdgeInsets.zero,
                        visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                        value: true,
                        groupValue: true,
                        onChanged: (v){},
                      title: Text('Value of gold(approximately Rs.1,437,000)',style: InterStyle.w500f14Black),
                    ),
                    RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                      value: true,
                      groupValue: true,
                      onChanged: (v){},
                      title: Text('Value of silver(approximately Rs.114,713)',style: InterStyle.w500f14Black),
                    ),
                    Text('Cash',style: InterStyle.w500f24Black),
                    Divider(color: Colors.grey.shade400,thickness: 2),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text('Cash in hand & in bank account',
                                  maxLines: 2,
                                  style: InterStyle.w500f14Black),
                              Container(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Cash deposited for some future purpose,e.g Hajj',
                                  maxLines: 2,
                                  style: InterStyle.w500f14Black),
                              Container(),
                            ],
                          ),
                        ),
                      ]
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
