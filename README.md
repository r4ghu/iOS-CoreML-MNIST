# iOS-CoreML-MNIST

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/SMalireddi)

This is the implementation of Number recognition using Keras-MNIST model on Apple's CoreML Framework.

The app fetches image from your hand writing and perform number recognition in real-time.

## Requirements

- Xcode 10.0 beta
- iOS 12
- For training: Python 3.6 (Keras 2.1.6, TensorFlow 1.5.0, CoreMLTools 2.0b1)

## Usage

To use this app, open **iOS-CoreML-MNIST.xcodeproj** in Xcode 10 and run it on a device with iOS 12. (You can also use simulator)

## Training

If you want to train your own custom model, follow the tutorial given below to create an anaconda environment. Enter the environment and run the following commands in terminal with `./nnet` as master directory.

```
(coreml) $ python train.py
(coreml) $ python convert.py
```

I also included a jupyter notebook for better understanding the above code. You need to use it with root permissions for mainly converting the keras model to CoreML model. Initialise the jupyter notebook instance with the following command:

```
(coreml) $ jupyter notebook --allow-root
```

## Tutorial

If you are interested in training your custom MNIST model from scratch, a **step-by-step tutorial** is available at - [**Link**](https://sriraghu.com/2017/07/06/computer-vision-in-ios-coremlkerasmnist/)

## Results

These are the results of the app when tested on iPhone 7. 

<img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0016.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0017.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0018.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0019.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0020.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0021.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0022.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0023.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0024.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0025.PNG" alt="Result 1" width="280"> <img src="https://github.com/r4ghu/iOS-CoreML-MNIST/blob/master/Screenshots/IMG_0026.PNG" alt="Result 1" width="280">

## Donation
If this project helped you reduce time to develop, you can give me a cup of coffee :) 

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/SMalireddi)

## Author

Sri Raghu Malireddi / [@r4ghu](https://sriraghu.com)
