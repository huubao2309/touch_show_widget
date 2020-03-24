part of lib_use;

class PopoverDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PopoverDemoState();
  }
}

class PopoverDemoState extends State<PopoverDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Popover'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildPopoverButton("Cake", "Donut"),
                _buildPopoverButton("Fruit", "Orange"),
                _buildPopoverButton("Fast Food", "Hamburger")
              ],
            ),
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  _buildPopoverButton("Milk", "Vinamilk"),
                  _buildPopoverButton("Coffee", "Highland"),
                  _buildPopoverButton("Tea", "Phuc Long")
                ]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildPopoverButton("Game", "LOL"),
                _buildPopoverButton("Software", "Photoshop"),
                _buildPopoverButton("OS", "Windows")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPopoverButton(String btnTitle, String bodyMessage) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: CupertinoPopoverButton(
            child: Container(
              width: 80.0,
              height: 40.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 5.0)
                  ]),
              child: Center(
                  child: Text(
                btnTitle,
                style: TextStyle(color: Colors.white),
              )),
            ),
            popoverBuild: (context) {
              return CupertinoPopoverMenuList(
                children: <Widget>[
                  CupertinoPopoverMenuItem(
                    leading: Icon(Icons.add),
                    child: Text("Insert"),
                  ),
                  CupertinoPopoverMenuItem(
                    leading: Icon(Icons.edit),
                    child: Text("Update"),
                  ),
                  CupertinoPopoverMenuItem(
                    leading: Icon(Icons.delete),
                    child: Text("Delete"),
                  )
                ],
              );
            }));
  }
}
