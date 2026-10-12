// lib/data/recomendacoes_repository.dart
//
// Camada de acesso à base de conhecimento de recomendações.
// Consome recomendacoesData (Map cru) e expõe objetos Recomendacao
// tipados, prontos para o motor de prescrição consumir mesmo antes
// do SQLite (database_helper.dart) estar implementado.

import '../models/recomendacao.dart';
import 'recomendacoes_data.dart';

class RecomendacoesRepository {
  static List<Recomendacao>? _cache;

  static List<Recomendacao> _todasRecomendacoes() {
    _cache ??= recomendacoesData.map(Recomendacao.fromMap).toList();
    return _cache!;
  }

  static List<Recomendacao> getRecomendacoesPorSintoma(String sintoma) {
    final sintomaNormalizado = sintoma.trim().toLowerCase();
    return _todasRecomendacoes()
        .where((r) => r.sintoma.trim().toLowerCase() == sintomaNormalizado)
        .toList();
  }

  static List<String> getSintomasDisponiveis() {
    return _todasRecomendacoes().map((r) => r.sintoma).toSet().toList();
  }

  static Recomendacao? getRecomendacaoAleatoriaPorSintoma(String sintoma) {
    final recomendacoes = getRecomendacoesPorSintoma(sintoma);
    if (recomendacoes.isEmpty) return null;
    recomendacoes.shuffle();
    return recomendacoes.first;
  }
}
