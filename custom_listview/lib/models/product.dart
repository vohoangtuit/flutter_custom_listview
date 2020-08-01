class Product{
  String id;
  String name;
  String price;
  String image;
  String create_at;

  Product({this.id, this.name, this.price, this.image, this.create_at});


  List<Product> initData(){
    List<Product> list = List<Product>();
    list.add(Product(id:"1", name:"Iphone 6", price:"400000", image:"https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"2", name:"SamSung", price:"750000", image:"https://images.samsung.com/is/image/samsung/assets/vn/p6_gro1/p6_initial_home/720x1080.jpg", create_at:"18/8/2020"));
    list.add(Product(id:"3", name:"Iphone 6s", price:"500000", image:"https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg", create_at:"1/5/2020"));
    list.add(Product(id:"4", name:"Iphone 8", price:"1100000", image:"https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600-600x600.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"5", name:"SamSung A7", price:"900000", image:"https://cdn.tgdd.vn/Products/Images/42/111107/samsung-galaxy-a7-2018-blue-600x600.jpg", create_at:"18/8/2020"));
    list.add(Product(id:"6", name:"SamSung A5", price:"340000", image:"https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1861322683.jpeg", create_at:"10/7/2020"));
    list.add(Product(id:"7", name:"Oppo F3", price:"30000",image:"https://cdn.tgdd.vn/Products/Images/42/92541/oppo-f3-3-400x460-400x460.png", create_at:"10/7/2020"));
    list.add(Product(id:"8", name:"Oppo F5", price:"400000", image:"https://cdn.tgdd.vn/Products/Images/42/141763/oppo-f5-youth-vang-hong-6001-600x600.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"9", name:"Iphone 7 plus", price:"900000", image:"https://www.xtmobile.vn/vnt_upload/product/Hinh_DT/Iphone/7-plus/thumbs/(600x600)_crop_7_plus_red_800x800.jpg", create_at:"11/8/2020"));
    list.add(Product(id:"10", name:"Iphone 7", price:"700000", image:"https://clickbuy.com.vn/uploads/2019/03/iPhone-7-plus-jetback.png", create_at:"10/7/2020"));
    list.add(Product(id:"11", name:"Iphone 6", price:"400000", image:"https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"12", name:"SamSung", price:"750000", image:"https://images.samsung.com/is/image/samsung/assets/vn/p6_gro1/p6_initial_home/720x1080.jpg", create_at:"1/5/2020"));
    list.add(Product(id:"13", name:"Iphone 6s", price:"500000", image:"https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"14", name:"Iphone 8", price:"1100000", image:"https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600-600x600.jpg", create_at:"1/5/2020"));
    list.add(Product(id:"15", name:"SamSung A7", price:"900000", image:"https://cdn.tgdd.vn/Products/Images/42/111107/samsung-galaxy-a7-2018-blue-600x600.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"16", name:"SamSung A5",price: "340000", image:"https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1861322683.jpeg", create_at:"1/5/2020"));
    list.add(Product(id:"17", name:"Oppo F3", price:"30000",image:"https://cdn.tgdd.vn/Products/Images/42/92541/oppo-f3-3-400x460-400x460.png", create_at:"1/5/2020"));
    list.add(Product(id:"18", name:"Oppo F5", price:"400000", image:"https://cdn.tgdd.vn/Products/Images/42/141763/oppo-f5-youth-vang-hong-6001-600x600.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"19", name:"Iphone 7 plus", price:"900000", image:"https://www.xtmobile.vn/vnt_upload/product/Hinh_DT/Iphone/7-plus/thumbs/(600x600)_crop_7_plus_red_800x800.jpg", create_at:"11/8/2020"));
    list.add(Product(id:"20", name:"Iphone 7", price:"700000", image:"https://clickbuy.com.vn/uploads/2019/03/iPhone-7-plus-jetback.png", create_at:"10/7/2020"));
    list.add(Product(id:"21", name:"Oppo A31", price:"600000", image:"https://cdn.tgdd.vn/Products/Images/42/218662/oppo-a31-2020-128gb-den-600x600-1-600x600.jpg", create_at:"10/7/2020"));
    list.add(Product(id:"22", name:"Oppo A92", price:"600000", image:"https://www.thegioididong.com/images/42/220850/oppo-a92s-hinh-600x600-400x400.jpg", create_at:"11/5/2020"));
    return list;
  }
}