# Kinect Paint and facial expression ML Program

###### Markus Hudobnik and Eli Kopp-Devol

### Goals
* The goal for this project is to create an interactive digital painting program which allows you to create art on your computer with simple body movements rather than the standard input of a mouse or stylus. This is particularly exciting as it allows you to be extremely expressive in your art. The initial concept will just use a combination of hand and face gestures to paint but could easily be adapted to turn, say, a choreographed dance into a piece of physical artwork. Alternatively, it could be adapted to allow a person with disabilities to paint using only their eyes (using an eye tracker rather than a hand tracker) or any part of their body that they have control over, without having to worry about holding on to anything.

### Tools/Libraries
* Xbox 360 Kinect: Used as the input to track both right hand location as well as left and right knee location
* Basic Paint Sketch: Used as the output to create an environment in which colored lines could be drawn using data sent from wekinator. This made use of processing's basic line drawing function, line color function, line size function and used OSC inputs of x, y and z coordinates as well as a simple class input for color selection.

### ML Algorithms Used/Tested
* The below metrics show the model performance using different ML algorithms. The first 5 sets of metrics show performance on the regression part of the project and the last set of metrics shows performance of the classification part of the project. As can most likely be deduced from the data, we have used linear regression in our final model of the regression data and KNN(1) for the classification data. We chose to use linear regression over polynomial regression as it makes more sense in the context of directly mapping hand position in front of the body to brush location on the square canvas. By training on the corners of this canvas, we allow the algorithm to apply a linear regression to all points in between, giving good direct mapping. For the classification data, any of the algorithms would probably work (except the boosted stump) but we picked KNN with 3 neighbors as it gave an excellent fit and helped sort out random noise.

* Neural Network - 1 Layer
  - X-loc: 2.98 RMS
  - Y-loc: 0.86 RMS
  - Size: 0.41 RMS

* Neural Network - 2 Layers
  - X-loc: 4.69 RMS
  - Y-loc: 3.37 RMS
  - Size: 0.36 RMS

* Linear Regression
  - X-loc: 52.74 RMS
  - Y-loc: 27.85 RMS
  - Size: 5.21 RMS

* Polynomial Regression - 2nd Order
  - X-loc: 52.6 RMS
  - Y-loc: 27.99 RMS
  - Size: 5.23 RMS

* Polynomial Regression - 3nd Order
  - X-loc: 52.77 RMS
  - Y-loc: 27.83 RMS
  - Size: 5.21 RMS

* Color Choice (Classifier)
  - KNN(1): 100% Fit
  - KNN(3): 100% Fit
  - Boosted Stump:47.59% Fit
  - Boosted Tree: 98.99% Fit
  - Basic Tree:  98.99% Fit
  - Naive Bayes: 100% Fit

### What was accomplished
* Our goal of a simple kinect to paint gesture system. It is working as intended, although more training will be needed to fine-tune the abilities. We also may change how to activate each paint color to be more accessible as well.

### Challenges
* The biggest challenge that we encountered was getting a program to work with the Kinect and OSC. We opted to find a processing way to do it, which required a library called SimpleOpenNI and processing 2.0. It was also a little rough getting the paint program to interact with wekinator, but now we have a better understanding of OSC and how it interacts with processing and wekinator.

### Lessons Learned
* A better understanding of how to use and interact with OSC (via processing), using Wekinator input helper to feature extract from the kinect, and how to train different inputs and outputs using both regression and classification

### Demo Video
* [Video][1] <[https://vimeo.com/255834395/][1]>
