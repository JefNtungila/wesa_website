import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  // Function to handle clicking links
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap, // Added onTap parameter
    Color? iconColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell( // Added InkWell for ripple effect
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor ?? Colors.blueGrey[700]),
            ),
            title: Text(title, style: const TextStyle(fontSize: 14, color: Colors.blueGrey)),
            subtitle: Text(subtitle, style: const TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black26),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F8),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("CONTACTEZ-NOUS", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, letterSpacing: 2)),
            const SizedBox(height: 40),

            // PHONE: Dials the number
            _buildContactCard(
              icon: Icons.phone,
              title: "Téléphone",
              subtitle: "+32 46 85 47 559",
              onTap: () => _launchURL('tel:+32468547559'),
            ),

            // EMAIL: Opens mail app
            _buildContactCard(
              icon: Icons.email_outlined,
              title: "Email",
              subtitle: "wesachito@gmail.com",
              onTap: () => _launchURL('mailto:wesachito@gmail.com'),
            ),

            // ADDRESS: Opens Google Maps
            _buildContactCard(
              icon: Icons.location_on_outlined,
              title: "Adresse",
              subtitle: "Hoogmolenwegel 3, 8790 Waregem",
              onTap: () => _launchURL('https://www.google.com/maps/search/?api=1&query=Hoogmolenwegel+3+8790+Waregem'),
            ),

            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),

            // FACEBOOK
            _buildContactCard(
              icon: Icons.facebook,
              title: "Facebook",
              subtitle: "Wesa Officiel",
              iconColor: const Color(0xFF1877F2),
              onTap: () => _launchURL('https://www.facebook.com/search/top?q=wesa%20officiel'),
            ),

            // INSTAGRAM
            _buildContactCard(
              icon: Icons.camera_alt_outlined,
              title: "Instagram",
              subtitle: "@wesa_officiel",
              iconColor: const Color(0xFFE4405F),
              onTap: () => _launchURL('https://www.instagram.com/wesa_officiel/'),
            ),

            // TIKTOK
            _buildContactCard(
              icon: Icons.music_note,
              title: "TikTok",
              subtitle: "@wesa.officiel",
              onTap: () => _launchURL('https://www.tiktok.com/@wesa.officiel'),
            ),
          ],
        ),
      ),
    );
  }
}