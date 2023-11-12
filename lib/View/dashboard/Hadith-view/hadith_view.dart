import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mosque_tracer/model-view/hadith_view_model/hadith_bloc.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {

  final hadithBloc = HadithBloc();

  @override
  void initState() {
    hadithBloc.add(HadithDone());
    super.initState();
  }

  @override
  void dispose() {
    hadithBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      body: Stack(
        children: [
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
              child: BlocConsumer<HadithBloc, HadithState>(
                bloc: hadithBloc,
                listener: (context, state) {},
                builder: (context, state) {
                  if(state is HadithLoading){
                    return const Center(child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ));
                  }
                  if(state is HadithError){
                    return Center(
                      child: Text(state.error),
                    );
                  }
                  if(state is HadithLoaded){
                    return ListView.builder(
                        itemCount: state.hadithModel.hadiths?.data?.length,
                        itemBuilder: (context, index) {
                          final data = state.hadithModel.hadiths?.data?[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.03),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: Offset(0, 1),
                                      blurRadius: 5,
                                    ),
                                  ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white
                              ),
                              child: RichText(
                                  text: TextSpan(
                                text: '${data?.hadithArabic}',
                                style: InterStyle.w500f14Black
                              )),
                            ),
                          );
                        });
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
