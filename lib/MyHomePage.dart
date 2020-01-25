import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // drawer start
  Widget _drawer() => 
  Drawer(
    child: ListView(
      children: <Widget>[

        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                )
              ),

              Container(height: 8,),

              Text(
                "Om Prakash",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "@omprakash",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

            ],
          ),
        ),

        ListTile(
          leading: Icon(Icons.person_outline),
          title: Text("Profile"),
        ),

        ListTile(
          leading: Icon(Icons.list),
          title: Text("Lists"),
        ),

        ListTile(
          leading: Icon(Icons.message),
          title: Text("Topics"),
        ),

        ListTile(
          leading: Icon(Icons.bookmark_border),
          title: Text("Bookmarks"),
        ),

        ListTile(
          leading: Icon(FontAwesomeIcons.bolt),
          title: Text("Moments"),
        ),

        ListTile(
          title: Text("Setting and privacy"),
        ),

        ListTile(
          title: Text("Help Center"),
        ),

        Divider(),

        ListTile(
          leading: Icon(
            FontAwesomeIcons.lightbulb,
            color: Colors.blue,
          ),
          trailing: Icon(
            FontAwesomeIcons.qrcode,
            color: Colors.blue,
          ),
        ),



      ],
    ),
  );
  // drawer end

  // bottom navigation bar start
  Widget _bottomNavigationBar() => 
  BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Container(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Container(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_none),
        title: Container(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.email),
        title: Container(),
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Theme.of(context).accentColor,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    iconSize: 32,
    onTap: _onItemTapped,
    type: BottomNavigationBarType.fixed,
  );
  // bottom navigation bar end

  Widget _listItem() => 
  Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    margin: EdgeInsets.only(top: 16, bottom: 8),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('https://images.pexels.com/photos/2117283/pexels-photo-2117283.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ),

        Container(width: 8,),

        Flexible(
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Text(
                    'Italo Melo ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '@Italo Melo . 30m',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),

              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),

              Container(height: 8,),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image(
                        height: 150,
                        width: double.infinity,
                        image: NetworkImage('https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(height: 8,),

              Container(
                margin: EdgeInsets.only(top: 8, right: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Icon(
                      Icons.chat_bubble_outline,
                      size: 18,
                      color: Colors.black45,
                    ),
                    
                    Icon(
                      Icons.repeat,
                      size: 18,
                      color: Colors.black45,
                    ),

                    Icon(
                      Icons.favorite_border,
                      size: 18,
                      color: Colors.black45,
                    ),
                    
                    Icon(
                      Icons.share,
                      size: 18,
                      color: Colors.black45,
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  );
  
  // body start
  Widget _body() 
  {
    return ListView.separated(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) => this._listItem(),
      separatorBuilder: (context, index) => Divider(),
    );
  }
  // body end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.star_border,
            ),
            onPressed: () {},
          )

        ],
      ),
      drawer: _drawer(),
      body: this._body(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          FontAwesomeIcons.feather,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: this._bottomNavigationBar()
    );
  }
}