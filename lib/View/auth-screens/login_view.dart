import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mosque_tracer/View/auth-screens/forgot_password.dart';
import 'package:mosque_tracer/View/auth-screens/signup_view.dart';
import 'package:mosque_tracer/View/dashboard/home_view.dart';
import 'package:mosque_tracer/generated/assets.dart';
import 'package:mosque_tracer/model-view/auth-notifier.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:mosque_tracer/widgets/custom_button.dart';
import 'package:mosque_tracer/widgets/custom_field.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});


  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final authNotifier = Provider.of<AuthNotifier>(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height*0.8,
              width: double.infinity,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                )
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width*0.032,vertical: size.height*0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(Assets.imagesImageLogin,height: 200),
                        SizedBox(height: size.height*0.06),
                        CustomTextFiled(
                          controller: emailC,
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.grey.shade400),
                          showLabelText: true,
                          validator: (v){
                            if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                              return 'Please enter email address';
                            }
                          },
                          hintText: 'Enter email address',
                        ),
                        SizedBox(height: size.height*0.014),
                        CustomTextFiled(
                          controller: passwordC,
                          obscureText: authNotifier.showPassword,
                          textInputType: TextInputType.visiblePassword,
                          prefixIcon: Icon(Icons.lock_open,color: Colors.grey.shade400),
                          // hintText: null,
                          showLabelText: true,
                          validator: (v){
                            if(v.isEmpty || v.toString() == 'null' || v.toString() == ''){
                              return 'Please enter password';
                            }
                          },
                          hintText: 'Enter password',
                          suffixIcon: IconButton(
                              onPressed: authNotifier.showPasswordFn,
                              icon: Icon(authNotifier.showPassword? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  visualDensity: const VisualDensity(horizontal: -4),
                                    value: authNotifier.savePassword,
                                    onChanged: authNotifier.setSavePassword,
                                ),
                                Text('keep me logged in',style: InterStyle.w600f12Black)
                              ],
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                                padding: EdgeInsets.zero
                              ),
                                onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgotPasswordView()));
                                },
                                child: Text('Forgot Password?',style: InterStyle.w600f16Black),
                            )
                          ],
                        ),
                        SizedBox(height: size.height*0.05),
                        CustomButton(
                          title: 'Login',
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeView()));
                            }
                          },
                        ),
                        SizedBox(height: size.height*0.02),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text('Don’t have an Account? ',style: InterStyle.w600f16Black),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupView()));
                                },
                                child: Text('Join Now',style: InterStyle.w600f16Primary))
                          ],
                        )
                      ],
                    ),
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
