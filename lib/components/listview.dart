import 'package:flutter/material.dart';
import 'package:justduit/models/promo_model.dart';

class ListViewPromo extends StatelessWidget {
  const ListViewPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    int count = promo.length;
    double height = MediaQuery.of(context).size.height;
    double calcHeight = ((height / 4) - (0)) *(count / 4).ceil();
    return SizedBox(
      width: double.infinity,
      height: calcHeight,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: count,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){},
            child: Column(
              children: [
                Image.asset(promo[index].imgPromo),
                const SizedBox(height: 10.0)
              ],
            ),
          );
        }
      ),
    );
  }
}