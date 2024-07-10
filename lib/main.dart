import 'dart:ffi' hide Size;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_routine_manager/Data/objetivo.dart';
import 'package:game_routine_manager/Data/rutina.dart';
import 'package:game_routine_manager/Data/usuario.dart';
import 'package:game_routine_manager/Data/juego.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

const String assetname = 'lib/Images/usuario.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetadd = 'lib/Images/plus.svg';
Widget svgIcon1 =
    SvgPicture.asset(assetadd, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetadd1 = 'lib/Images/check.svg';
Widget svgIcon2 =
    SvgPicture.asset(assetadd1, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetadd2 = 'lib/Images/refresh.svg';
Widget svgIcon3 =
    SvgPicture.asset(assetadd2, semanticsLabel: 'Logo', height: 24, width: 24);

Widget svgAdd =
    SvgPicture.asset(assetadd, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetname1 = 'lib/Images/melee.svg';
Widget svgImage1 = SvgPicture.asset(assetname1,
    semanticsLabel: 'Logo', height: 150, width: 200);
const String assetname2 = 'lib/Images/Apex-Legends.svg';
Widget svgImage2 = SvgPicture.asset(assetname2,
    semanticsLabel: 'Logo', height: 150, width: 200);
const String assetname3 = 'lib/Images/mahjongsoul.svg';
Widget svgImage3 = SvgPicture.asset(assetname3,
    semanticsLabel: 'Logo', height: 150, width: 200);
const String assetname4 = 'lib/Images/marvelsnap.svg';
Widget svgImage4 = SvgPicture.asset(assetname4,
    semanticsLabel: 'Logo', height: 150, width: 200);
const String pfp1 = 'lib/Images/UserPFP.png';
const String pfp2 = 'lib/Images/foxPFP.png';
const String pfp3 = 'lib/Images/HaloPFP.png';
Widget svgPFP1 = Image.asset(pfp1, height: 200, width: 200);
Widget svgPFP2 = Image.asset(pfp2, height: 200, width: 200);
Widget svgPFP3 = Image.asset(pfp3, height: 200, width: 200);
const String icon1 = 'lib/Images/meleeIcon.png';
const String icon2 = 'lib/Images/ApexIcon.png';
Widget pngicon1 = Image.asset(icon1, height: 80, width: 80);
Widget pngicon2 = Image.asset(icon2, height: 80, width: 80);

Usuario user = Usuario('GamerDan');
List<Juego> games = [
  Juego('Smash Bros Melee', 2001, 'Nintendo', 'Juego de Pelea'),
  Juego('Apex Legends', 2019, 'Respawn Entertainment', 'FPS'),
  Juego('Mahjong Soul', 2018, 'Yostar', 'Mahjong'),
  Juego('Marvel Snap', 2022, 'Nuverse', 'Juego de Cartas')
];
List<Rutina> routines = [
  Rutina('(Easy) Juega partidas.'),
  Rutina('(Medium) Practicar movimiento y control.'),
  Rutina('(Hard) Gana partidas online.'),
  Rutina('(Easy) Jugar Partidas'),
  Rutina('(Medium) Realiza 30 kills'),
  Rutina('(Hard) Rutina dificil en partidas'),
  Rutina('(Easy) Juega 2 hanchan'),
  Rutina('(Medium) Practica de juego defensivo'),
  Rutina('(Hard) Gana partidas de alto nivel'),
  Rutina('(Easy) Juega partidas'),
  Rutina('(Medium) Juega en Conquest'),
  Rutina('(Hard) Gana en Conquest')
];
List<int> activeRoutineIndex = [
  -1,
  -1,
  -1,
  -1,
  -1,
  -1,
  -1,
  -1
]; //-1 as to not match any routine numbers,
int selectedGame = 0;
List<int> selectedRoutine = [0, 0];

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  routines[0].addObjective('Jugar 5 partidas', 5);
  routines[1].addObjective('Practicar wavedashing', 0);
  routines[1].addObjective('Derrotar 3 oponentes usando edgeguarding', 3);
  routines[1].addObjective(
      'Ataca 5 veces exitosamente usando un spike attack en una partida', 0);
  routines[2].addObjective('Gana 6 partidas online en Slippy', 6);
  games[0].addRoutine(routines[0]);
  games[0].addRoutine(routines[1]);
  games[0].addRoutine(routines[2]);
  routines[3].addObjective('Juega 3 partidas', 3);
  routines[4].addObjective('Realiza 30 kills', 30);
  routines[5].addObjective('Realiza 3000 de daño en una partida', 0);
  routines[5].addObjective('Realiza 20 kills', 20);
  routines[5].addObjective('Consigue champion en 1 partida', 0);
  games[1].addRoutine(routines[3]);
  games[1].addRoutine(routines[4]);
  games[1].addRoutine(routines[5]);
  routines[6].addObjective('Juega dos partidas de este-sur', 2);
  routines[7].addObjective('Juega 12 manos sin perder por Ron', 12);
  routines[8]
      .addObjective('Saca primer lugar 2 veces en Gold Room o superior', 2);
  games[2].addRoutine(routines[6]);
  games[2].addRoutine(routines[7]);
  games[2].addRoutine(routines[8]);
  routines[9].addObjective('Juega 5 partidas', 5);
  routines[10].addObjective('Gana 3 partidas en Conquest', 3);
  routines[11].addObjective('Completa el gauntlet de Infinity en Conquest', 0);
  games[3].addRoutine(routines[9]);
  games[3].addRoutine(routines[10]);
  games[3].addRoutine(routines[11]);
  user.addGame(games[0]);
  user.addGame(games[1]);
  user.addGame(games[2]);
  user.addGame(games[3]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("Build MyApp");
    return MaterialApp(
      title: 'Game Routine Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: SizedBox(
              width: 350,
              height: 50,
              child: Text(
                'Manager de Rutinas',
                textScaler: TextScaler.linear(2),
                textAlign: TextAlign.center,
              ))),
      drawer: Drawer(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
              width: 150,
            ),
            ElevatedButton(
              onPressed: _goGameList,
              style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
              child: const Text(
                'Lista de Juegos',
                textScaler: TextScaler.linear(1.5),
              ),
            ),
            const SizedBox(width: 100, height: 20),
            ElevatedButton(
              onPressed: _goRoutineList,
              style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
              child: const Text(
                'Rutinas activas',
                textScaler: TextScaler.linear(1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goGameList() {
    setState(() {});
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => GameList(
        title: '${user.name}´Games',
      ),
    ));
  }

  void _goRoutineList() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => RoutineList(title: ''),
    ));
  }

  void _goUserPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const UserDetail(),
    ));
  }

  MaterialStateProperty<Size> buttonSize =
      const MaterialStatePropertyAll(Size(400, 80));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));
}

