from sklearn.datasets import load_iris
iris = load_iris()


X = iris.data[:, :2]
y=iris.target


from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2) # 20% test

from sklearn.tree import DecisionTreeClassifier
model = DecisionTreeClassifier(max_depth=3, min_samples_leaf= 20)

model.fit(X_train, y_train)

import matplotlib.pyplot as plt
from sklearn.tree import plot_tree
plot_tree(model, feature_names= ['sepal_length','sepal_width','petal_length','petal_width'], class_names=["Iris-setosa","Iris-versicolor","Iris-virginica"],filled=True)
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

model.predict([[6.3,2.2]])
