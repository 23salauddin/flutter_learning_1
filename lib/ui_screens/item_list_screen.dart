import 'package:flutter/material.dart';

class ItemListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lists = getDummyData();
    return Material(
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 2); // space between each row
          },
          itemCount: lists.length,
          padding: EdgeInsets.all(5.0), // space between listView boundary
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                showItemSnackBar(context, lists[index]);
                },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 120,
                  padding: const EdgeInsets.all(0),
                  child: Row(       // row for imageview
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(   // decoration for imageview
                            border: Border.all(color: Colors.black26, width: 3),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/products.png'),
                                fit: BoxFit.fill,
                                colorFilter: ColorFilter.mode(
                                    Color(0xE0ECB6DA), BlendMode.color)),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 14,
                        child: Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("Title $index",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Barcode : ',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "12314646547",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Price : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    '10.00',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          "DELETE ITEM",
                                        style: TextStyle(color: Colors.red),
                                        ),
                                    ),
                                    TextButton(
                                        onPressed: null, child: Text(
                                        "BUY",
                                      style: TextStyle(color: Colors.lightBlue),
                                        ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          ),
    );
  }

  List<String> getDummyData() {
    var items = List<String>.generate(100, (index) => "item $index");
    print(items.length.toString());
    return items;
  }

  void showItemSnackBar(BuildContext context, String item){
    var snackbar = SnackBar(content: Text('you have tapped $item item'));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
