import 'package:cloud_firestore/cloud_firestore.dart';

class MyFormController {
  static final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> addUser(String nom, String prenom, int age, String email, String numeroTelephone) async {
    try {
      await _usersCollection.add({
        'nom': nom,
        'prenom': prenom,
        'age': age,
        'email': email,
        'numeroTelephone': numeroTelephone,
      });
    } catch (e) {
      print('Erreur lors de l\'ajout de l\'utilisateur: $e');
    }
  }

  static Future<List<Map<String, dynamic>>> getUsers() async {
    List<Map<String, dynamic>> userList = [];

    try {
      QuerySnapshot querySnapshot = await _usersCollection.get();
      querySnapshot.docs.forEach((doc) {
        userList.add(doc.data() as Map<String, dynamic>);
      });
    } catch (e) {
      print('Erreur lors de la récupération des utilisateurs: $e');
    }

    return userList;
  }
}
