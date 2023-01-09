class Ids {
  late String projectID;
  Ids(this.projectID);
  Ids.fromJson(Map<String, dynamic>json){
    projectID = json['id'];
  }
}