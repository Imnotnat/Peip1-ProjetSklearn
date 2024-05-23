from sklearn.datasets import load_iris
import pandas
iris = load_iris()

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

for _ in range(25):

    max_accuracy = 0
    param = ()

    for depth in [1,2,3,4,5,6,10,12,15,20,25,30,35,37,38,32,34,40,45]:
        for samples_leaf in [2,3,5,10,15,20,25,30,35,40]:
            for size in [0.1,0.2,0.3,0.25,0.3,0.4,0.45,0.5]:

                from sklearn.model_selection import train_test_split
                X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=size) # 20% test

                from sklearn.tree import DecisionTreeClassifier
                model = DecisionTreeClassifier(max_depth=depth, min_samples_leaf= samples_leaf)

                model.fit(X_train, y_train)
                y_pred = model.predict(X_test)

                from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

                accuracy = accuracy_score(y_test, y_pred)
            
                #print("Accuracy with", depth, " prof. |", samples_leaf, "samples : " , accuracy)

                if max_accuracy< accuracy:
                    max_accuracy= accuracy
                    param = (depth, samples_leaf,size)

    print("Les meilleurs param sont : ", param[0], "prof. |", param[1], "sample|",param[2],"size. Bravo !")
    print("Score :", max_accuracy)

