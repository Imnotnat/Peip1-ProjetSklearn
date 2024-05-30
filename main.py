import pandas

df = pandas.read_csv("data/data2.csv", sep=";")

# Remplacer les valeurs 'oui' et 'non' par 1 et 0
df.replace({'oui': 1, 'non': 0}, inplace=True)

print(df.dtypes)

# Afficher les premières lignes pour vérifier
print(df.head())

# Séparer les caractéristiques (X) et la cible (y)
X = df.drop('JEU', axis=1)  # Utiliser toutes les colonnes sauf 'JEU' comme caractéristiques
y = df['JEU']  # Utiliser la colonne 'JEU' comme cible


#X = df[["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"]]
#y = df['JEU']


from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1) # 10% test

from sklearn.tree import DecisionTreeClassifier
model = DecisionTreeClassifier(max_depth=40, min_samples_leaf= 2)

model.fit(X_train, y_train)

import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
plot_tree(model, feature_names= ["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"], class_names=["Valorant","Fifa","Mario-Bros","Flight-Simulator","Rocket league","CSGO","F1 23","Just Cause","GTA","NBA 2K24","Minecraft","Ark Survival","Super Market Simulator","Fortnite","Call of duty Warzone","Call of duty Zombie","Red dead redemption","Outlast","League of legends","Zelda","Phasmophobia","Clash royale","Resident Evil","Street Fighter","Roblox","Garry's mod","Among Us","Overwatch","Raft","Hello Neighboor","Cities Skylines","Sims 4","Clash of Clans","Brawls Stars","HayDay","Subway Surfer","Tetris","Geometry Dash","Pokemon","Pac Man","StoryTeller","Agar io","Infinite Craft","Fruit Ninja","Internet Cafe Simulator 2","Apex Legends","Elden Ring","Assassin's Creed","Watch Dogs 2","Football Manager 2024","Palworld","Horizon Zero Dawn","Subnautica","Euro Truck Simulator 2","Final Fantasy XV","Farming Simulator 24","Planet Zoo","Eco","Satisfactory 2","Trove","World of Tanks","Life is Strange","Jurassic World Evolution 2","House Flipper","Star Wars Battlefront 2","Trackmania","Paladins","Mortal Kombat","Monster Hunter","Surviving Mars","Battlefield","Slime Rancher","Raid Shadow Legends","Need for speed","The crew 2","Portal","Far Cry","Lords Mobile","60 seconds","Marvel's Guardians of the Galaxy","Destiny 2","Plague Inc","Jedi Fallen Order","Crash Bandicoot","Tomb Raider","Uncharted","Tennis Elbow","Lego Star Wars","Lego Marvel's Avengers","Rainbow Six Siege","Youtubers Life 2","Marvel's Spider-Man","Sea of Thieves","The room","Overcooked","Plato","The Witcher","PUBG","Mirror's Edge","Goat Simulator","Steep","Escape the backroom","World of Goo","World of Warcraft","Diablo","Hearthstone","Star Citizen","Heroes of the Storm"],filled=True)
plt.show()

y_pred = model.predict(X_test)

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred, average='weighted')
recall = recall_score(y_test, y_pred, average='weighted')
f1 = f1_score(y_test, y_pred, average='weighted')

print("Accuracy : ", accuracy)
print("Precision : ", precision)
print("Recall : ", recall)
print("F1 Score : ", f1)

from sklearn.tree import plot_tree
import matplotlib.pyplot as plt



example_game = [[1,0,0,0,1,1,1,0,0,0,0,0,0,0,1,0]]
print("Prediction pour le jeu d'exemple :", model.predict(example_game))