class GameList extends StatefulWidget {
  const GameList({super.key, required this.title});

  final String title;

  @override
  State<GameList> createState() => GameListState();
}

class GameListState extends State<GameList> {
  @override
  Widget build(BuildContext context) {
    context = context;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
          child: Column(children: [
            ListView(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Text('${user.name}´s Games',
                    textScaler: TextScaler.linear(1.5),
                    textAlign: TextAlign.center),
                ElevatedButton(
                  onPressed: () => _goGameDetail(0),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                  child: Text(
                    _getGameName(0),
                  ),
                ),
                const SizedBox(width: 100, height: 10),
                ElevatedButton(
                  onPressed: () => _goGameDetail(1),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                  child: Text(
                    _getGameName(1),
                  ),
                ),
                const SizedBox(width: 100, height: 10),
                ElevatedButton(
                  onPressed: () => _goGameDetail(2),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                  child: Text(
                    _getGameName(2),
                  ),
                ),
                const SizedBox(width: 100, height: 10),
                ElevatedButton(
                  onPressed: () => _goGameDetail(3),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                  child: Text(
                    _getGameName(3),
                  ),
                )
              ],
            )
          ]),
        ));
  }

  MaterialStateProperty<Size> buttonSize =
      const MaterialStatePropertyAll(Size(400, 80));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));

  void _goGameDetail(int index) {
    selectedGame = index;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const GameDetail(title: ''),
    ));
  }

  String _getGameName(int index) {
    print(user.games[index].showName());
    return user.games[index].showName();
  }
}

class RoutineList extends StatefulWidget {
  const RoutineList({super.key, required this.title});

  final String title;
  @override
  State<RoutineList> createState() => RoutineListState();
}

