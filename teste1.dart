import 'dart:io';

main() {
  int x = 3;
  int z = 5;
  int inf = 0;
  int somax = 0;
  int somaz = 0;
  int res;

  print('\n-------- Soma de Divisores --------\n');

  //Intrução para receber numero do usuário
  print('Digite um numero inteiro positivo:');
  inf = int.parse(stdin.readLineSync()!);

  while (inf < 0) {
    print('\nNúmero digitado invalido.');
    print('Por favor informe um número positivo:');
    inf = int.parse(stdin.readLineSync()!);
  }
  //regra para receber numeros divisiveis de 3
  for (int i = 1; i < inf; i++) {
    if (i % x == 0) {
      somax += i;
    }
  }

  //regra para receber numeros divisiveis de 5
  for (int i = 1; i < inf; i++) {
    if (i % z == 0) {
      somaz += i;
    }
  }
  //expressão para realizar a soma dos divisiveis
  res = somax + somaz;

  print("\nA soma dos multiplos de 3 e 5 abaixo de $inf, é: $res\n");
}
