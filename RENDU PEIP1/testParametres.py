from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split, KFold
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score


import pandas


df = pandas.read_csv("data/data.csv", sep=";")

# Séparer les caractéristiques (X) et la cible (y)
X = df.drop('JEU', axis=1)  # Utiliser toutes les colonnes sauf 'JEU' comme caractéristiques
y = df['JEU']  # Utiliser la colonne 'JEU' comme cible

for _ in range(25):

    max_accuracy = 0
    max_pres = 0
    max_recall = 0
    max_f1 = 0

    param = ()
    for fold in [2,3,4,5,6]:
        for depth in [1,2,3,4,5,6,10,12,15,20,25,30,35,37,38,32,34,40,45]:
            for samples_leaf in [2,3,5,10,15,20,25,30,35,40]:
                accuracy = 0
                precision = 0
                recall = 0
                f1 = 0

                kf = KFold(n_splits=fold)
                kf.get_n_splits(X)

                model = DecisionTreeClassifier(max_depth=depth, min_samples_leaf= samples_leaf)

                for i, (train_index, test_index) in enumerate(kf.split(X)):
                   
                    # Séparer les données en ensembles de formation et de test pour ce pli
                    X_train, X_test = X.iloc[train_index], X.iloc[test_index]
                    y_train, y_test = y.iloc[train_index], y.iloc[test_index]
                    
                    model.fit(X_train, y_train)
                    y_pred = model.predict(X_test)
                    
                    accuracy += accuracy_score(y_test, y_pred)
                    
                    precision += precision_score(y_test, y_pred, average="weighted", zero_division=0)
                    recall += recall_score(y_test, y_pred, average="weighted",zero_division=0)
                    f1 += f1_score(y_test, y_pred, average='weighted',zero_division=0)
                 
                
                if max_accuracy< accuracy/fold:
                    #print(accuracy,"->", accuracy/fold)
                    max_accuracy= accuracy/fold
                    max_pres = precision/fold
                    max_recall = recall/fold
                    max_f1 = f1/fold
                    param = (depth, samples_leaf,fold)

    print("Les meilleurs param sont : ", param[0], "prof. |", param[1], "sample|",param[2],"fold",". Bravo !")
    print("")
    print("Score :", max_accuracy)
    print("Precision :", max_pres)
    print("Recall :", max_recall)
    print("F1 :", max_f1)

