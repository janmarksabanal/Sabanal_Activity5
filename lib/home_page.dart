import 'dart:io';

@override
class HomePage extends StatefulWidget {
   HomePage({Key? key});

   HomePage createState() => _HomePageState();
}

mixin Key {
}

class State {
}

class StatefulWidget {
}

class _HomePageState extends HomePage {
  File? imageFile;
  String? label;

  get Image => null;


  void initState() {
    checkPermission();
  }

  checkPermission() async {
    List statuses = await [
      Permission.storage,
      Permission.camera,
    ];
    statuses[Permission.storage];
  }

  getGallery() async {
    var ImageSource;
    File pickedFile = (await ImagePicker().pickImage(
      source: ImageSource.gallery,
    )) as File;
    setState(() {
      imageFile = File(pickedFile.path);
      label = "Image Loaded Successfully";
    });
  }

  getCamera() async {
    var ImageSource;
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (image == null) {
      return;
    }
      setState(() {
        imageFile = File(image.path);
        label = "Successful";
      });
  }


  Widget build(BuildContext context) {
    var BoxFit;
    var EdgeInsets;
    var FontStyle;
    var Colors;
    var Icons;
    var blue;
    var red;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/logo.png', fit: BoxFit.cover),
        title:  Set(),
      ),
      body: imageFile == null
          ? Image(
              image: AssetImage("assets/logo.png")
          )
          : ListView(
              padding:  EdgeInsets.all(20),
              children: [
                Image.file(imageFile!, fit: BoxFit.cover),
                SizedBox(height: 20,),
                Center(
                    child: Text("$label",
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red, fontSize: 20)
                    )
                )
              ]
      ),
      floatingActionButton: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: ListTile(
                  leading: Icon(Icons.camera_alt_outlined, color: blue),
                  title: Set(),
                  onTap: (){
                    getCamera();
                  },
                )
            ),
            PopupMenuItem(
                value: 2,
                child: ListTile(
                  leading: Icon(Icons.image, color: red),
                  title: Set(),
                  onTap: () {
                    getGallery();
                  }
                )
            )
          ],
          icon: Container(
            height: 700,
            width: 1000,
            decoration: ShapeDecoration(
                color: Colors.redAccent,
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.red, width: 2),
                )
            ),
          child: Icon(Icons.add, color: Colors.white), constraints:null,
      ),
      )
    );
  }

  AppBar({required leading, required title}) {}

  TextStyle({required fontStyle, required color, required int fontSize}) {}

  Text(String s, {required style}) {}

  Icon(camera_alt_outlined, {required color}) {}
}

 Scaffold({required appBar, required body, required floatingActionButton}) {
}

BorderSide({required color, required int width}) {
}

StadiumBorder({required side}) {
}

ShapeDecoration({required color, required shape}) {
}

ListTile({required leading, required title, required Null Function() onTap}) {
}

PopupMenuItem({required int value, required child}) {
}

PopupMenuButton({required List Function(dynamic context) itemBuilder, required icon}) {
}

Center({required child}) {
}

SizedBox({required int height}) {
}

ListView({required padding, required List children}) {
}

AssetImage(String s) {
}

DecorationImage({required image, required fit}) {
}

BoxDecoration({required image}) {
}

Container({required constraints, required decoration, required child, required int height, required int width}) {
}

Future<Widget> ({required appBar, required body, required floatingActionButton}) async {
}

class BuildContext {
}

class Widget {
}

void setState(Null Function() param0) {
}

class ImagePicker {
  pickImage({required source}) {}
}

class PermissionStatus {
}

class Permission {
  static var storage;

  static var camera;
}
