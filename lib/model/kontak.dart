class Kontak {
  final String nama;
  final String email;
  final String alamat;
  final String telepon;
  final String foto;
  Kontak({
    required this.nama,
    required this.telepon,
    required this.email,
    required this.alamat,
    required this.foto,
  });

  Kontak copyWith({
    String? nama,
    String? email,
    String? alamat,
    String? telepon,
    String? foto,
  }) {
    return Kontak(
      nama: nama ?? this.nama,
      email: email ?? this.email,
      alamat: alamat ?? this.alamat,
      telepon: telepon ?? this.telepon,
      foto: foto ?? this.foto,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nama': nama});
    result.addAll({'email': email});
    result.addAll({'alamat': alamat});
    result.addAll({'telepon': telepon});
    result.addAll({'foto': foto});

    return result;
  }

  factory Kontak.fromMap(Map<String, dynamic> map) {
    return Kontak(
      nama: map['nama'] ?? '',
      email: map['email'] ?? '',
      alamat: map['alamat'] ?? '',
      telepon: map['telepon'] ?? '',
      foto: map['foto'] ?? '',
    );
  }
}
