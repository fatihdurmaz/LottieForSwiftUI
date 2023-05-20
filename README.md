

# SwiftUI Lottie Animation Package

This Swift package allows you to easily use Lottie animations in SwiftUI applications. Simply add your Lottie animation files to your project and use this package to display the animations.


##  Features
- Using Lottie animations in SwiftUI applications
- Simple configuration to display the animation file
- Customizable loop mode option
## Requirements

- Swift 5 or later
- iOS 15.0 or later
- Lottie library

## Installation

You can include this package in your project via Swift Package Manager. In your Xcode project, go to "File" -> "Swift Packages" -> "Add Package Dependency" and add the following URL:

```url
https://github.com/fatihdurmaz/LottieForSwiftUI
```


## Usage/Examples

```swift
import SwiftUI
import LottieForSwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //for local file
            LottieView(fileName: "file_name", loopMode: .loop)
                .frame(width: 200, height: 200)
            //for url
            LottieView(url:URL(string: "example.com/animation.json")!, loopMode: .loop)
                .frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```

Provide the name of your Lottie animation file to the fileName parameter of the LottieView structure. Optionally, you can also specify the loopMode parameter, which is used to control how the animation will loop. It takes the default value of .loop.  
