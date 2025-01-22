import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ลงทะเบียน')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
       Image.network(
                //https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj9idn0kZnNVegA98Kmo0jDvjVc1iQD0-weds-TRKCy-bP0sp3Vw6hEXjJ5eAuA_zqj_FCHu8JgtPGNYzff27P_xAHPJkGmL-CcSE6_gIp2c0ZDL6FcNSuwjzco2G3AMQnhVFv1Z_MzthGI/s1600/%E0%B8%9A%E0%B8%B1%E0%B8%8D%E0%B8%8A%E0%B8%B5%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%99.jpg
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj9idn0kZnNVegA98Kmo0jDvjVc1iQD0-weds-TRKCy-bP0sp3Vw6hEXjJ5eAuA_zqj_FCHu8JgtPGNYzff27P_xAHPJkGmL-CcSE6_gIp2c0ZDL6FcNSuwjzco2G3AMQnhVFv1Z_MzthGI/s1600/%E0%B8%9A%E0%B8%B1%E0%B8%8D%E0%B8%8A%E0%B8%B5%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%99.jpg',
                height: 100,
              ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'ชื่อผู้ใช้งาน',
                //  prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'ชื่อ',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'นามสกุล',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'รหัสผ่าน',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'อายุ',
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(width: 10),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('แจ้งเตือน'),
                      content: const Text('ลงทะเบียนเสร็จสิ้นแล้ว!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('ลงทะเบียน'),
              ),
              const SizedBox(width: 100),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('แจ้งเตือน'),
                      content: const Text('ออกจากหน้าลงทะเบียน!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('ยกเลิก'),
              ),
            ])
          ],
        ),
      ),
    );
  }
}