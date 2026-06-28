// lib/data/recomendacoes_data.dart
//
// Base de conhecimento do motor de recomendações do AlongaPET.
// Estrutura: sintoma → título do exercício → justificativa científica.
//
// Fonte de referência para a Sprint 2 (banco de dados SQLite).
// Cada entrada será inserida na tabela `recomendacoes`.

const List<Map<String, String>> recomendacoesData = [
  // ─────────────────────────────────────────────
  // ANSIEDADE
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Ansiedade',
    'titulo': 'Corrida Leve (10 min)',
    'justificativa': 'A corrida aeróbica moderada estimula a liberação de endorfinas e '
        'reduz os níveis de cortisol plasmático em até 26%. O exercício aeróbico '
        'também aumenta a disponibilidade de serotonina e dopamina no sistema '
        'nervoso central, promovendo sensação de bem-estar e reduzindo a '
        'ativação do eixo hipotálamo-hipófise-adrenal responsável pela resposta '
        'ao estresse (Salmon, 2001; Wipfli et al., 2008).',
  },
  {
    'sintoma': 'Ansiedade',
    'titulo': 'Respiração Diafragmática (Box Breathing)',
    'justificativa': 'A técnica de respiração 4-4-4-4 (inspirar, segurar, expirar, pausar '
        '— 4 segundos cada) ativa o nervo vago e aumenta a variabilidade da '
        'frequência cardíaca (VFC), mudando o sistema nervoso autônomo do modo '
        'simpático ("luta ou fuga") para o parassimpático ("repouso e digestão"). '
        'Estudos de neuroimagem mostram redução de atividade na amígdala após '
        '5 minutos de respiração lenta controlada (Zaccaro et al., 2018).',
  },
  {
    'sintoma': 'Ansiedade',
    'titulo': 'Caminhada ao Ar Livre (15 min)',
    'justificativa': 'A exposição à natureza e luz solar durante caminhadas reduz a '
        'ruminação mental e diminui o fluxo sanguíneo no córtex pré-frontal '
        'subgenual, área associada a estados depressivos e ansiosos. Mesmo '
        '15 minutos de caminhada aumentam os níveis de BDNF (fator neurotrófico '
        'derivado do cérebro), protegendo neurônios do hipocampo (Bratman '
        'et al., 2015).',
  },

  // ─────────────────────────────────────────────
  // DOR CERVICAL / PESCOÇO
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Dor no Pescoço',
    'titulo': 'Alongamento Cervical Lateral',
    'justificativa':
        'Inclinação lateral da cabeça em direção ao ombro (30 seg cada lado) '
            'alonga o músculo esternocleidomastoideo e o escaleno, que ficam '
            'cronicamente encurtados em postura cifótica frente ao monitor. '
            'O alongamento estático sustentado por 30 segundos é suficiente para '
            'reduzir a tensão miofascial e aumentar o fluxo sanguíneo local '
            '(Ylinen et al., 2007).',
  },
  {
    'sintoma': 'Dor no Pescoço',
    'titulo': 'Retração Cervical (Chin Tuck)',
    'justificativa':
        'O "chin tuck" — recuar o queixo horizontalmente sem inclinar a cabeça '
            '— fortalece os flexores profundos do pescoço (longus colli e capitis) '
            'e reposiciona a coluna cervical na curvatura lordótica natural. '
            'Estudos mostram redução de 54% na dor cervical crônica com 4 semanas '
            'de prática diária (Jull et al., 2009).',
  },
  {
    'sintoma': 'Dor no Pescoço',
    'titulo': 'Rotação Cervical Lenta',
    'justificativa':
        'Rotações lentas da cabeça (5 repetições para cada lado) mobilizam as '
            'articulações facetárias cervicais e lubrificam a cartilagem articular '
            'com líquido sinovial. Movimentos lentos ativam mecanorreceptores que '
            'inibem a transmissão de sinais nociceptivos na medula espinhal pelo '
            'mecanismo de gate control (Melzack & Wall, 1965).',
  },

  // ─────────────────────────────────────────────
  // DOR NOS OMBROS
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Dor nos Ombros',
    'titulo': 'Retração Escapular',
    'justificativa':
        'Apertar as escápulas em direção à coluna (10 repetições) ativa o '
            'trapézio médio e o rombóide, músculos que ficam alongados e '
            'enfraquecidos na postura de ombros protraídos típica de quem digita '
            'por horas. O fortalecimento desses músculos melhora a centralização '
            'da cabeça do úmero na glenoide, reduzindo o impacto subacromial '
            '(Ludewig & Cook, 2000).',
  },
  {
    'sintoma': 'Dor nos Ombros',
    'titulo': 'Alongamento do Peitoral na Porta',
    'justificativa':
        'Apoiar os antebraços nas laterais de uma porta e avançar o corpo '
            'levemente alonga o peitoral maior e menor. Músculos peitorais '
            'encurtados puxam os ombros para frente (anteriorização), criando '
            'tensão rotacional na articulação glenoumeral. O alongamento '
            'estático reverte essa tração em 3–4 semanas de prática regular '
            '(Page, 2012).',
  },
  {
    'sintoma': 'Dor nos Ombros',
    'titulo': 'Rotação Externa com Elástico',
    'justificativa':
        'O manguito rotador — especialmente o infraespinhal e o redondo menor '
            '— é responsável por estabilizar o ombro durante movimentos de '
            'digitação. A fraqueza desses músculos está diretamente associada à '
            'síndrome do impacto subacromial. Exercícios de rotação externa com '
            'resistência leve aumentam a força do manguito e diminuem a dor em '
            '8 semanas (Başkurt et al., 2011).',
  },

  // ─────────────────────────────────────────────
  // DOR NAS COSTAS (LOMBAR)
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Dor nas Costas',
    'titulo': 'Posição do Gato-Vaca (Cat-Cow)',
    'justificativa':
        'A flexão e extensão alternadas da coluna em apoio de quatro membros '
            'mobiliza os discos intervertebrais, bombeando nutrientes via difusão '
            '(discos avasculares dependem de movimentação). Também alonga '
            'erétores da espinha e o músculo iliopsoas, responsáveis por grande '
            'parte da dor lombar em sedentários (McGill, 2007).',
  },
  {
    'sintoma': 'Dor nas Costas',
    'titulo': 'Ponte Glútea (Hip Bridge)',
    'justificativa':
        'Deitar de costas com joelhos dobrados e elevar o quadril ativa '
            'glúteo máximo e médio — músculos que, quando fracos, sobrecarregam '
            'a lombar ao longo do dia. O glúteo máximo é o principal extensor '
            'do quadril e, quando atrofiado pelo sentar prolongado (inibição '
            'recíproca), transfere tensão para os paravertebrais '
            '(Sahrmann, 2002).',
  },
  {
    'sintoma': 'Dor nas Costas',
    'titulo': 'Levantamento e Alongamento (Stand & Stretch)',
    'justificativa':
        'Permanecer sentado por mais de 30 minutos aumenta a pressão '
            'intradiscal lombar em até 40% em relação à posição em pé. '
            'Levantar e realizar uma extensão lombar suave (mãos na lombar, '
            'arqueamento leve) descomprime os discos e ativa a circulação '
            'nos tecidos paravertebrais, reduzindo o acúmulo de metabólitos '
            'álgicos (Nachemson, 1981).',
  },

  // ─────────────────────────────────────────────
  // FADIGA OCULAR (VISTA CANSADA)
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Fadiga Ocular',
    'titulo': 'Regra 20-20-20',
    'justificativa':
        'A cada 20 minutos de tela, olhar para um ponto a 20 pés (~6 metros) '
            'por 20 segundos relaxa o músculo ciliar do cristalino, que fica '
            'em espasmo de acomodação durante foco próximo prolongado. '
            'Esta técnica reduz significativamente sintomas de Computer Vision '
            'Syndrome (CVS), como ardência, visão turva e cefaleia '
            '(American Optometric Association, 2021).',
  },
  {
    'sintoma': 'Fadiga Ocular',
    'titulo': 'Palming (Cobertura dos Olhos)',
    'justificativa':
        'Esfregar as palmas das mãos até aquecê-las e cobrir suavemente '
            'os olhos fechados por 60 segundos bloqueia qualquer estímulo '
            'luminoso, permitindo que os fotorreceptores retinianos (cones e '
            'bastonetes) se recuperem da fadiga fototóxica causada pela '
            'exposição contínua à luz azul de telas LED (Sheppard & Wolffsohn, '
            '2018).',
  },
  {
    'sintoma': 'Fadiga Ocular',
    'titulo': 'Piscar Consciente (10 repetições)',
    'justificativa':
        'Ao focar em telas, a taxa de piscamento cai de ~15/min para '
            '~5/min, reduzindo a distribuição de lágrima e causando síndrome '
            'do olho seco. Piscar conscientemente 10 vezes de forma completa '
            'redistribui o filme lacrimal sobre a córnea, restaurando a '
            'superfície ocular e aliviando a sensação de areia nos olhos '
            '(Porcar et al., 2016).',
  },

  // ─────────────────────────────────────────────
  // SEDENTARISMO / TEMPO DE TELA EXCESSIVO
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Tempo de Tela Excessivo',
    'titulo': 'Pausa Ativa de 5 Minutos',
    'justificativa':
        'Microinterrupções de 5 minutos a cada hora de trabalho sentado '
            'reduzem a glicemia pós-prandial em 24% e melhoram a sensibilidade '
            'à insulina. O comportamento sedentário prolongado suprime a '
            'atividade da lipoproteína lipase muscular, enzima essencial para '
            'o metabolismo de triglicerídeos. Pausas curtas e frequentes são '
            'superiores a uma sessão longa de exercício ao final do dia para '
            'reverter esses efeitos metabólicos (Dunstan et al., 2012).',
  },
  {
    'sintoma': 'Tempo de Tela Excessivo',
    'titulo': 'Agachamento Livre (10 repetições)',
    'justificativa':
        'O agachamento é um padrão de movimento fundamental que ativa '
            'simultaneamente quadríceps, glúteos e core. Executar 10 '
            'repetições a cada 60 minutos interrompe o sedentarismo, ativa '
            'GLUT-4 nos músculos das pernas (facilitando captação de glicose '
            'sem insulina) e estimula o retorno venoso dos membros inferiores, '
            'prevenindo trombose venosa profunda associada ao sentar prolongado '
            '(Hamilton et al., 2007).',
  },
  {
    'sintoma': 'Tempo de Tela Excessivo',
    'titulo': 'Técnica Pomodoro + Movimento',
    'justificativa':
        'Vincular a pausa de 5 minutos do Pomodoro (25 min foco / 5 min '
            'pausa) a um movimento físico cria um gatilho comportamental que '
            'aumenta a adesão ao longo do dia. A combinação de blocos de foco '
            'com recompensas motoras também potencializa a liberação de '
            'dopamina no núcleo accumbens, melhorando a motivação e o estado '
            'de humor nas sessões seguintes (Cirillo, 2006; Ratey, 2008).',
  },

  // ─────────────────────────────────────────────
  // CEFALEIA (DOR DE CABEÇA)
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Dor de Cabeça',
    'titulo': 'Massagem nos Pontos de Pressão da Cabeça',
    'justificativa':
        'Pressão circular suave nas têmporas, base do crânio (osso occipital) '
            'e entre as sobrancelhas estimula receptores cutâneos que inibem '
            'a transmissão de dor via interneurônios inibitórios na medula '
            'espinhal (gate control). A massagem também promove vasodilatação '
            'local, aliviando cefaleia tensional causada por vasoconstrição '
            'de vasos pericranianos (Moraska & Chandler, 2009).',
  },
  {
    'sintoma': 'Dor de Cabeça',
    'titulo': 'Hidratação Imediata (500 ml)',
    'justificativa':
        'A desidratação leve (perda de apenas 1–2% do peso corporal em água) '
            'já causa redução do volume plasmático, aumentando a viscosidade '
            'sanguínea e diminuindo a perfusão cerebral. Isso aciona '
            'mecanorreceptores nas artérias cerebrais que geram dor. '
            'A ingestão de 500 ml de água alivia cefaleia por desidratação '
            'em 30 minutos em 75% dos casos (Blau et al., 2004).',
  },
  {
    'sintoma': 'Dor de Cabeça',
    'titulo': 'Alongamento do Trapézio Superior',
    'justificativa':
        'O trapézio superior hiperativo e encurtado é a principal fonte '
            'de cefaleia tensional tipo "capacete". Inclinar a cabeça '
            'lateralmente enquanto a mão oposta traciona o ombro para baixo '
            'alonga esse músculo, reduzindo os pontos de gatilho (trigger '
            'points) que irradiam dor para o crânio e têmporas '
            '(Simons et al., 1999).',
  },

  // ─────────────────────────────────────────────
  // INSÔNIA / DIFICULDADE PARA DORMIR
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Insônia',
    'titulo': 'Relaxamento Muscular Progressivo de Jacobson',
    'justificativa':
        'Contrair e relaxar progressivamente grupos musculares (da perna '
            'ao rosto) reduz a tensão muscular residual e diminui a atividade '
            'do sistema nervoso simpático antes de dormir. A técnica '
            'aumenta a produção de GABA (principal neurotransmissor inibitório) '
            'e reduz o cortisol noturno, facilitando a transição para o sono '
            'NREM profundo (Jacobson, 1938; Lolak et al., 2008).',
  },
  {
    'sintoma': 'Insônia',
    'titulo': 'Pausa de Telas 1h Antes de Dormir',
    'justificativa':
        'A luz azul (comprimento de onda 450–490 nm) das telas suprime a '
            'produção de melatonina pela glândula pineal em até 85%, atrasando '
            'o início do sono em média 1,5 hora. Substituir telas por leitura '
            'em papel ou luz âmbar nas últimas horas permite que o ritmo '
            'circadiano natural restabeleça o pico de melatonina por volta '
            'das 21h–22h (Chang et al., 2015).',
  },
  {
    'sintoma': 'Insônia',
    'titulo': 'Caminhada Leve ao Entardecer',
    'justificativa':
        'Exercício aeróbico moderado realizado 4–6 horas antes de dormir '
            'eleva a temperatura corporal central durante o esforço; a queda '
            'subsequente dessa temperatura é um sinal fisiológico que induz '
            'o sono. Estudos mostram aumento de 15% no tempo total de sono '
            'profundo (slow-wave sleep) em adultos que praticam caminhada '
            'regular ao entardecer (Youngstedt et al., 1997).',
  },

  // ─────────────────────────────────────────────
  // ESTRESSE
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Estresse',
    'titulo': 'Yoga ou Alongamento Global (10 min)',
    'justificativa': 'Sequências de yoga de baixa intensidade ativam o sistema '
        'parassimpático e reduzem os níveis de cortisol salivar de forma '
        'estatisticamente significativa após uma única sessão de 10 minutos. '
        'A combinação de movimentos lentos, foco na respiração e propriocepção '
        'atualiza o "mapa corporal" no córtex somatossensorial, reduzindo '
        'a resposta exagerada ao estresse (Pascoe & Bauer, 2015).',
  },
  {
    'sintoma': 'Estresse',
    'titulo': 'Escrita Reflexiva (Journaling)',
    'justificativa':
        'Escrever por 10 minutos sobre preocupações descarrega a memória '
            'de trabalho do córtex pré-frontal, liberando capacidade cognitiva '
            'e reduzindo a ruminação. O journaling expressivo diminui '
            'biomarcadores de estresse (interleucina-6 e cortisol) e melhora '
            'a função imunológica mensurada semanas depois '
            '(Pennebaker & Smyth, 2016).',
  },
  {
    'sintoma': 'Estresse',
    'titulo': 'Exposição Solar (10 min)',
    'justificativa':
        'A luz solar estimula a síntese de serotonina no nervo ocular '
            'dorsal, independentemente da vitamina D. Dez minutos de exposição '
            'solar diurna aumentam a densidade de receptores serotoninérgicos '
            'no córtex pré-frontal, melhorando a regulação emocional e '
            'reduzindo a reatividade ao estresse (Lambert et al., 2002).',
  },

  // ─────────────────────────────────────────────
  // DOR NOS PULSOS / SÍNDROME DO TÚNEL DO CARPO
  // ─────────────────────────────────────────────
  {
    'sintoma': 'Dor nos Pulsos',
    'titulo': 'Alongamento de Flexores do Punho',
    'justificativa':
        'Estender o braço à frente com a palma para cima e puxar os '
            'dedos suavemente em direção ao corpo alonga os músculos '
            'flexores do carpo e o flexor longo do polegar. Esses músculos, '
            'encurtados pela digitação repetitiva, aumentam a pressão dentro '
            'do túnel do carpo, comprimindo o nervo mediano. O alongamento '
            'regular reduz essa pressão e previne a síndrome '
            '(Rozmaryn et al., 1998).',
  },
  {
    'sintoma': 'Dor nos Pulsos',
    'titulo': 'Rotação de Pulsos (10 círculos)',
    'justificativa':
        'Movimentos circulares do pulso nas duas direções mobilizam as '
            '8 ossos do carpo e lubrificam as articulações radiocarpal '
            'e mediocárpica com líquido sinovial. A mobilização articular '
            'ativa mecanorreceptores articulares tipo Ruffini e Pacini que '
            'inibem a dor por competição no corno dorsal medular '
            '(Kaltenborn, 2011).',
  },
];
