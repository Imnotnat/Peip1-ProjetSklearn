<Projet de Classification et de Suggestion de Jeux>

Ce projet contient des scripts en Python pour classifier et suggérer des jeux vidéo en utilisant un modèle d'arbre de décision.

Fichiers:

    - main.py: Script principal qui entraine un modèle d'arbre de décision pour classifier des jeux vidéo en fonction de diverses caractéristiques. Il peut génerer des règles en fichier texte à partir du modèle et proposer des jeux à l'utilisateur.

    - testParametres.py: Script pour tester différents paramètres de l'arbre de décision et trouver la meilleure combinaison de paramètres pour obtenir la meilleure précision.

    - txtRules2ClipsRules.py: Script pour convertir des règles textuelles (génerées par le fichier main.py) en règles CLIPS.

    - rules.clp : Base de règles en CLIPS, genérée par le fichier txtRules2ClipsRules.py
    
Prérequis :

Avant d'exécuter les scripts, assurez-vous d'avoir les bibliothèques Python suivantes installées:

    - pandas
    - scikit-learn
    - matplotlib
    - numpy
    - re

Vous pouvez les installer en utilisant pip:

pip install pandas 
pip install scikit-learn 
pip intall matplotlib 
pip install numpy

Utilisation :
1. main.py

Ce script entraine un modèle d'arbre de décision pour classifier des jeux vidéo, affiche des métriques de performance et génère un arbre de décision graphique.

 Exécution :
 Pour bien l'utiliser, il faut définir la variable TREE à True si l'on souhaite dessiner l'arbre et à False sinon.
 On peut afficher les différentes metriques en mettant la variable METRICS à True.
 Enfin, en changeant la dernière fonction on peut soit lancer le programme sous forme de test, le programme nous demande alors quel type de jeux on recherche et nous propose alors une suggestion, ou alors sous forme de générateur de règle. 
 Pour l'utiliser sous forme de generateur, il faut mettre sortTexte() en fin de programme(ici par défaut), et pour proposer un jeu à l'utilisateur, il faut mettre main() en fin à la place de sortTexte().


2. testParametres.py

Ce script teste différentes combinaisons de paramètres pour l'arbre de décision afin de trouver les paramètres optimaux.
 Exécution:
 Au lancement du programme, celui-ci va afficher dans la console 25 fois les meilleurs paramètres testés.


3. txtRules2ClipsRules.py

Ce script convertit des règles textuelles en règles CLIPS utilisables par le système expert CLIPS.
 Exécution:
 Changer les variables à la fin : "input_file" et "output_file" en fonction du fichier de base et du fichier de sortie souhaité.

4. rules.clp
Ce script est la résultante des règles genérées par main.py et converties par txtRules2ClipsRules.py.
 Exécution:
 Afin d'essayer de proposer un jeu, il faut mettre nos caractéristiques voulues dans la base de faits df1 à la fin du programme.
 En chargeant le fichier puis, (reset) et enfin (run), on voit dans les faits le jeu proposé. 


 Auteurs

Natis BOURACHOT
Matthieu NOEL
Ezedine BARATLI
James DUBURCQ

 Licence:

MIT License

Copyright (c) 2024 BOURACHOT NOEL BARATLI DUBURCQ

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.