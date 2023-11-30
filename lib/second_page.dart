import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Choose Payment Method',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),
              DropdownButton<String>(

                items: [
                  DropdownMenuItem(
                    child: Text('Pay before delivery'),
                    value: 'cash',
                  ),
                  DropdownMenuItem(
                    child: Text('Pay after delivery'),
                    value: 'online',
                  ),

                ],
                onChanged: (value) {

                },
                value: null,
                hint: Text('Select an option'),
              ),

              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        _showSnackBar(context, 'Successful - Nagad');
                      },
                      icon: Image.network(
                        'https://purepng.com/public/uploads/large/purepng.com-mastercard-logologobrand-logoiconslogos-251519938372dnf77.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Master Card'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellowAccent,)
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                      onPressed: () {
                        _showSnackBar(context, 'Successful - Bkash');

                      },
                      icon: Image.network(
                        'https://download.logo.wine/logo/BKash/BKash-Logo.wine.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Bkash'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,)
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                      onPressed: () {
                        _showSnackBar(context, 'Successful - Nagad');

                      },
                      icon: Image.network(
                        'https://cdn.daily-sun.com/public/news_images/2020/07/11/Nagad.PNG',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Nagad'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,)
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                      onPressed: () {
                        _showSnackBar(context, 'Successful - Rocket');

                      },
                      icon: Image.network(
                        'https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      label: Text('Rocket'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,)
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void _showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: Duration(seconds: 2), // Adjust the duration as needed
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