class RoutineListState extends State<RoutineList> {
  List<Widget> _showRoutines() {
    List<Widget> lista = [];
    bool noRoutine = true;
    for (int index in activeRoutineIndex) {
      if (index > -1) {
        noRoutine = false;
      }
    }
    if (noRoutine) {
      print('no routines?');
      lista.add(SizedBox(
          height: 200,
          width: 200,
          child: Text('No se encuentran rutinas activas.')));
      return lista;
    }
    for (int i = 0; i < 4; i++) {
      if (activeRoutineIndex[i * 2] != -1) {
        ElevatedButton eb = ElevatedButton(
            onPressed: () => _goRoutineDetail(
                activeRoutineIndex[i * 2], activeRoutineIndex[i * 2 + 1]),
            style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
            child: Text(user.games[activeRoutineIndex[i * 2]]
                .getRoutineName(activeRoutineIndex[i * 2 + 1])));
        lista.add(eb);
      }
    }
    return lista;
  }

  void _goRoutineDetail(int game, int routine) {
    selectedRoutine = [game, routine];
    Navigator.of(context)
        .push(MaterialPageRoute(
          builder: (context) => RoutineDetail(title: 'Rutina'),
        ))
        .then(
          (value) => setState(() {}),
        );
  }

  MaterialStateProperty<Size> buttonSize =
      const MaterialStatePropertyAll(Size(400, 60));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Column(children: [
          const SizedBox(
              width: 350,
              height: 50,
              child: Text(
                'Rutinas activas: ',
                textScaler: TextScaler.linear(1.5),
                textAlign: TextAlign.center,
              )),
          ListView(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: _showRoutines())
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => 0,
        child: svgAdd,
      ),
    );
  }
}

class UserDetail extends StatelessWidget {
  const UserDetail({super.key});

  Widget _getPFP(int index) {
    if (index == 1) {
      return svgPFP2;
    } else if (index == 2) {
      return svgPFP3;
    } else {
      return svgPFP1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
            child: Column(children: [
          const SizedBox(
              width: 350,
              height: 50,
              child: Text('GamerGuy1',
                  textScaler: TextScaler.linear(2),
                  textAlign: TextAlign.center)),
          _getPFP(0),
          SizedBox(width: 100, height: 20),
          const SizedBox(
              width: 350,
              height: 50,
              child: Text('Juegos',
                  textScaler: TextScaler.linear(2),
                  textAlign: TextAlign.center)),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Spacer(), pngicon1, Spacer(), pngicon2, Spacer()]),
          SizedBox(width: 100, height: 20),
          SizedBox(
              width: 350,
              height: 50,
              child: Text('Rutinas diarias: 0/3',
                  textScaler: TextScaler.linear(2), textAlign: TextAlign.left)),
          SizedBox(
              width: 350,
              height: 50,
              child: Text('Rutinas semanales: 0/0',
                  textScaler: TextScaler.linear(2), textAlign: TextAlign.left)),
        ])));
  }
}

class GameDetail extends StatefulWidget {
  const GameDetail({super.key, required this.title});

  final String title;

  @override
  State<GameDetail> createState() => GameDetailState();
}

class GameDetailState extends State<GameDetail> {
  Widget _gameLogo() {
    switch (selectedGame) {
      case 1:
        return svgImage2;
      case 2:
        return svgImage3;
      case 3:
        return svgImage4;
      default:
        return svgImage1;
    }
  }

  String _gameText(int index) {
    if (index == 1) {
      if (selectedGame == 0)
        return 2001.toString();
      else
        return 2019.toString();
    } else {
      if (selectedGame == 0)
        return 'Nintendo';
      else
        return 'Respawn Entertainment';
    }
  }

  void _goPlayerDetail(int index) {
    selectedGame = index;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const PlayerDetail(),
    ));
  }

  void _goRoutineDetail(int game, int routine) {
    selectedRoutine = [game, routine];
    Navigator.of(context)
        .push(
          MaterialPageRoute(
              builder: (context) => RoutineDetail(title: 'Rutina')),
        )
        .then(
          (value) => setState(() {}),
        );
  }

  Widget _gameRoutines(int juego, int rutina) {
    return ElevatedButton(
        onPressed: () => _goRoutineDetail(juego, rutina),
        style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
        child: Text(user.games[selectedGame].getRoutineName(rutina)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            _gameLogo(),
            Text(user.games[selectedGame].getInfo(0)),
            Text(user.games[selectedGame].getInfo(1)),
            Text(user.games[selectedGame].getInfo(2)),
            const SizedBox(height: 50),
            const SizedBox(
                width: 350,
                height: 50,
                child: Text('Lista de rutinas',
                    textScaler: TextScaler.linear(2),
                    textAlign: TextAlign.left)),
            ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  _gameRoutines(selectedGame, 0),
                  _gameRoutines(selectedGame, 1),
                  _gameRoutines(selectedGame, 2)
                ]),
          ],
        ),
      ),
    );
  }

  MaterialStateProperty<Size> buttonSize =
      const MaterialStatePropertyAll(Size(400, 60));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));
}

