import pandas
from sklearn.model_selection import train_test_split,KFold
import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import _tree
import random

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score
import numpy as np

#Mettre à True si vous voulez afficher
TREE = False
METRICS = False

col_names =["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"]

df = pandas.read_csv("data/data4.csv", sep=";")

# Séparer les caractéristiques (X) et la cible (y)
X = df.drop('JEU', axis=1)  # Utiliser toutes les colonnes sauf 'JEU' comme caractéristiques
y = df['JEU']  # Utiliser la colonne 'JEU' comme cible

#Initialisation du modèle
model = DecisionTreeClassifier(max_depth=20, min_samples_leaf=2)

#Initialiser KFold
kf = KFold(n_splits=5)
kf.get_n_splits(X)

for i, (train_index, test_index) in enumerate(kf.split(X)):

     # Séparer les données en ensembles de formation et de test pour ce pli
    X_train, X_test = X.iloc[train_index], X.iloc[test_index]
    y_train, y_test = y.iloc[train_index], y.iloc[test_index]
    
    # Entraîner le modèle
    model.fit(X_train, y_train)
    
    # Faire des prédictions
    y_pred = model.predict(X_test)
    
    # Calcule et affiche les métriques si METRICS
    if METRICS:

        accuracy = accuracy_score(y_test, y_pred)
        precision = precision_score(y_test, y_pred, average="weighted")
        recall = recall_score(y_test, y_pred, average="weighted")
        f1 = f1_score(y_test, y_pred, average='weighted')

        print("Accuracy : ", accuracy)
        print("Precision : ", precision)
        print("Recall : ", recall)
        print("F1 Score : ", f1)


if TREE:

    plot_tree(model, feature_names= ["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"], class_names=["Valorant","Fifa","Mario-Bros","Flight-Simulator","Rocket league","CSGO","F1 23","Just Cause","GTA","NBA 2K24","Minecraft","Ark Survival","Super Market Simulator","Fortnite","Call of duty Warzone","Call of duty Zombie","Red dead redemption","Outlast","League of legends","Zelda","Phasmophobia","Clash royale","Resident Evil","Street Fighter","Roblox","Garry's mod","Among Us","Overwatch","Raft","Hello Neighboor","Cities Skylines","Sims 4","Clash of Clans","Brawls Stars","HayDay","Subway Surfer","Tetris","Geometry Dash","Pokemon","Pac Man","StoryTeller","Agar io","Infinite Craft","Fruit Ninja","Internet Cafe Simulator 2","Apex Legends","Elden Ring","Assassin's Creed","Watch Dogs 2","Football Manager 2024","Palworld","Horizon Zero Dawn","Subnautica","Euro Truck Simulator 2","Final Fantasy XV","Farming Simulator 24","Planet Zoo","Eco","Satisfactory 2","Trove","World of Tanks","Life is Strange","Jurassic World Evolution 2","House Flipper","Star Wars Battlefront 2","Trackmania","Paladins","Mortal Kombat","Monster Hunter","Surviving Mars","Battlefield","Slime Rancher","Raid Shadow Legends","Need for speed","The crew 2","Portal","Far Cry","Lords Mobile","60 seconds","Marvel's Guardians of the Galaxy","Destiny 2","Plague Inc","Jedi Fallen Order","Crash Bandicoot","Tomb Raider","Uncharted","Tennis Elbow","Lego Star Wars","Lego Marvel's Avengers","Rainbow Six Siege","Youtubers Life 2","Marvel's Spider-Man","Sea of Thieves","The room","Overcooked","Plato","The Witcher","PUBG","Mirror's Edge","Goat Simulator","Steep","Escape the backroom","World of Goo","World of Warcraft","Diablo","Hearthstone","Star Citizen","Heroes of the Storm"],filled=True)
    plt.show()


def main():
    with open(".testsEffectues.txt", "w") as fr:

        for _ in range(150):
            game = [random.randint(0,10)/10 for i in range(16)]
            propose = model.predict([game])

            fr.write(str(game)+" -> "+str( propose)+"\n")
            print(game," -> ", propose)

main()
