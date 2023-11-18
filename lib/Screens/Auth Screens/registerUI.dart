import 'package:flutter/material.dart';
import 'package:miss_bengal_flutter/Screens/homeUI.dart';
import 'package:miss_bengal_flutter/utils/components.dart';
import 'package:miss_bengal_flutter/utils/sdp.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({super.key});

  @override
  State<RegisterUI> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
  int _currentStep = 1;
  String _selectedDoc = "Aadhaar Card";
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: sdp(context, 20),
                ),
              ),
              Text(
                'Get started by entering your details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: sdp(context, 10),
                ),
              ),
              height20,
              _currentStep == 1
                  ? _personalDetailsForm()
                  : _currentStep == 2
                      ? _termsConditions()
                      : _currentStep == 3
                          ? _declaration()
                          : _currentStep == 4
                              ? _uploadDocs()
                              : _currentStep == 5
                                  ? _verification()
                                  : _confirmation(),
              height20,
              _currentStep == 6
                  ? kSubmitButton(
                      onPressed: () {
                        NavPush(context, HomeUI());
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _currentStep > 1
                            ? kSubmitButton(
                                onPressed: () {
                                  if (_currentStep > 1) {
                                    setState(() {
                                      _currentStep -= 1;
                                    });
                                  }
                                },
                                shadowColor: Colors.transparent,
                                child: Text('Previous'),
                              )
                            : SizedBox(),
                        kSubmitButton(
                          onPressed: () {
                            setState(() {
                              _currentStep += 1;
                            });
                          },
                          shadowColor: Colors.transparent,
                          child: Text(
                              _currentStep == 5 ? 'Verify & Continue' : 'Next'),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _personalDetailsForm() {
    return kContentBox(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 1/5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height10,
          Text(
            'Personal Details',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height20,
          kTextField(
            context,
            label: 'Fullname',
            hintText: 'Eg. John Doe',
            keyboardType: TextInputType.name,
          ),
          height20,
          kTextField(
            context,
            label: 'E-mail Address',
            hintText: 'Eg. example@go.com',
            keyboardType: TextInputType.emailAddress,
          ),
          height20,
          kTextField(
            context,
            label: 'Height (in feet)',
            hintText: 'Eg. 5.6 (in feet)',
            keyboardType: TextInputType.number,
          ),
          height20,
          kTextField(
            context,
            label: 'Qualificaton',
            hintText: 'Eg. Higher Secondary',
            keyboardType: TextInputType.text,
          ),
          height20,
          kTextField(
            context,
            label: 'Address',
            maxLines: 4,
            minLines: 4,
            hintText: 'Eg. House No., Street, Landmark, ZIP Code etc',
            keyboardType: TextInputType.streetAddress,
          ),
          height20,
          kTextField(
            context,
            label: 'Aadhaar Number',
            hintText: 'Eg. 12345678900',
            keyboardType: TextInputType.number,
          ),
          height20,
          kTextField(
            context,
            label: 'Phone Number',
            hintText: 'Phone Number',
            keyboardType: TextInputType.phone,
          ),
          height20,
          kTextField(
            context,
            label: 'Previously participated anywhere? Please mention',
            maxLines: 4,
            minLines: 4,
            hintText: '(Optional)',
            keyboardType: TextInputType.streetAddress,
          ),
          height20,
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.cyanAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _termsConditions() {
    return kContentBox(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 2/5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height10,
          Text(
            'Terms & Conditions',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height20,
          Container(
            height: MediaQuery.of(context).size.height * .5,
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Text(
                  '**Terms and Conditions** ** 1. Acceptance of Terms** By accessing or using [Your Company Name] (referred to as "the Company") services, you agree to comply with and be bound by these terms and conditions. If you do not agree to these terms, please do not use our services. **2. Use of Services** You must be at least 18 years old to use our services. You are responsible for maintaining the confidentiality of your account information, including your username and password. You agree to accept responsibility for all activities that occur under your account. **3. Privacy** Your use of our services is subject to our Privacy Policy. Please review the policy to understand how we collect, use, and disclose information. **4. Intellectual Property** All content, logos, trademarks, and other materials on our website are the intellectual property of the Company and are protected by copyright and other intellectual property laws. You may not use our intellectual property without our prior written consent. **5. User Content** You are solely responsible for any content you submit or post on our website. You agree not to post any content that is illegal, defamatory, infringing on intellectual property rights, or otherwise harmful. The Company reserves the right to remove any content at its discretion. **6. Disclaimer of Warranties** Our services are provided on an "as-is" and "as-available" basis. The Company makes no warranties, express or implied, regarding the accuracy, reliability, or completeness of the content provided. We do not guarantee that our services will be error-free or uninterrupted. **7. Limitation of Liability** The Company shall not be liable for any direct, indirect, incidental, special, or consequential damages, including but not limited to loss of profits, data, or goodwill, arising from the use or inability to use our services. **8. Termination** The Company reserves the right to terminate or suspend your access to our services at its discretion, with or without cause and without notice. **9. Governing Law** These terms and conditions are governed by and construed in accordance with the laws of [Your Jurisdiction]. Any disputes or claims arising from these terms will be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction]. **10. Changes to Terms and Conditions** The Company may update or modify these terms and conditions at any time. It is your responsibility to review these terms periodically. Your continued use of our services after any changes indicates your acceptance of the modified terms. **11. Contact Information** If you have any questions or concerns about these terms and conditions, please contact us at [Your Contact Information]. This is a generic sample, and you should adapt it to your specific business and legal requirements.',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
          ),
          height20,
          Row(
            children: [
              Checkbox(value: true, onChanged: (val) {}),
              width10,
              Flexible(
                child: Text(
                  'I agree',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _declaration() {
    return kContentBox(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 3/5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height10,
          Text(
            'Declaration',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height20,
          Container(
            height: MediaQuery.of(context).size.height * .5,
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Text(
                  '**Terms and Conditions** ** 1. Acceptance of Terms** By accessing or using [Your Company Name] (referred to as "the Company") services, you agree to comply with and be bound by these terms and conditions. If you do not agree to these terms, please do not use our services. **2. Use of Services** You must be at least 18 years old to use our services. You are responsible for maintaining the confidentiality of your account information, including your username and password. You agree to accept responsibility for all activities that occur under your account. **3. Privacy** Your use of our services is subject to our Privacy Policy. Please review the policy to understand how we collect, use, and disclose information. **4. Intellectual Property** All content, logos, trademarks, and other materials on our website are the intellectual property of the Company and are protected by copyright and other intellectual property laws. You may not use our intellectual property without our prior written consent. **5. User Content** You are solely responsible for any content you submit or post on our website. You agree not to post any content that is illegal, defamatory, infringing on intellectual property rights, or otherwise harmful. The Company reserves the right to remove any content at its discretion. **6. Disclaimer of Warranties** Our services are provided on an "as-is" and "as-available" basis. The Company makes no warranties, express or implied, regarding the accuracy, reliability, or completeness of the content provided. We do not guarantee that our services will be error-free or uninterrupted. **7. Limitation of Liability** The Company shall not be liable for any direct, indirect, incidental, special, or consequential damages, including but not limited to loss of profits, data, or goodwill, arising from the use or inability to use our services. **8. Termination** The Company reserves the right to terminate or suspend your access to our services at its discretion, with or without cause and without notice. **9. Governing Law** These terms and conditions are governed by and construed in accordance with the laws of [Your Jurisdiction]. Any disputes or claims arising from these terms will be subject to the exclusive jurisdiction of the courts in [Your Jurisdiction]. **10. Changes to Terms and Conditions** The Company may update or modify these terms and conditions at any time. It is your responsibility to review these terms periodically. Your continued use of our services after any changes indicates your acceptance of the modified terms. **11. Contact Information** If you have any questions or concerns about these terms and conditions, please contact us at [Your Contact Information]. This is a generic sample, and you should adapt it to your specific business and legal requirements.',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
          ),
          height20,
          Row(
            children: [
              Checkbox(value: true, onChanged: (val) {}),
              width10,
              Flexible(
                child: Text(
                  'I agree',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _uploadDocs() {
    return kContentBox(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 4/5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height10,
          Text(
            'Upload Documents',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            'Documents are required',
            style: TextStyle(
                color: Colors.red.shade100, fontWeight: FontWeight.w500),
          ),
          height20,
          Text(
            "Choose recent selfie",
            style: TextStyle(
              fontSize: sdp(context, 9),
              color: Colors.white,
            ),
          ),
          height10,
          Container(
            padding: EdgeInsets.all(4),
            color: Colors.blueGrey.shade800,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Choose File',
                      style: TextStyle(
                          color: Colors.white, fontSize: sdp(context, 10)),
                    ),
                  ),
                ),
                width10,
                Flexible(
                  child: Text(
                    'No file chosen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sdp(context, 10),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          height20,
          Text(
            "Choose Document",
            style: TextStyle(
              fontSize: sdp(context, 9),
              color: Colors.white,
            ),
          ),
          height10,
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(4),
              color: Colors.blueGrey.shade800,
              child: DropdownButton(
                value: _selectedDoc,
                underline: SizedBox.shrink(),
                isDense: true,
                isExpanded: true,
                dropdownColor: Colors.blueGrey.shade800,
                padding: EdgeInsets.all(8),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
                items: [
                  DropdownMenuItem(
                    value: 'Aadhaar Card',
                    child: Text('Aadhaar Card'),
                  ),
                  DropdownMenuItem(
                    value: 'PAN Card',
                    child: Text('PAN Card'),
                  ),
                  DropdownMenuItem(
                    value: 'Voter Card',
                    child: Text('Voter Card'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    print(value);
                    _selectedDoc = value!;
                  });
                },
              ),
            ),
          ),
          height20,
          Text(
            "Choose $_selectedDoc",
            style: TextStyle(
              fontSize: sdp(context, 9),
              color: Colors.white,
            ),
          ),
          height10,
          Container(
            padding: EdgeInsets.all(4),
            color: Colors.blueGrey.shade800,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Choose File',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: sdp(context, 10),
                      ),
                    ),
                  ),
                ),
                width10,
                Flexible(
                  child: Text(
                    'No file chosen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sdp(context, 10),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _verification() {
    return kContentBox(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 5/5',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height10,
          Text(
            'Verify your phone',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          height20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: kTextField(
                  context,
                  label: 'Phone Number',
                  hintText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                ),
              ),
              width10,
              TextButton(
                onPressed: () {},
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
            ],
          ),
          height20,
          kTextField(
            context,
            label: 'Enter OTP',
            maxLength: 5,
            hintText: 'Enter 5 digits otp',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }

  Widget _confirmation() {
    return kContentBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/Images/success.webp'),
          height20,
          Text(
            'Thank You! for registering',
            style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.w800,
              fontSize: sdp(context, 20),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
