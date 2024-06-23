import pandas
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
from sklearn.tree import DecisionTreeClassifier

from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score
import numpy as np

TREE = True

df = pandas.read_csv("data/data4.csv", sep=";")

# Séparer les caractéristiques (X) et la cible (y)
X = df.drop('JEU', axis=1)  # Utiliser toutes les colonnes sauf 'JEU' comme caractéristiques
y = df['JEU']  # Utiliser la colonne 'JEU' comme cible

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.1) # 10% test


model = DecisionTreeClassifier(max_depth=25, min_samples_leaf= 3)
col_names =["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"]

model.fit(X_train, y_train)

if TREE:

    plot_tree(model, feature_names= ["Multijoueur","Sport","FPS","Monde-ouvert","Violence","Realiste","Action","Strategie","Survie","Plateforme","Simulation","Voiture","Battle-royale","Horreur","Combat","Puzzle"], class_names=["Valorant","Fifa","Mario-Bros","Flight-Simulator","Rocket league","CSGO","F1 23","Just Cause","GTA","NBA 2K24","Minecraft","Ark Survival","Super Market Simulator","Fortnite","Call of duty Warzone","Call of duty Zombie","Red dead redemption","Outlast","League of legends","Zelda","Phasmophobia","Clash royale","Resident Evil","Street Fighter","Roblox","Garry's mod","Among Us","Overwatch","Raft","Hello Neighboor","Cities Skylines","Sims 4","Clash of Clans","Brawls Stars","HayDay","Subway Surfer","Tetris","Geometry Dash","Pokemon","Pac Man","StoryTeller","Agar io","Infinite Craft","Fruit Ninja","Internet Cafe Simulator 2","Apex Legends","Elden Ring","Assassin's Creed","Watch Dogs 2","Football Manager 2024","Palworld","Horizon Zero Dawn","Subnautica","Euro Truck Simulator 2","Final Fantasy XV","Farming Simulator 24","Planet Zoo","Eco","Satisfactory 2","Trove","World of Tanks","Life is Strange","Jurassic World Evolution 2","House Flipper","Star Wars Battlefront 2","Trackmania","Paladins","Mortal Kombat","Monster Hunter","Surviving Mars","Battlefield","Slime Rancher","Raid Shadow Legends","Need for speed","The crew 2","Portal","Far Cry","Lords Mobile","60 seconds","Marvel's Guardians of the Galaxy","Destiny 2","Plague Inc","Jedi Fallen Order","Crash Bandicoot","Tomb Raider","Uncharted","Tennis Elbow","Lego Star Wars","Lego Marvel's Avengers","Rainbow Six Siege","Youtubers Life 2","Marvel's Spider-Man","Sea of Thieves","The room","Overcooked","Plato","The Witcher","PUBG","Mirror's Edge","Goat Simulator","Steep","Escape the backroom","World of Goo","World of Warcraft","Diablo","Hearthstone","Star Citizen","Heroes of the Storm"],filled=True)
    plt.show()

y_pred = model.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred, average='weighted')
recall = recall_score(y_test, y_pred, average='weighted')
f1 = f1_score(y_test, y_pred, average='weighted')

print("Accuracy : ", accuracy)
print("Precision : ", precision)
print("Recall : ", recall)
print("F1 Score : ", f1)

from sklearn.tree import _tree

def convertAnsToList(text):
    game = [[0 for i in range(16)]]
    caract = text.upper().split(",")
    if "MULTIJOUEUR" in caract or "MULTI" in caract :
        game[0][0] = 1
    if "SPORT" in caract :
        game[0][1] = 1
    if "FPS" in caract :
        game[0][2] = 1
    if "MONDE-OUVERT" in caract or "OPENWORLD" in caract :
        game[0][3] = 1
    if "VIOLENCE" in caract :
        game[0][4] = 1
    if "REALISTE" in caract :
        game[0][5] = 1
    if "ACTION" in caract :
        game[0][6] = 1
    if "STRATEGIE" in caract :
        game[0][7] = 1
    if "SURVIE" in caract :
        game[0][8] = 1
    if "PLATEFORME" in caract :
        game[0][9] = 1
    if "SIMULATION" in caract :
        game[0][10] = 1
    if "VOITURE" in caract :
        game[0][11] = 1
    if "BATTLE-ROYALE" in caract :
        game[0][12] = 1
    if "HORREUR" in caract :
        game[0][13] = 1
    if "COMBAT" in caract :
        game[0][14] = 1
    if "PUZZLE" in caract :
        game[0][15] = 1
    print(game)
    return game


#Fonction du Cours.
def get_rules(tree, feature_names, class_names):
    tree_ = tree.tree_
    feature_name = [
        feature_names[i] if i != _tree.TREE_UNDEFINED else "undefined!"
        for i in tree_.feature
    ]

    paths = []
    path = []

    def recurse(node, path, paths):

        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            name = feature_name[node]
            threshold = tree_.threshold[node]
            p1, p2 = list(path), list(path)
            p1 += [f"({name} <= {np.round(threshold, 3)})"]
            recurse(tree_.children_left[node], p1, paths)
            p2 += [f"({name} > {np.round(threshold, 3)})"]
            recurse(tree_.children_right[node], p2, paths)
        else:
            path += [(tree_.value[node], tree_.n_node_samples[node])]
            paths += [path]

    recurse(0, path, paths)

    # trier selon le nombre d'exemples
    samples_count = [p[-1][1] for p in paths]
    ii = list(np.argsort(samples_count))
    paths = [paths[i] for i in reversed(ii)]

    rules = []
    for path in paths:
        rule = "if "

        for p in path[:-1]:
            if rule != "if ":
                rule += " and "
            rule += str(p)
        rule += " then "
        if class_names is None:
            rule += "response: "+str(np.round(path[-1][0][0][0],3))
        else:
            classes = path[-1][0][0]
            l = np.argmax(classes)
            rule += f"class: {class_names[l]} (proba: {np.round(100.0*classes[l]/np.sum(classes),2)}%)"
        rule += f" | based on {path[-1][1]:,} samples"
        rules += [rule]

    return rules 


def main():
    print("*******************************************\n\n")
    print("Bienvenue dans notre suggesteur de jeu !")
    print("Pour commencer, nous allons vous proposer des types de jeux et vous devrez noter sur 10 votre interet pour celui-ci !")
    print("Ensuite ... la magie opèrera et vous aurez une proposition de jeux.")
    print("Tout d'abord commençons par : ")

    game = []

    for i in range(len(col_names)):
        value = int(input(col_names[i]+" : "))/10
        game.append(value)
    

    print("Merci pour ses infos !!!")

    a="OUI"

    while a == "OUI":
        propose = model.predict([game])
    
        print("Attends un peu ... la magie va opérer ...")
        print("TADAAAA !")
        print("Je te propose de jouer à ", propose)

        print("N'hésites pas à me demander si tu veux un autre jeux qui réponds à tes critères.")
        a = input("Veux tu un autre jeux ? (OUI/NON)").upper()
    
    print("Merci d'avoir utilisé notre super suggestionneur, bon jeu à toi !")



def sortTexte():
    rules = get_rules(model, col_names, df['JEU'])
    with open("./rules.txt", "w") as fr:
        i=1
        for r in rules:
            fr.write("Regle{} {}\n".format(i,r))
            i = i + 1
    
sortTexte()