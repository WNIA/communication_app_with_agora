import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void showScaffoldMessage(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$text')));
}

// show success message
void showSuccessMessageDialog(String message, context) {
  CoolAlert.show(
    context: context,
    width: 350,
    type: CoolAlertType.success,
    text: "$message",
  );
}

// show error message
void showErrorMessageDialog(String message, context) {
  CoolAlert.show(
    context: context,
    width: 350,
    type: CoolAlertType.error,
    text: "$message",
  );
}

// raised button for mobile
class MobileRaisedButton extends StatelessWidget {
  MobileRaisedButton(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.cornerRadius,
        required this.backgroundColor,
        this.fontSize,
        this.padding});

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double cornerRadius;
  final double? fontSize;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius))),
        onPressed: onTap,
        child: Padding(
            padding: EdgeInsets.all(padding ?? 14.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 14,
                color: textColor,
                letterSpacing: 0.8,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}

// border raised button for mobile
class MobileBorderedRaisedButton extends StatelessWidget {
  MobileBorderedRaisedButton(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.cornerRadius,
        required this.borderColor,
        this.fontSize});

  final VoidCallback onTap;
  final String text;
  final Color borderColor;
  final Color textColor;
  final double cornerRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 4,
            shadowColor: Colors.black12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
                side: BorderSide(color: borderColor, width: 1.5))),
        onPressed: onTap,
        child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 14,
                color: textColor,
                letterSpacing: 0.8,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}

// border raised button for mobile
class MobileBorderedRaisedButtonWithIcon extends StatelessWidget {
  MobileBorderedRaisedButtonWithIcon(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.cornerRadius,
        required this.icon,
        required this.borderColor});

  final VoidCallback onTap;
  final String text;
  final Color borderColor;
  final Color textColor;
  final double cornerRadius;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius),
                side: BorderSide(color: borderColor, width: 1.5))),
        onPressed: onTap,
        child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SizedBox(height: 15, child: icon),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

// raised button with icon for mobile
class MobileRaisedButtonWithIcon extends StatelessWidget {
  MobileRaisedButtonWithIcon(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.cornerRadius,
        required this.icon,
        required this.backgroundColor,
        this.fontSize});

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double cornerRadius;
  final Widget icon;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius))),
        onPressed: onTap,
        child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SizedBox(height: 15, child: icon),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize ?? 14,
                    color: textColor,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class BorderedRoundedRaisedButton extends StatelessWidget {
  BorderedRoundedRaisedButton(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.borderColor});

  final VoidCallback onTap;
  final String text;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: borderColor, width: 1)))),
          onPressed: () {},
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  color: textColor,
                  fontWeight: FontWeight.w400,
                ),
              )),
        ),
      ),
    );
  }
}

class BorderedRoundedRaisedButtonWithRadius extends StatelessWidget {
  BorderedRoundedRaisedButtonWithRadius(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.radius,
        required this.borderColor});

  final VoidCallback onTap;
  final String text;
  final Color borderColor;
  final Color textColor;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: BorderSide(color: borderColor, width: 1)))),
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedRaisedButtonWithIcon extends StatelessWidget {
  RoundedRaisedButtonWithIcon(
      {required this.text,
        required this.textColor,
        required this.icon,
        required this.onTap,
        required this.backgroundColor});

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          elevation: 4,
          color: backgroundColor,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: textColor,
                  size: 12,
                ),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedRaisedButtonWithIconAndRadius extends StatelessWidget {
  RoundedRaisedButtonWithIconAndRadius(
      {required this.text,
        required this.textColor,
        required this.icon,
        required this.onTap,
        required this.cornerRadius,
        required this.backgroundColor});

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;
  final double cornerRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(cornerRadius),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          elevation: 4,
          color: backgroundColor,
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: textColor,
                  size: 15,
                ),
                SizedBox(width: 5),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// rounded text field
class RoundedTextField extends StatelessWidget {
  RoundedTextField({
    required this.controller,
    required this.hint,
    required this.label,
    required this.onTap,
    required this.textInputType,
    required this.borderSideColor,
  });

  final String hint, label;
  final TextEditingController controller;
  final VoidCallback onTap;
  final TextInputType textInputType;
  final Color borderSideColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      keyboardType: textInputType,
      decoration: InputDecoration(
          labelText: '$label',
          hintText: '$hint',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderSideColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderSideColor)),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
    );
  }
}

class RoundedTextFieldWithIcon extends StatelessWidget {
  RoundedTextFieldWithIcon({
    required this.controller,
    required this.hint,
    required this.label,
    required this.onTap,
    required this.textInputType,
    required this.borderSideColor,
    required this.prefIcon,
    required this.suffIcon,
  });

  final String hint, label;
  final TextEditingController controller;
  final VoidCallback onTap;
  final TextInputType textInputType;
  final Color borderSideColor;
  final Widget prefIcon;
  final Widget suffIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      keyboardType: textInputType,
      decoration: InputDecoration(
          hintText: '$hint',
          prefixIcon: prefIcon,
          suffixIcon: suffIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderSideColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderSideColor)),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
    );
  }
}

class TextFieldWithRadius extends StatelessWidget {
  TextFieldWithRadius({
    required this.controller,
    required this.hint,
    required this.label,
    required this.onTap,
    required this.textInputType,
    required this.borderSideColor,
    required this.radius,
    this.maxLines,
  });

  final String hint, label;
  final TextEditingController controller;
  final VoidCallback onTap;
  final TextInputType textInputType;
  final Color borderSideColor;
  final double radius;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: '$label',
        hintText: '$hint',
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: borderSideColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: borderSideColor)),
        contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      maxLines: maxLines ?? 1,
    );
  }
}





class CustomListTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final VoidCallback onPressed;
  final Color trailingIconColor;
  final String? iconPath;
  CustomListTile({required this.title, required this.leading, required this.trailing, required this.onPressed, required this.trailingIconColor, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        onTap: () {

        },
        leading: iconPath !=null ? ImageIcon(AssetImage(iconPath!),color: Color(0xFF828FAB),) : Icon(leading, color:Color(0xFF828FAB),),
        title: Text(title),
        trailing: IconButton(icon: Icon(trailing),onPressed: onPressed,color: trailingIconColor,),
      ),
    );
  }
}

class CustomMobileRaisedButton extends StatelessWidget {
  CustomMobileRaisedButton(
      {required this.text,
        required this.textColor,
        required this.onTap,
        required this.cornerRadius,
        required this.backgroundColor,
        this.fontSize});

  final VoidCallback onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double cornerRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius))),
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? 14,
              color: textColor,
              letterSpacing: 0.8,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}