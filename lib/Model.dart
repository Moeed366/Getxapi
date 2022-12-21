class usermodel {
  String? squadName;
  String? homeTown;
  int? formed;
  String? secretBase;
  bool? active;
  List<Grocery>? grocery;

  usermodel(
      {this.squadName,
        this.homeTown,
        this.formed,
        this.secretBase,
        this.active,
        this.grocery});

  usermodel.fromJson(Map<String, dynamic> json) {
    squadName = json['squadName'];
    homeTown = json['homeTown'];
    formed = json['formed'];
    secretBase = json['secretBase'];
    active = json['active'];
    if (json['Grocery'] != null) {
      grocery = <Grocery>[];
      json['Grocery'].forEach((v) {
        grocery!.add(new Grocery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['squadName'] = this.squadName;
    data['homeTown'] = this.homeTown;
    data['formed'] = this.formed;
    data['secretBase'] = this.secretBase;
    data['active'] = this.active;
    if (this.grocery != null) {
      data['Grocery'] = this.grocery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Grocery {
  int? id;
  String? name;
  int? price;
  int? quantity;

  Grocery({this.id, this.name, this.price, this.quantity});

  Grocery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    return data;
  }
}