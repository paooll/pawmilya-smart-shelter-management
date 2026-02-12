import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Pet data - in a real app, this would come from a database or API
  static const List<Map<String, String>> _pets = [
    {
      'emoji': '🐕',
      'name': 'Max',
      'breed': 'Golden Retriever',
      'age': '2 years',
      'gender': 'Male',
      'color': '0xFFE8D5C4',
    },
    {
      'emoji': '🐈',
      'name': 'Luna',
      'breed': 'Persian Cat',
      'age': '1 year',
      'gender': 'Female',
      'color': '0xFFD4E8F0',
    },
    {
      'emoji': '🐕‍🦺',
      'name': 'Rocky',
      'breed': 'German Shepherd',
      'age': '3 years',
      'gender': 'Male',
      'color': '0xFFD2B48C',
    },
    {
      'emoji': '🐱',
      'name': 'Whiskers',
      'breed': 'Siamese Cat',
      'age': '6 months',
      'gender': 'Male',
      'color': '0xFFB0D8E8',
    },
    {
      'emoji': '🐩',
      'name': 'Bella',
      'breed': 'Poodle',
      'age': '4 years',
      'gender': 'Female',
      'color': '0xFFC8B8A8',
    },
    {
      'emoji': '🐈‍⬛',
      'name': 'Shadow',
      'breed': 'Black Cat',
      'age': '2 years',
      'gender': 'Male',
      'color': '0xFFE8F4F8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PawsConnect',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: const Color(0xFF87CEEB),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEEB),
              Colors.white,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find Your New',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    'Best Friend 🐾',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for pets...',
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFF8B6F47)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Category Chips
                  Row(
                    children: [
                      _buildCategoryChip('All', true),
                      const SizedBox(width: 10),
                      _buildCategoryChip('Dogs', false),
                      const SizedBox(width: 10),
                      _buildCategoryChip('Cats', false),
                    ],
                  ),
                ],
              ),
            ),

            // Pets Grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.75,
                ),
                itemCount: _pets.length,
                itemBuilder: (context, index) {
                  final pet = _pets[index];
                  return _buildPetCard(
                    pet['emoji']!,
                    pet['name']!,
                    pet['breed']!,
                    pet['age']!,
                    pet['gender']!,
                    Color(int.parse(pet['color']!)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFF8B6F47),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'Add Pet',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(color: const Color(0xFF8B6F47), width: 2)
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? const Color(0xFF8B6F47) : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildPetCard(
    String emoji,
    String name,
    String breed,
    String age,
    String gender,
    Color bgColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pet Image/Emoji
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 70),
              ),
            ),
          ),

          // Pet Info
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(
                      gender == 'Male' ? Icons.male : Icons.female,
                      color: gender == 'Male' ? Colors.blue : Colors.pink,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  breed,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.cake, size: 14, color: Colors.grey.shade500),
                    const SizedBox(width: 4),
                    Text(
                      age,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
