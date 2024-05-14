import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_routine_manager/Data/usuario.dart';
import 'package:game_routine_manager/Data/juego.dart';

const String assetname = 'lib/Images/usuario.svg';
Widget svgIcon =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetname1 = 'lib/Images/melee.svg';
Widget svgImage1 =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);
const String assetname2 = 'lib/Images/Apex-Legends.svg';
Widget svgImage2 =
    SvgPicture.asset(assetname, semanticsLabel: 'Logo', height: 24, width: 24);

Usuario user = Usuario('GamerGuy1');
Juego selectedGame = Juego('', 0, '');

void main() {
  Juego game = Juego('Smash Bros Melee', 2001, 'Nintendo');
  game.addRoutine('practice wavedashing');
  game.addRoutine('edgeguard training');
  user.addGame(game);
  game = Juego('Apex Legends', 2019, 'Respawn Entertainment');
  game.addRoutine('get champion twice');
  user.addGame(game);

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            SizedBox(width: 100, height: 40),
            ElevatedButton(
              onPressed: _goGameList,
              child: Text(
                'Lista de Juegos',
              ),
              style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
            ),
            SizedBox(width: 100, height: 40),
            ElevatedButton(
              onPressed: _goRoutineList,
              child: Text(
                'Lista de Rutinas',
              ),
              style: ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goUserPage,
        tooltip: 'Increment',
        child: svgIcon,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _goGameList() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => GameList(
        title: user.name + '´Games',
      ),
    ));
  }

  void _goRoutineList() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => RoutineList(),
    ));
  }

  void _goUserPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => UserDetail(),
    ));
  }

  MaterialStateProperty<Size> buttonSize =
      MaterialStatePropertyAll(Size(400, 80));

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
                Text(user.name + '´s Games'),
                ElevatedButton(
                  onPressed: () => _goGameDetail(1),
                  child: Text(
                    user.games[1].name,
                  ),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                ),
                SizedBox(width: 100, height: 10),
                ElevatedButton(
                  onPressed: () => _goGameDetail(2),
                  child: Text(
                    user.games[2].name,
                  ),
                  style:
                      ButtonStyle(fixedSize: buttonSize, shape: buttonBorder),
                ),
              ],
            )
          ]),
        ));
  }

  MaterialStateProperty<Size> buttonSize =
      MaterialStatePropertyAll(Size(400, 80));

  MaterialStateProperty<RoundedRectangleBorder> buttonBorder =
      MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));

  void _goGameDetail(int index) {
    selectedGame = user.games[index];
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => GameDetail(),
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
            )
          ]),
        ));
  }
}

class UserDetail extends StatelessWidget {
  UserDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
          child: Column(children: [
            const Text('Usuario: GamerGuy1'),
            SizedBox(width: 100, height: 100),
            const Text('Friend List:')
          ]),
        ));
  }
}

class GameDetail extends StatelessWidget {
  const GameDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
            child: Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          selectedGame.name,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          selectedGame.developer +
                              '(' +
                              selectedGame.year.toString() +
                              ')',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class PlayerDetail extends StatelessWidget {
  const PlayerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(
          child: Column(children: []),
        ));
  }
}
