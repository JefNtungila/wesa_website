import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  int? hoveredIndex;

  final List<String> titles = [
    'Égouttage', 'Plafonage', 'Toits plats', 'Menuiserie',
    'Plafond suspendu', 'Terasse', 'Décoration', 'Peinture',
    'Parquet', 'Électricité', 'Plomberie', 'Chauffage',
    'Isolation INT & EXT', 'CARRELAGE', 'Maçonnerie',
    'Cloison', 'Tapissage'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8), // Subtle light grey background
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wesa Construction Rénovation',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 30),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.85, // Adjust this to control card height
              ),
              itemCount: titles.length,
              itemBuilder: (context, index) {
                final isHovered = hoveredIndex == index;

                return MouseRegion(
                  onEnter: (_) => setState(() => hoveredIndex = index),
                  onExit: (_) => setState(() => hoveredIndex = null),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: isHovered
                              ? Colors.blueGrey.withOpacity(0.3)
                              : Colors.black.withOpacity(0.05),
                          blurRadius: isHovered ? 20 : 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // IMAGE PLACEHOLDER
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.image_outlined,
                              color: Colors.blueGrey[200],
                              size: 40,
                            ),
                          ),
                        ),
                        // TITLE SECTION
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: isHovered ? Colors.blueGrey[900] : Colors.white,
                              borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                titles[index].toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: isHovered ? Colors.white : Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 50),
            const Divider(thickness: 1, color: Colors.blueGrey),
          ],
        ),
      ),
    );
  }
}