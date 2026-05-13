import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boutagasco Portal', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          const CircleAvatar(backgroundColor: Color(0xFFFF6D00), radius: 15, child: Icon(Icons.person, size: 18, color: Colors.white)),
          const SizedBox(width: 15),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0A192F),
        selectedItemColor: const Color(0xFFFF6D00),
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.group_rounded), label: 'Staff'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: 'Settings'),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInLeft(child: const Text('Welcome Back, Ibrahim', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            const Text('Thursday, 13 May 2026', style: TextStyle(color: Colors.white54)),
            const SizedBox(height: 30),
            
            // Horizontal Stats
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildStatCard('Staff', '1,248', Colors.blue),
                  _buildStatCard('Active Ops', '42', Colors.orange),
                  _buildStatCard('Efficiency', '92%', Colors.green),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
            const Text('Recent Operations', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            
            // List of Operations
            _buildOperationTile('Pipeline Zone B', 'Maintenance in progress', '10:45 AM', Colors.orange),
            _buildOperationTile('Laila Mahmoud', 'Payroll approved', '09:30 AM', Colors.green),
            _buildOperationTile('Fleet A-1', 'Routine Inspection', 'Yesterday', Colors.blue),
            
            const SizedBox(height: 30),
            
            // Mascot Message Box
            FadeInUp(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [const Color(0xFF0D47A1).withOpacity(0.2), const Color(0xFFFF6D00).withOpacity(0.1)]),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFFF6D00).withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.smart_toy_rounded, color: Color(0xFFFF6D00), size: 40),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Mascot Tip', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFF6D00))),
                          SizedBox(height: 5),
                          Text('Cloud connection is active. All field data is synchronized.', style: TextStyle(fontSize: 12, color: Colors.white70)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white54, fontSize: 12)),
          const SizedBox(height: 5),
          Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }

  Widget _buildOperationTile(String title, String subtitle, String time, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(width: 5, height: 40, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10))),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.white54, fontSize: 12)),
              ],
            ),
          ),
          Text(time, style: const TextStyle(color: Colors.white30, fontSize: 10)),
        ],
      ),
    );
  }
}
