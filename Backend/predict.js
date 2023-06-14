const tf = require("@tensorflow/tfjs-node");
const fs = require("fs");
const { Storage } = require("@google-cloud/storage");

const class_mapping = {
  0: "1", //Goa Kreo
  1: "4", //Lawang Sewu
  2: "6", //Pagoda Avalokitesvara
  3: "7", //Pura Agung Giri Natha
  4: "10", //Tugu Muda
  5: "2", //Kampung Pelangi
  6: "3", //Kota Lama
  7: "5", //Masjid Agung Jawa Tengah
  8: "8", //Museum Ronggowarsito
  9: "9", //Klenteng Sam Poo Kong
};

async function predictImage(imagePath) {
  const storage = new Storage({
    projectId: "Isi kak", // Replace with your project ID
    keyFilename: "credentials.json", // Replace with the path to your service account credentials file
  });
  const bucketName = "capstone_buket";
  const bucket = storage.bucket(bucketName);
  const file = bucket.file(imagePath);
  // Load the model locally
  const modelPath = "./Model/model.json";
  const model = await tf.loadLayersModel(`file://${modelPath}`);

  // Read and prepare the image
  const imageBuffer = await file.download().then((data) => data[0]);
  // const imageBuffer = fs.readFileSync(imagePath);
  const imageTensor = tf.node
    .decodeImage(imageBuffer)
    .resizeBilinear([300, 300])
    .toFloat()
    .expandDims();

  // Perform prediction
  const predictions = model.predict(imageTensor);

  const results = predictions.arraySync()[0];
  console.log("Predictions:", results);

  // Get the predicted label
  const predictedIndex = results.indexOf(1);
  const predictedLabel = class_mapping[predictedIndex] || "Unknown";
  console.log(predictedLabel);

  // Cleanup
  tf.dispose([imageTensor, predictions]);

  // Return the predicted label
  return predictedLabel;
}

module.exports = { predictImage };
