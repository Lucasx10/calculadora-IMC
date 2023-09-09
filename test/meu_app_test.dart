import 'package:meu_app/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Verificando nome pessoa', () {
    var pessoa = Pessoa("Anderson");
    expect((pessoa.getNome().toString()), contains("Anderson"));
  });
  test('Teste calculo IMC', () {
    // Capturar a exceção lançada pela função execute
    var pessoa = Pessoa("Joao");
    pessoa.adicionarPeso(68);
    pessoa.adicionarAltura(1.66);
    expect((pessoa.retornaIMC()), 24.68);
  });
  test('Classificação IMC', () {
    var pessoa = Pessoa("Joao");
    pessoa.adicionarPeso(68);
    pessoa.adicionarAltura(1.66);
    expect((pessoa.classificacao()), "Saudável");
  });
}
