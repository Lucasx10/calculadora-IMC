import 'package:meu_app/models/console_utils.dart';
import 'package:meu_app/models/pessoa.dart';

void execute() {
  print("Bem vindo a calculadora de IMC");
  var nome = ConsoleUtils.lerStringComTexto("Digite seu nome: ");
  if (nome.trim() == "") {
    throw Exception("Nome Inválido");
  }
  var pessoa = Pessoa(nome);
  pessoa.getNome();
  double? peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso: ");
  if (peso != null) {
    pessoa.adicionarPeso(peso);
  }

  double? altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura: ");
  if (altura != null) {
    pessoa.adicionarAltura(altura);
  }

  print("O seu IMC é: ${pessoa.retornaIMC()}");
  print("Sua clssificação é: ${pessoa.classificacao()}");
}
