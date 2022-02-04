import 'dart:io';

import 'package:dio/dio.dart';

import 'utils.dart';

class HandlerError {
  String parserError(DioError err) {
    if (err.error is SocketException) {
      return Utils.appLanguage == 'pt-BR'
          ? 'Verifique sua conexão com a internet.'
          : 'No Internet connection';
    } else if (err.response?.statusCode == 404) {
      return Utils.appLanguage == 'pt-BR'
          ? 'Usuário e/ou senha errados. Tente novamente!'
          : 'Wrong username and/or password. Try again!';
    } else if (err.response?.statusCode == 500) {
      return Utils.appLanguage == 'pt-BR'
          ? 'Erro no servidor. Tente novamente em alguns instantes'
          : 'Server error. try again in a few moments';
    } else {
      return Utils.appLanguage == 'pt-BR'
          ? 'Nenhuma mensagem encontrada - code: ${err.response?.statusCode}'
          : 'No error message found - code: ${err.response?.statusCode}';
    }
  }
}
