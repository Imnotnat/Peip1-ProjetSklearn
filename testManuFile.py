#../../PEIP1/SteamScrap/steam_gamesSortie2.json
import pandas as pd
import json

# Charger les données depuis le fichier JSON
file_path = '../../PEIP1/SteamScrap/steam_gamesSortie5.json'
with open(file_path, 'r') as f:
    data = json.load(f)

# Convertir les données en DataFrame
rows = []
for game_id, game_info in data.items():
    game_info['id'] = game_id
    rows.append(game_info)

df = pd.DataFrame(rows)

# Afficher les premières lignes pour vérifier
print(df.head())

# Préparer les données pour l'entraînement
df_tags = df['tags'].apply(pd.Series).fillna(0)
df_tags['name'] = df['name']

# Séparer les caractéristiques (X) et la cible (y)
X = df_tags.drop(columns=['name'])
y = df_tags['name']

# Diviser les données en ensembles d'entraînement et de test
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1, random_state=42)  # 10% test

# Entraîner le modèle
from sklearn.tree import DecisionTreeClassifier
model = DecisionTreeClassifier(max_depth=40, min_samples_leaf=2)
model.fit(X_train, y_train)

# Prédire les valeurs de l'ensemble de test
y_pred = model.predict(X_test)

# Évaluer le modèle
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred, average='weighted')
recall = recall_score(y_test, y_pred, average='weighted')
f1 = f1_score(y_test, y_pred, average='weighted')

print("Accuracy:", accuracy)
print("Precision:", precision)
print("Recall:", recall)
print("F1 Score:", f1)

# Visualiser l'arbre de décision
import matplotlib.pyplot as plt
from sklearn.tree import plot_tree

plt.figure(figsize=(20,10))
plot_tree(model, feature_names=X.columns, class_names=y.unique(), filled=True, max_depth=3)
plt.show()
