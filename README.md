# 📰 Fake News Detection using Machine Learning

A simple web application that detects whether a news article is **Real** or **Fake** using **Machine Learning** and **Natural Language Processing (NLP)**.

## 🚀 Live Demo

👉 https://huggingface.co/spaces/Arivu104/fake-news-detection

---

## 📌 Features

- Detects Fake or Real news from article text
- Text preprocessing using NLP
- TF-IDF feature extraction
- Logistic Regression model
- Simple Flask web interface
- Retrain the model with your own dataset

---

## 🛠️ Tech Stack

- Python
- Flask
- Scikit-learn
- Pandas
- NumPy
- NLTK
- HTML & CSS

---

## 📂 Project Structure

```
Fake-News-Detection/
│── app.py
│── train_and_save_model.py
│── model.pkl
│── vectorizer.pkl
│── train.csv
│── requirements.txt
│── templates/
│── static/
└── README.md
```

---

## ⚙️ Installation

Clone the repository

```bash
git clone https://github.com/your-username/Fake-News-Detection.git
cd Fake-News-Detection
```

Install the required packages

```bash
pip install -r requirements.txt
```

Run the application

```bash
python app.py
```

Open your browser and visit:

```
http://127.0.0.1:5000
```

---

## 🧠 Model

- Text Cleaning
- Stopword Removal
- Porter Stemming
- TF-IDF Vectorization
- Logistic Regression Classifier

---

## 📊 Dataset

This project uses the **Kaggle Fake News Dataset**.

https://www.kaggle.com/c/fake-news/data

---

## 🔄 Retrain the Model

If you update the dataset, run:

```bash
python train_and_save_model.py
```

This will generate a new `model.pkl` and `vectorizer.pkl`.

---

## 📈 Future Improvements

- BERT-based model
- Deep Learning (LSTM)
- News API integration
- Better UI
- Support for multiple languages
