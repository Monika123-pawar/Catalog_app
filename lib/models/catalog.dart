class CatalogModal{
  static final items=[
   Item(
     id: 1,
     name: 'iphone 12 Pro',
     desc: 'Apple iphone 12th generation',
     price:999,
     color:'#33505a',
     image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqG3tGowZTiforo7Cptg_DLMNz0xCxLGPTTC0QQ5Ah-QvHyqWoZfGJTckuLs8e5J0vfkp0nco&usqp=CAc',
   )
  ];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

}
