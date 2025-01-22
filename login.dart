import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
        body: Padding(
    padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                //https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj9idn0kZnNVegA98Kmo0jDvjVc1iQD0-weds-TRKCy-bP0sp3Vw6hEXjJ5eAuA_zqj_FCHu8JgtPGNYzff27P_xAHPJkGmL-CcSE6_gIp2c0ZDL6FcNSuwjzco2G3AMQnhVFv1Z_MzthGI/s1600/%E0%B8%9A%E0%B8%B1%E0%B8%8D%E0%B8%8A%E0%B8%B5%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%99.jpg
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj9idn0kZnNVegA98Kmo0jDvjVc1iQD0-weds-TRKCy-bP0sp3Vw6hEXjJ5eAuA_zqj_FCHu8JgtPGNYzff27P_xAHPJkGmL-CcSE6_gIp2c0ZDL6FcNSuwjzco2G3AMQnhVFv1Z_MzthGI/s1600/%E0%B8%9A%E0%B8%B1%E0%B8%8D%E0%B8%8A%E0%B8%B5%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%99.jpg',
                height: 100,
              ),
          const Text(
            'บัญชีครัวเรือน',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            '3651051541155 ภูวกร รุ่งปิติศุภากร ปสสท3',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Username',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.key),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Login functionality
                },
                child: const Text('เข้าสู่ระบบ'),
              ),
              const SizedBox(width: 100),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('ลงทะเบียน'),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}