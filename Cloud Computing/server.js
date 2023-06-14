//require("@google-cloud/debug-agent").start();
const express = require("express");
const { predictImage } = require("./predict");
const multer = require("multer");
const { Storage } = require("@google-cloud/storage");
const path = require("path");
const fs = require("fs");
const pathKey = path.resolve("credentials.json");
const mysql = require("mysql");
const app = express();
const bodyParser = require("body-parser");

app.use(bodyParser.json());

const port = 8080;

//Todo: Create a new express app
const storage = new Storage({
  keyFilename: pathKey,
  projectId: "Isi",
});

// Configure multer for file upload
const upload = multer({
  storage: multer.memoryStorage(),
  limits: {
    fileSize: 5 * 1024 * 1024, // 5MB file size limit
  },
});

// Upload file to the Cloud Storage bucket
async function uploadFileToBucket(file) {
  return new Promise((resolve, reject) => {
    const bucketName = "isi";
    const bucket = storage.bucket(bucketName);
    const blob = bucket.file(file.originalname);
    const blobStream = blob.createWriteStream({
      resumable: false,
    });

    blobStream.on("finish", () => {
      resolve();
    });

    blobStream.on("error", (err) => {
      reject(err);
    });

    blobStream.end(file.buffer);
  });
}
// Todo Konfigurasi koneksi MySQL
const db = mysql.createConnection({
  host: "isikak",
  user: "root",
  password: "Wajib Isi",
  database: "test",
});

// Membuka koneksi MySQL
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("Terhubung ke database MySQL");
});

//ROUTING

app.get("/", (req, res) => {
  console.log("Response success");
  res.send("Response success");
});

// app.get("/image/:filename", (req, res, next) => {

//   const file = bucket.file(req.params.filename);

//   file
//     .createReadStream()
//     .on("error", (err) => {
//       next(err);
//     })
//     .pipe(res);
//  });

app.get("/wisata", (req, res) => {
  const predicted = req.params.prediction;
  const sql = `SELECT * FROM wisata`;

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.json(result);
  });
});

app.get("/wisata/:prediction", (req, res) => {
  const predicted = req.params.prediction;
  const sql = `SELECT * FROM wisata where id = ${predicted}`;

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.json(result);
  });
});

app.post("/predict", upload.single("image"), async (req, res) => {
  if (!req.file) {
    res.status(400).json({ error: "No file uploaded." });
    return;
  }

  try {
    await uploadFileToBucket(req.file);
    const predictions = await predictImage(req.file.originalname);
    res.redirect(`/wisata/${predictions}`);
  } catch (error) {
    console.error("Failed to process the image:", error);
    res.status(500).json({ error: "Failed to process the image." });
  }
});
// BAGIAN KOMENTAR DAN RATING

app.post("/wisata/:id/komentar", (req, res) => {
  // Mendapatkan ID wisata dari parameter URL
  const wisataId = req.params.id;

  // Mendapatkan komentar dan rating dari body permintaan
  const { komentar, rating } = req.body;

  // Simpan komentar dan rating ke database MySQL
  const sql =
    "INSERT INTO komentar_rating (id_wisata, komentar, rating) VALUES (?, ?, ?)";
  const values = [wisataId, komentar, rating];

  db.query(sql, values, (error, results) => {
    if (error) {
      console.error("Kesalahan saat menyimpan komentar dan rating:", error);
      res.status(500).json({
        message: "Terjadi kesalahan saat menyimpan komentar dan rating.",
      });
    } else {
      res.status(201).json({ message: "Komentar dan rating telah disimpan." });
    }
  });
});

// Mendapatkan daftar komentar dan rating untuk wisata tertentu
app.get("/wisata/:id/komentar", (req, res) => {
  // Mendapatkan ID wisata dari parameter URL
  const wisataId = req.params.id;

  const query = `SELECT * FROM komentar_rating WHERE id_wisata = ${wisataId}`;

  db.query(query, (error, results) => {
    if (error) {
      res
        .status(500)
        .json({ error: "Terjadi kesalahan dalam pengambilan data." });
    } else {
      res.json(results);
    }
  });
});
app.listen(port, () => {
  console.log(`Server berjalan di http://localhost:${port}`);
});
