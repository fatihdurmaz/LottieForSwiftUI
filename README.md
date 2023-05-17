
# SwiftUI Lottie Animasyon Paketi

Bu Swift paketi, SwiftUI uygulamalarında Lottie animasyonlarını kolayca kullanmanızı sağlar. Lottie animasyon dosyalarınızı projenize ekleyin ve bu paketi kullanarak animasyonları görüntüleyin.



##  Özellikler
- Lottie animasyonlarını SwiftUI uygulamalarında kullanma
- Animasyon dosyasını görüntülemek için basit bir yapılandırma
- Döngü modunu özelleştirme seçeneği
## Gereksinimler

- Swift 5 veya sonraki sürümü
- iOS 15.0 veya sonraki sürümü
- Lottie kütüphanesi
## Kurulum

Bu paketi projenize Swift Package Manager aracılığıyla dahil edebilirsiniz. Xcode projesinde "File" -> "Swift Packages" -> "Add Package Dependency" seçeneklerini kullanarak aşağıdaki URL'yi ekleyin:

https://github.com/fatihdurmaz/LottieForSwiftUI


## Kullanım/Örnekler

```swift
import SwiftUI
import SwiftUILottiePaketi

struct ContentView: View {
    var body: some View {
        VStack {
            LottieView(fileName: "animasyon_dosya_adi", loopMode: .loop)
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

LottieView yapısının fileName parametresine Lottie animasyon dosyanızın adını verin. İsteğe bağlı olarak, loopMode parametresini de belirleyebilirsiniz. Bu parametre, animasyonun nasıl tekrarlanacağını kontrol etmek için kullanılır. Varsayılan olarak .loop değerini alır.
  
