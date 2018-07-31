# determine whether a heavenly body is a star(0), planet(1) or satelite(2)
from sklearn import tree

# training data ([[diameter, revolution period]])
features = [[1.3*10**6, 250*10**6], [1.8*10**7, 300*10**6], [1.6*10**9, 780*10**5], [1.2*10**4, 1], [3.6*10**5, 3.2], [0.1*10**4, 50], [3.4*10**3, 0.084], [2.5*10**3, 0.1], [6.3*10**3, 0.4]]
labels = [0, 0, 0, 1, 1, 1, 2, 2, 2]

# create classifier and train it
clf = tree.DecisionTreeClassifier()
clf = clf.fit(features, labels)

# predict
predictions = clf.predict([[2.9*10**7, 630*10**4], [5.1*10**2, 0.8]])
print(predictions)
