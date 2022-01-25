import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BuildTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final GlobalKey<FormState> formKey;
  final bool isNumber;
  final int? maxLines;

  const BuildTextFormField({
    required this.controller,
    required this.hint,
    required this.formKey,
    this.isNumber = false,
    this.maxLines,
  });
  @override
  _BuildTextFormFieldState createState() => _BuildTextFormFieldState();
}

class _BuildTextFormFieldState extends State<BuildTextFormField> {
  bool _errorDisplayed = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.none,
      maxLines: widget.maxLines ?? 1,
      textCapitalization: TextCapitalization.none,
      controller: widget.controller,
      decoration: InputDecoration(
        errorStyle: TextStyle(height: 0),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onFieldSubmitted: (text) {
        if (_errorDisplayed) {
          widget.formKey.currentState?.validate();
        }
      },
      validator: (text) {
        if (widget.controller.text.trim().isEmpty) {
          _errorDisplayed = true;
          _displayToast();
          return '';
        }

        if (widget.controller.text.length < 5) {
          _errorDisplayed = true;
          _displayToast(message: 'O campo não pode ser menor que 10 caracteres');
          return '';
        }

        _errorDisplayed = false;
        return null;
      },
    );
  }

  Future<bool?> _displayToast({String message = 'O campo não pode estar vazio'}) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class BuildTextFormFieldLogin extends StatefulWidget {
  final TextEditingController mainController;
  final TextEditingController secondController;
  final bool isPassword;
  final String hint;
  final GlobalKey<FormState> formKey;
  final String keyName;

  const BuildTextFormFieldLogin({
    required this.mainController,
    required this.secondController,
    required this.isPassword,
    required this.hint,
    required this.formKey,
    required this.keyName,
  });
  @override
  _BuildTextFormFieldLoginState createState() => _BuildTextFormFieldLoginState();
}

class _BuildTextFormFieldLoginState extends State<BuildTextFormFieldLogin> {
  bool _errorDisplayed = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key(widget.keyName),
      textCapitalization: TextCapitalization.none,
      controller: widget.mainController,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        errorStyle: TextStyle(height: 0),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: widget.isPassword
            ? Icon(Icons.lock_open, color: Colors.white)
            : Icon(Icons.person, color: Colors.white),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                })
            : null,
      ),
      onFieldSubmitted: (text) {
        if (_errorDisplayed) {
          widget.formKey.currentState?.validate();
        }
      },
      validator: (text) {
        if (widget.mainController.text.trim().isEmpty &&
            widget.secondController.text.trim().isEmpty) {
          _errorDisplayed = true;
          _displayToast();
          return '';
        }

        if (widget.mainController.text.trim().isEmpty) {
          _errorDisplayed = true;
          widget.isPassword
              ? _displayToast(message: 'A senha não pode estar vazia')
              : _displayToast(message: 'O Usuário não pode estar vazio');
          return '';
        }

        if (widget.isPassword) {
          if (widget.mainController.text.length < 4) {
            _errorDisplayed = true;
            _displayToast(message: 'A senha não pode ser menor que 4 caracteres');
            return '';
          }
        }

        _errorDisplayed = false;
        return null;
      },
    );
  }

  Future<bool?> _displayToast({String message = 'O campos não podem estar vazios'}) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
