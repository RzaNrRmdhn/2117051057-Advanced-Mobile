import 'package:flutter/material.dart';
import 'package:justduit/models/feature_model.dart';

class GridViewFeature extends StatelessWidget {
  const GridViewFeature({super.key});

  @override
  Widget build(BuildContext context) {
    int count = feature.length;
    double width = MediaQuery.of(context).size.width;
    double calcHeight = ((width / 4) - (0)) *(count / 4).ceil();

    return SizedBox(
      width: double.infinity,
      height: calcHeight,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
        itemCount: feature.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){},
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white
                  ),
                  child: feature[index].icon
                ),
                Text(
                  feature[index].name, 
                  style: Theme.of(context).textTheme.headlineSmall
                )
              ]
            )
          );
        }
      ),
    );
  }
}

