class recentSearchesModel {
  final String id;
  final String img;
  final String title;
  final String price;
  final double ratingValue;
  final String desc1;
  final String desc2;
  final String desc3;

  recentSearchesModel(
      {this.id,
        this.img,
        this.title,
        this.price,
        this.ratingValue,
        this.desc1,
        this.desc2,
        this.desc3,});
}

List<recentSearchesModel> recentSearchesModelArray = [
  recentSearchesModel(
    id: "1dsa",
    img: "assets/image/hotel/hotel1.jpg",
    title: "Amaron Sillicon Valey",
    price: "\$ 500",
    ratingValue: 4.8,
    desc1:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
  recentSearchesModel(
    id: "2vsfdsf",
    img: "assets/image/hotel/hotel2.jpg",
    title: "Cosy Hotel de lahoya",
    price: "\$ 250",
    ratingValue: 5.0,
    desc1:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
  recentSearchesModel(
    id: "3fafsaw",
    img: "assets/image/hotel/hotel3.jpg",
    title: "Hottel Ballack",
    price: "\$ 445",
    ratingValue: 3.7,
    desc1:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
  recentSearchesModel(
    id: "3fafdasdassaw",
    img: "assets/image/room/room3.jpg",
    title: "Hottel Layiu",
    price: "\$ 45",
    ratingValue: 3.7,
    desc1:
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
];
