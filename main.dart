import 'dart:io';

void main() {
  // Solicita a idade do usuário
  stdout.write('Digite sua idade: ');
  int? idade = int.tryParse(stdin.readLineSync() ?? '');

  // Verifica se a idade é válida
  if (idade == null || idade < 0) {
    print('Idade inválida. Por favor, insira um número positivo.');
    return;
  }

  // Verifica se está apto a votar
  if (idade >= 16) {
    print('Você está apto a votar este ano.');
  } else {
    print('Você ainda não está apto a votar.');
  }
}
