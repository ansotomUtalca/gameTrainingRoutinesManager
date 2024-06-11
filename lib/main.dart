import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_routine_manager/Data/usuario.dart';
import 'package:game_routine_manager/Data/juego.dart';

const String assetname = 'lib/Images/usuario.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetadd = 'lib/Images/plus.svg';
Widget svgAdd =
    SvgPicture.asset(assetadd, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetname1 = 'lib/Images/melee.svg';
Widget svgImage1 = SvgPicture.asset(assetname1,
    semanticsLabel: 'Logo', height: 150, width: 200);
const String assetname2 = 'lib/Images/Apex-Legends.svg';
Widget svgImage2 = SvgPicture.asset(assetname2,
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

Usuario user = Usuario('GamerGuy1');
int selectedGame = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
                width: 350,
                height: 50,
                child: Text(
                  'Manager de Rutinas',
                  textScaler: TextScaler.linear(2),
                  textAlign: TextAlign.center,
                )),
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
                'Lista de Rutinas',
                textScaler: TextScaler.linear(1.5),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goUserPage,
        tooltip: 'Increment',
        child: svgIcon,
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
      builder: (context) => const RoutineList(),
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
                  child: const Text(
                    'Super Smash Bros Melee',
                  ),
                ),
                const SizedBox(width: 100, height: 10),
                ElevatedButton(
                  onPressed: () => _goGameDetail(1),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                  child: const Text(
                    'Apex Legends',
                  ),
                ),
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
    if (index == 0)
      selectedGame = 0;
    else if (index == 1) selectedGame = 1;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const GameDetail(title: ''),
    ));
  }
}

class RoutineList extends StatelessWidget {
  const RoutineList({super.key});

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
                'Rutinas',
                textScaler: TextScaler.linear(2),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
              width: 350,
              height: 50,
              child: Text(
                'Rutinas por cumplir: ',
                textScaler: TextScaler.linear(1.5),
                textAlign: TextAlign.left,
              )),
          ListView(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  height: 50,
                  color: Colors.blueGrey[200],
                  child: const Center(child: Text('practice wavedashing'))),
              Container(
                  height: 50,
                  color: Colors.blueGrey[100],
                  child: const Center(child: Text('edgeguard training'))),
              Container(
                  height: 50,
                  color: Colors.blueGrey[200],
                  child: const Center(child: Text('get champion twice'))),
            ],
          ),
          const SizedBox(
              width: 350,
              height: 50,
              child: Text(
                'Rutinas cumplidas: ',
                textScaler: TextScaler.linear(1.5),
                textAlign: TextAlign.left,
              )),
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
              child: Text('User Name',
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
    if (selectedGame == 0) {
      return svgImage1;
    } else if (selectedGame == 1)
      return svgImage2;
    else
      return svgIcon;
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

  List<Widget> _gameRoutines(int index) {
    if (index == 0) {
      return [
        Container(
            height: 50,
            color: Colors.blueGrey[200],
            child: const Center(child: Text('practice wavedashing'))),
        Container(
            height: 50,
            color: Colors.blueGrey[100],
            child: const Center(child: Text('edgeguard training')))
      ];
    } else if (index == 1)
      return [
        Container(
            height: 50,
            color: Colors.blueGrey[200],
            child: const Center(child: Text('get champion twice')))
      ];
    else
      return [Container()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            _gameLogo(),
            Text(_gameText(1)),
            Text(_gameText(2)),
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
                children: _gameRoutines(selectedGame)),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: IconButton(
              onPressed: () => _goPlayerDetail(selectedGame), icon: svgIcon)),
    );
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
