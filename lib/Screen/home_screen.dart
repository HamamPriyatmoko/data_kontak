import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormKontak extends StatefulWidget {
  const FormKontak({super.key});

  @override
  State<FormKontak> createState() => _FormKontakState();
}

class _FormKontakState extends State<FormKontak> {
  File? _image;
  final _imagePicker = ImagePicker();

  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _alamatController = TextEditingController();
  final _notelpController = TextEditingController();

  Future<void> getImage() async{
     final XFile? pickerFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

        setState(
      () {
        if (pickerFile != null) {
          _image = File(pickerFile.path);
        } else {
          print("No image selected");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Nama", hintText: "Masukkan Nama"),
                controller: _namaController,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email", hintText: "Masukkan Email"),
                controller: _emailController,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Alamat", hintText: "Masukkan Alamat"),
                controller: _alamatController,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "No Telepon", hintText: "Masukkan No Telepon"),
                controller: _notelpController,
              ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: SizedBox(
              child: Text("No Image Selected"),
            ),
          ),
          _image == null
              ? const Text("Tidak ada data yang dipilih")
              : Image.file(_image!),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                getImage();
              },
              child: const Text("Pilih Gambar"),
            ),
          ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
