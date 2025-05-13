import 'dart:async';
import 'package:app_fluxolivrep/src/models/user.dart';

// Simulating API data with a mock service
class UserService {
  // Mock data of users
  final List<Map<String, dynamic>> _mockUsers = [
    {
      "id": 1,
      "name": "João Silva",
      "email": "joao@example.com",
      "password": "password123",
    },
    {
      "id": 2,
      "name": "Maria Oliveira",
      "email": "maria@example.com",
      "password": "password456",
    },
    {
      "id": 3,
      "name": "Pedro Santos",
      "email": "pedro@example.com",
      "password": "password789",
    },
    {
      "id": 4,
      "name": "Ana Costa",
      "email": "ana@example.com",
      "password": "password321",
    },
    {
      "id": 5,
      "name": "Lucas Ferreira",
      "email": "lucas@example.com",
      "password": "password654",
    },
  ];

  // Get all users
  Future<List<User>> getUsers() async {
    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 800));

    return _mockUsers
        .map(
          (userData) => User(
            id: userData['id'],
            name: userData['name'],
            email: userData['email'],
            password: userData['password'],
          ),
        )
        .toList();
  }

  // Delete a user
  Future<bool> deleteUser(int id) async {
    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    final indexToRemove = _mockUsers.indexWhere((user) => user['id'] == id);
    if (indexToRemove != -1) {
      _mockUsers.removeAt(indexToRemove);
      return true;
    }
    return false;
  }

  // Update a user
  Future<bool> updateUser(User user) async {
    // Simulate API call delay
    await Future.delayed(const Duration(milliseconds: 500));

    final indexToUpdate = _mockUsers.indexWhere((u) => u['id'] == user.id);
    if (indexToUpdate != -1) {
      _mockUsers[indexToUpdate] = user.toJson();
      return true;
    }
    return false;
  }
}
