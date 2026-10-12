// lib/models/recomendacao.dart
//
// Modelo de dados que representa uma recomendação de exercício/atividade
// associada a um sintoma. Espelha a estrutura da tabela `recomendacoes`
// que será criada no SQLite (Sprint 2, database_helper.dart).

class Recomendacao {
  final int? id;
  final String sintoma;
  final String titulo;
  final String justificativa;

  const Recomendacao({
    this.id,
    required this.sintoma,
    required this.titulo,
    required this.justificativa,
  });

  factory Recomendacao.fromMap(Map<String, dynamic> map) {
    return Recomendacao(
      id: map['id'] as int?,
      sintoma: map['sintoma'] as String,
      titulo: map['titulo'] as String,
      justificativa: map['justificativa'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'sintoma': sintoma,
      'titulo': titulo,
      'justificativa': justificativa,
    };
  }

  Recomendacao copyWith({
    int? id,
    String? sintoma,
    String? titulo,
    String? justificativa,
  }) {
    return Recomendacao(
      id: id ?? this.id,
      sintoma: sintoma ?? this.sintoma,
      titulo: titulo ?? this.titulo,
      justificativa: justificativa ?? this.justificativa,
    );
  }

  @override
  String toString() {
    return 'Recomendacao(id: $id, sintoma: $sintoma, titulo: $titulo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Recomendacao &&
        other.sintoma == sintoma &&
        other.titulo == titulo &&
        other.justificativa == justificativa;
  }

  @override
  int get hashCode => Object.hash(sintoma, titulo, justificativa);
}