class RoutineDetail extends StatefulWidget {
  const RoutineDetail({super.key, required this.title});

  final String title;

  @override
  State<RoutineDetail> createState() => RoutineDetailState();
}

class RoutineDetailState extends State<RoutineDetail> {
  List<Widget> _showObjectives() {
    List<Widget> lista = [];
    int i = 0;
    while (i <
        user.games[selectedGame]
            .getRoutine(selectedRoutine[1])
            .objectiveCount()) {
      Row obj = Row(children: [
        SizedBox(width: 60, height: 70),
        SizedBox(
            width: 250,
            height: 50,
            child: Text(
              user.games[selectedGame].getObjectiveName(selectedRoutine[1], i),
              textAlign: TextAlign.center,
            )),
        getObjectiveProgressButton(i)
        //make icon change and add count or cancel objective
      ]);
      lista.add(obj);
      i++;
    }
    return lista;
  }

  void progressObjective(int index) {
    if (user.games[selectedRoutine[0]]
            .getRoutine(selectedRoutine[1])
            .isActive() ==
        false) {
      return;
    }
    print(user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .getObjective(index)
        .isBinary());
    print(user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .getObjective(index)
        .getProgress());
    if (user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .getObjective(index)
        .isBinary()) {
      if (user.games[selectedRoutine[0]]
          .getRoutine(selectedRoutine[1])
          .getObjective(index)
          .progressCount()) {
        user.games[selectedRoutine[0]]
            .getRoutine(selectedRoutine[1])
            .getObjective(index)
            .clearObjective();
      }
    } else {
      user.games[selectedRoutine[0]]
          .getRoutine(selectedRoutine[1])
          .getObjective(index)
          .clearObjective();
    }
    user.games[selectedRoutine[0]].getRoutine(selectedRoutine[1]).addToHistory(
        user.games[selectedRoutine[0]]
            .getObjectiveName(selectedRoutine[1], index),
        'Today');
    user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .checkObjectiveCompletion();
    setState(() {});
  }

  void cancelObjective(int index) {
    user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .getObjective(index)
        .resetObjective();
    setState(() {});
  }

  Widget getObjectiveProgressButton(int index) {
    IconButton ib = IconButton(
      onPressed: () => progressObjective(index),
      style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
      icon: svgIcon1,
    );
    ;
    if (user.games[selectedRoutine[0]]
            .getRoutine(selectedRoutine[1])
            .getObjective(index)
            .isBinary() ==
        false) {
      ib = IconButton(
        onPressed: () => progressObjective(index),
        style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
        icon: svgIcon2,
      );
    }
    if (user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .getObjective(index)
        .isComplete()) {
      ib = IconButton(
          onPressed: () => cancelObjective(index),
          style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
          icon: svgIcon3);
    }
    return ib;
  }

  Widget _showActive() {
    if (user.games[selectedRoutine[0]]
            .getRoutine(selectedRoutine[1])
            .isActive() ==
        false) {
      return SizedBox(height: 50, width: 180);
    } else {
      return Container(
          width: 180,
          height: 80,
          color: Color.fromARGB(255, 233, 117, 88),
          child: Align(
            child: Text('Active'), //make bigger
            alignment: Alignment.center,
          ));
    }
  }

  void startRoutine() {
    //turns off other routines first, only one routine per game active at once
    user.games[selectedRoutine[0]].getRoutine(0).activate(false);
    user.games[selectedRoutine[0]].getRoutine(1).activate(false);
    user.games[selectedRoutine[0]].getRoutine(2).activate(false);
    //activate the actual one
    user.games[selectedGame].getRoutine(selectedRoutine[1]).activate(true);
    setState(() {});
    activeRoutineIndex[selectedRoutine[0] * 2] = selectedGame;
    activeRoutineIndex[selectedRoutine[0] * 2 + 1] = selectedRoutine[1];
    //need to add it appearing on the main screen and removing the other one from there
  }

  void cancelRoutine() {
    user.games[selectedRoutine[0]]
        .getRoutine(selectedRoutine[1])
        .activate(false);
    setState(() {});
    activeRoutineIndex[selectedRoutine[0] * 2] = -1;
    activeRoutineIndex[selectedRoutine[0] * 2 + 1] = -1;
  }

  void placeholder() {}

