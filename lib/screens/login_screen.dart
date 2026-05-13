import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.5,
                colors: [Color(0xFF1E3A8A), Color(0xFF0A192F)],
              ),
            ),
          ),
          
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30.0),
              child: FadeInUp(
                duration: const Duration(milliseconds: 800),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Mascot Logo
                    Bounce(
                      infinite: true,
                      duration: const Duration(seconds: 3),
                      child: Image.network(
                        'https://raw.githubusercontent.com/ps4idea/900/main/assets/logo_mascot.png', // Placeholder URL for demo
                        height: 180,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'BOUTAGASCO',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                        color: Colors.white,
                        shadows: [Shadow(color: Colors.blue.withOpacity(0.5), blurRadius: 10)],
                      ),
                    ),
                    const Text(
                      'HR SYSTEM',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFF6D00),
                        letterSpacing: 8,
                      ),
                    ),
                    const SizedBox(height: 50),
                    
                    // Glassmorphic Input Fields
                    _buildInputField('Employee ID', Icons.person_outline),
                    const SizedBox(height: 20),
                    _buildInputField('Password', Icons.lock_outline, isPassword: true),
                    
                    const SizedBox(height: 40),
                    
                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0D47A1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          elevation: 10,
                          shadowColor: const Color(0xFF0D47A1).withOpacity(0.5),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                        },
                        child: const Text(
                          'ACCESS PORTAL',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?', style: TextStyle(color: Colors.white70)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon, {bool isPassword = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white70),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }
}
