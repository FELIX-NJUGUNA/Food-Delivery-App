import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';
import 'package:food_delivery_app/database/firestore.dart';
import 'package:food_delivery_app/models/restauraunt.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  // get access to db
  FirestoreServices db = FirestoreServices();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // if we get to this page, submit order to firestoredb
    String receipt = context.read<Restaurant>().displayCartRecept();
    db.saveOrderToDatabase(receipt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery in progress.."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // custom bottom nav bar - Message / Call delivery driver
  Widget _buildBottomNavBar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),

      ),

      padding: const EdgeInsets.all(25),
      child: Row(

        children: [
          // profile pic of the driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,

            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              ),
          ),

          const SizedBox(width: 10,),

          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Felix Njuguna",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),),
              Text("Driver",
              style: TextStyle(
                fontWeight: FontWeight.bold,

                color: Theme.of(context).colorScheme.primary,
                ),
                ),
            ],
          ),



            const Spacer(),

          Row(
            children: [
              // message button
            Container(
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,

              ),
              child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message),
              color: Theme.of(context).colorScheme.primary,
              ),
              ),

              const SizedBox(width: 10,),


          // call button

          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,

            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
              color: Colors.green,
              ),
          ),
            ],
          )
        ],
      ),
    );
  }
}