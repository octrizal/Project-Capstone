![WhatsApp Image 2023-06-16 at 12 11 48](https://github.com/octrizal/Project-Capstone/assets/96968769/f4569924-90a2-4472-8484-0a4988223ab7)Untuk membuat API untuk mengunggah gambar dan mendapatkan data dari penyimpanan awan (cloud storage bucket) menggunakan Express dan Node.js, dan database mysql.
Penggunaan Model ML diakses juga melalui express.

Siapkan proyek Node.js:

Buat direktori proyek baru.
Buka terminal di direktori proyek dan jalankan perintah npm init untuk menginisialisasi proyek Node.js dan membuat file package.json.
Instal Express dan library lain yang diperlukan dengan menjalankan perintah npm install express multer @google-cloud/storage di terminal.

install mysql package 
npm install mysql

#Todo
isi credential
predict.js
server.js


### Base URL
https://geometric-ocean-389205.et.r.appspot.com/
### Endpoints

#### GET /
- Description: Returns a success response.
- Response:
  - Status: 200 OK
  - Body: "Response success"

#### GET /wisata
- Description: Retrieves a list of all tourist attractions.
- Response:
  - Status: 200 OK
  - Body: JSON array containing the list of tourist attractions.

#### GET /wisata/:prediction
- Description: Retrieves a specific tourist attraction based on the prediction.
- Parameters:
  - prediction: The ID of the tourist attraction.
- Response:
  - Status: 200 OK
  - Body: JSON object containing the details of the tourist attraction.

#### POST /predict
- Description: Uploads an image and predicts the tourist attraction based on the image.
- Request:
  - Body: FormData containing the image file.
- Response:
  - Status: 302 Found
  - Headers:
    - Location: /wisata/:prediction
      contoh
      ![WhatsApp Image 2023-06-16 at 12 11 48](https://github.com/octrizal/Project-Capstone/assets/96968769/80919f7c-6d53-4aa6-b201-e82ad9b679b1)


#### POST /wisata/:id/komentar
- Description: Adds a comment and rating for a specific tourist attraction.
- Parameters:
  - id: The ID of the tourist attraction.
- Request:
  - Body: JSON object containing the comment and rating.
    - komentar: The comment text.
    - rating: The rating value.
- Response:
  - Status: 201 Created
  - Body: JSON object with a success message.

#### GET /wisata/:id/komentar
- Description: Retrieves the list of comments and ratings for a specific tourist attraction.
- Parameters:
  - id: The ID of the tourist attraction.
- Response:
  - Status: 200 OK
  - Body: JSON array containing the list of comments and ratings.




