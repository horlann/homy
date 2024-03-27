import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageSectionsWidget extends StatelessWidget {
  HomePageSectionsWidget({super.key});
  final items = [
    _Model(name: 'Приміщення', color: Colors.red),
    _Model(name: 'Правління', color: Colors.orange),
    _Model(name: 'Сусіди', color: Colors.blue),
    _Model(name: 'Довідкова', color: Colors.brown),
    _Model(name: 'Внески', color: Colors.lightGreen),
    _Model(name: 'Лічильники', color: Colors.lightBlue),
    _Model(name: 'Комунальні', color: Colors.purple),
        _Model(name: 'Фінанси', color: Colors.yellow),

    _Model(name: 'Документи', color: Colors.pink),
        _Model(name: 'Документи', color: Colors.pink),

    _Model(name: 'Документи', color: Colors.pink),



  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _GridItem(
              model: items[0],
            ),
            _GridItem(
              model: items[1],
            ),
            _GridItem(
              model: items[2],
            ),
            _GridItem(
              model: items[3],
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            _GridItem(
              model: items[4],
            ),
            _GridItem(
              model: items[5],
            ),
             _GridItem(
              model: items[6],
            ),
             _GridItem(
              model: items[7],
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          
          children: [
            _GridItem(
              model: items[8],
            ),
          ],
        )
      ],
    );
  }
}

class _GridItem extends StatelessWidget {
  const _GridItem({super.key, required this.model});
  final _Model model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          child: SizedBox(width: 40, height: 40, child: ColoredBox(color: model.color))),
          SizedBox(height: 4,),
        Text(model.name)
      ]),
    );
  }
}

class _Model {
  final String name;
  final Color color;

  _Model({required this.name, required this.color});
}
