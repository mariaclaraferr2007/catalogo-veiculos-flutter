import 'package:atividade4/atividade4.dart' as atividade4;
import 'dart:io';

class Produto{
  late String _nome;
  late double _preco;
  late int _quantidadeEmEstoque;
  String? descricao;

  Produto(this._nome,this._preco,this._quantidadeEmEstoque);

  String getNome() => _nome;
  void setNome(String novoNome){
    if(novoNome != " "){
      _nome = novoNome;
    }
    else{
      print("Insira um nome!");
    }
  }
  double getPreco() => _preco;
  void setPreco(double novoPreco){
    if(novoPreco != 0){
      _preco = novoPreco;
    }
    else{
      print("Insira um preco!");
    }
  }
  int getQuantidadeEmEstoque() => _quantidadeEmEstoque;
  void setQuantidadeEmEstoque(int novaQuant){
    if(novaQuant != 0){
      _quantidadeEmEstoque = novaQuant;
    }
    else{
      print("Insira uma quantidade!");
    }
  }


  
  void Vender(int quantidade){
    if(_quantidadeEmEstoque > quantidade){
      _quantidadeEmEstoque = _quantidadeEmEstoque - quantidade;
      print('true');
    }
    else{
      print('false');
    }
  }
  void reporEstoque(int quantidade){
    if(_quantidadeEmEstoque > quantidade){
      _quantidadeEmEstoque = _quantidadeEmEstoque + quantidade;
      print('true');
    }
    else{
      print('false');
    }
  }
  

  

  
}
void main() {
  Produto produto1 = Produto('Cloro', 20.00, 5);
  Produto produto2 = Produto('Amaciante', 25.00, 10);
  Produto produto3 = Produto('Sabão', 35.00, 15);

  produto1.Vender(2);
  produto1.reporEstoque(3);

  produto2.Vender(5);
  produto2.reporEstoque(6);

  produto3.Vender(10);
  produto3.reporEstoque(7);

  produto1.setNome('Cloro IPE');
  produto2.setPreco(20.00);
  produto1.setQuantidadeEmEstoque(20);

  print('Dados atualizados: ${produto1.getNome()}, ${produto1.getPreco()}, ${produto1.getQuantidadeEmEstoque()}');
  print('Dados atualizados: ${produto2.getNome()}, ${produto2.getPreco()}, ${produto2.getQuantidadeEmEstoque()}');
  print('Dados atualizados: ${produto3.getNome()}, ${produto3.getPreco()}, ${produto3.getQuantidadeEmEstoque()}');

}


