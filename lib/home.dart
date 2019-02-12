import 'package:flutter/material.dart';
import 'package:videos/movies_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  final _widgetOptions = [
    new MoviesList(),
    Text("Hello"),
    Text("I'm love Flutter <3")
  ];

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(
        title: Text("Cirugía Veterinaria"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: (){
              
            },
          )
        ],
      ),
      drawer: Drawer(
        child: _getDrawer(context),
      ),
      body: PageView(
        children: <Widget>[
          _widgetOptions.elementAt(_selectedIndex)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _getItemsFooter(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.lightBlue[900],
      ),
   );
  }

  /**
   * Load the items in te navigationDrawerMenu
   */
  Drawer _getDrawer(BuildContext context){
    ListView listView = new ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text('email@email.com'),
          accountName: Text('Usuairo'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pickaface.net/gallery/avatar/cavneb565b7bd529c1d.png'),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('http://k45.kn3.net/C5588D0FE.jpg'),
              fit: BoxFit.fitWidth
            )
          ),
        ),
        _getItems(new Icon(Icons.people, color: Colors.white), "Perfil", "/updateStudent"),
        Divider(height: 3.0,),
        _getItems(new Icon(Icons.picture_as_pdf, color: Colors.white), "Carga academica", "carga"),
        Divider(height: 3.0,),
        _getItems(new Icon(Icons.more, color: Colors.white,), "Inscribir Materia", "/pendingMatter"),        
      ],
    );
    return new Drawer(
      child: Container(
        color: Colors.blueGrey[300],
        child: listView,
      ),
    );
  }

  ListTile _getItems(Icon icon, String title, String route){
    return ListTile(
      leading: icon,
      title: Text(title, style: TextStyle(color: Colors.white),),
      onTap: (){
        setState(() {
           
        });
      },
    );
  }

  /**
   * Load the itmes in the bottomNavigationBar
   */
  List<BottomNavigationBarItem> _getItemsFooter(){
    return [
      new BottomNavigationBarItem(
        icon: Icon(Icons.thumb_up),
        title: Text('Populares'),
      ),
      new BottomNavigationBarItem(
        icon: Icon(Icons.update),
        title: Text('Proximamente'),
      ),
      new BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('Mejor valoradas'),
      )
    ];
  }

  void _onItemTapped(int index){
    setState(() {
          _selectedIndex = index;
        });
  }

}