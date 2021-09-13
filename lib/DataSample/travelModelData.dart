class travelListData{
  String img,name,location,price,id;
  double rating;

  travelListData({
   this.img,
   this.name,
   this.location,
   this.price,
   this.rating,
   this.id
});
}

List<travelListData> travelDataDummy= [

  travelListData(
    img: "assets/image/room/room2.jpg",
      name: "Culture Walk",
      price: "57",
      location: "Barcelona",
      rating: 3.9,
      id: "dsadas2"
  ),
  travelListData(
    img: "assets/image/room/room9.jpg",
      name: "Panoramic View Barcelona",
      price: "57",
      location: "Barcelona",
      rating: 4.1,
      id: "bvfgfe"
  ),
  travelListData(
    img: "assets/image/room/room1.jpg",
      name: "Secret Of Manhathan",
      price: "15",
      location: "Barcelona",
      rating: 4.2,
      id: "fds213"
  ),
  travelListData(
    img: "assets/image/room/room3.jpg",
    name: "Gourmet Dinner",
    price: "78",
    location: "Barcelona",
    rating: 4.4,
    id: "dsacxz1"
  ),
  travelListData(
    img: "assets/image/room/room4.jpg",
      name: "Kayakin And Lagon",
      price: "97",
      location: "Costa Brava",
      rating: 4.5,
      id: "bvcbdfg"
  ),
  travelListData(
    img: "assets/image/room/room5.jpg",
      name: "Hesting Horse Experience",
      price: "57",
      location: "Real Madrid",
      rating: 3.9,
      id: "cxzczse"
  ),
  travelListData(
    img: "assets/image/room/room6.jpg",
      name: "Gaudi Essential",
      price: "31",
      location: "Real Madrid",
      rating: 4.4,
      id: "fdsfsx2"
  ),
];