  Widget _activateButton() {
    if (user.games[selectedRoutine[0]]
            .getRoutine(selectedRoutine[1])
            .isActive() ==
        false) {
      return ElevatedButton(
          onPressed: startRoutine,
          child: Container(
              width: 200,
              height: 80,
              color: const Color.fromARGB(255, 183, 234, 125),
              child: Align(
                child: Text('Empezar rutina'), //make bigger
                alignment: Alignment.center,
              )));
    } else {
      return ElevatedButton(
          onPressed: cancelRoutine,
          child: Container(
              width: 200,
              height: 80,
              color: const Color.fromARGB(255, 229, 161, 183),
              child: Align(
                child: Text('Cancelar rutina'), //make bigger
                alignment: Alignment.center,
              )));
    }
  }

  void _goHistoryDetail() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HistoryDetail(),
    ));
  }

  MaterialStateProperty<Size> buttonSize =
      const MaterialStatePropertyAll(Size(55, 55));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));

  @override
  Widget build(BuildContext context) {
    //print(selectedRoutine);
    //print(activeRoutineIndex);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Rutina'),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(width: 400, height: 30),
            SizedBox(
                width: 400,
                height: 100,
                child: Text(
                    user.games[selectedRoutine[0]]
                        .getRoutineName(selectedRoutine[1]),
                    textScaler: TextScaler.linear(2),
                    textAlign: TextAlign.center)),
            _showActive(),
            Column(children: _showObjectives()),
            ElevatedButton(
                onPressed: _goHistoryDetail,
                child: Container(
                    width: 140,
                    height: 60,
                    child: Align(
                      child: Text('Historial'), //make bigger
                      alignment: Alignment.center,
                    ))),
            _activateButton()
          ],
        )));
  }
}

class PlayerDetail extends StatelessWidget {
  const PlayerDetail({super.key});

  Widget _getPFP(int index) {
    print(selectedGame);
    if (index == 0) {
      return svgPFP2;
    } else if (index == 1) {
      return svgPFP3;
    } else {
      return svgPFP1;
    }
  }

  Widget _getRank() {
    if (selectedGame == 0)
      return Text('Top 8 USA player', textScaler: TextScaler.linear(2));
    else
      return Text('Diamond 3 Rank', textScaler: TextScaler.linear(2));
  }

  String _getPlayerName() {
    if (selectedGame == 0)
      return 'FoxChamp07';
    else
      return 'GunnerMania';
  }

  List<Widget> _friendList() {
    if (selectedGame == 0) {
      return ([
        SizedBox(
            width: 350,
            height: 50,
            child: Text('Royplosion',
                textScaler: TextScaler.linear(1.5), textAlign: TextAlign.left)),
        SizedBox(
            width: 350,
            height: 50,
            child: Text('Yotsugi600',
                textScaler: TextScaler.linear(1.5), textAlign: TextAlign.left))
      ]);
    } else {
      return ([
        SizedBox(
            width: 350,
            height: 50,
            child: Text('Aluidon',
                textScaler: TextScaler.linear(1.5), textAlign: TextAlign.left)),
        SizedBox(
            width: 350,
            height: 50,
            child: Text('BDQ',
                textScaler: TextScaler.linear(1.5), textAlign: TextAlign.left)),
        SizedBox(
            width: 350,
            height: 50,
            child: Text('OkoshiX',
                textScaler: TextScaler.linear(1.5), textAlign: TextAlign.left))
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                  width: 400,
                  height: 50,
                  child: Text(_getPlayerName(),
                      textScaler: TextScaler.linear(2),
                      textAlign: TextAlign.center)),
              _getPFP(selectedGame),
              _getRank(),
              SizedBox(
                  width: 400,
                  height: 50,
                  child: Text('Lista de Amigos',
                      textScaler: TextScaler.linear(2),
                      textAlign: TextAlign.left)),
              ListView(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: _friendList()),
            ],
          ),
        ));
  }
}

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(child: Column(children: getHistorySheet())));
  }

  List<Widget> getHistorySheet() {
    List<Widget> lista = [];
    int i = 0;
    Rutina rut = user.games[selectedRoutine[0]].getRoutine(selectedRoutine[1]);
    while (i < rut.historyCount()) {
      Row r = Row(
        children: [
          SizedBox(height: 80, width: 50),
          SizedBox(height: 80, width: 160, child: Text(rut.historial[i])),
          SizedBox(height: 80, width: 160, child: Text(rut.historial[i + 1]))
        ],
      );
      lista.add(r);
      i++;
      i++;
    }

    return lista;
  }
}
