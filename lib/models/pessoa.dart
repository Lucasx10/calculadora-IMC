class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  void adicionarPeso(double peso) {
    _peso = peso;
  }

  void adicionarAltura(double altura) {
    _altura = altura;
  }

  double retornaIMC() {
    double imc = _peso / (_altura * _altura);
    imc = double.parse(imc.toStringAsFixed(2));
    return imc.isNaN ? 0 : imc;
  }

  String classificacao() {
    var imc = retornaIMC();
    String classificacao = "";
    if (imc < 16) {
      classificacao = "Magreza grave";
    } else if (imc > 16 && imc < 17) {
      classificacao = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      classificacao = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      classificacao = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      classificacao = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      classificacao = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      classificacao = "Obesidade Grau II";
    } else if (imc >= 40) {
      classificacao = "Obesidade Grau III";
    }
    return classificacao;
  }
}
