import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEditMode = false;

  // Controllers for fields
  final fullNameController = TextEditingController(text: "John Doe");
  final nicknameController = TextEditingController(text: "Johnny");
  final dobController = TextEditingController(text: "1995-01-01");
  final emailController = TextEditingController(text: "john@example.com");
  final phoneController = TextEditingController(text: "+123456789");
  final addressController = TextEditingController(text: "New York, USA");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: const Text("Edit Profile", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              setState(() => isEditMode = !isEditMode);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildField("Full Name", fullNameController),
            buildField("Nickname", nicknameController),
            buildField("Date of Birth", dobController),
            buildField("Email", emailController),
            buildField("Phone", phoneController),
            buildField("Address", addressController),

            const SizedBox(height: 30),

            if (isEditMode)
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA3D9C6),
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 10,
                    shadowColor: Colors.black12,
                  ),
                  onPressed: () {
                    // Save logic here
                    setState(() => isEditMode = false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Profile Updated!")),
                    );
                  },
                  child: const Text("Update", style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            enabled: isEditMode,
            readOnly: !isEditMode,
            style: const TextStyle(fontSize: 15),
            decoration: InputDecoration(
              hintText: "Enter your $label...",
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.green.shade100),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.green.shade100),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.green.shade50),
              ),
              filled: true,
              fillColor: Colors.green.shade50.withOpacity(0.05),
            ),
          ),
        ],
      ),
    );
  }
}
