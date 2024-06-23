import pandas as pd
import json

# Charger les données depuis le fichier JSON
file_path = '../../PEIP1/SteamScrap/steam_gamesSortie3.json'
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

for _ in range(25):

    max_accuracy = 0
    param = (0,0,0)

    for depth in [1,2,3,4,5,6,10,12,15,20,25,30,35,37,38,32,34,40,45]:
        for samples_leaf in [1,2,3,5,10,15,20,25,30,35,40]:
            for size in [0.1,0.2,0.3,0.25,0.3,0.4,0.45,0.5]:

                from sklearn.model_selection import train_test_split
                X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=size) # 20% test

                from sklearn.tree import DecisionTreeClassifier
                model = DecisionTreeClassifier(max_depth=depth, min_samples_leaf= samples_leaf)

                model.fit(X_train, y_train)
                y_pred = model.predict(X_test)

                from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

                accuracy = accuracy_score(y_test, y_pred)
            
                print("Accuracy with", depth, " prof. |", samples_leaf, "samples : " , accuracy)

                if max_accuracy< accuracy:
                    max_accuracy= accuracy
                    param = (depth, samples_leaf,size)

    print("Les meilleurs param sont : ", param[0], "prof. |", param[1], "sample|",param[2],"size. Bravo !")
    print("Score :", max_accuracy)

