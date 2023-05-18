import SwiftUI
import Lottie

public struct LottieView: UIViewRepresentable {
    var fileName: String?
    var url: URL?
    var loopMode: LottieLoopMode = .loop

    public init(fileName: String, loopMode: LottieLoopMode = .loop) {
        self.fileName = fileName
        self.loopMode = loopMode
    }
    
    public init(fileURL: String, loopMode: LottieLoopMode = .loop) {
        self.url = URL(string: fileURL)
        self.loopMode = loopMode
    }

    public func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)

        let animationView = LottieAnimationView()
        var animation: LottieAnimation?
        
        if let fileName = fileName {
            animation = LottieAnimation.named(fileName)
        } else if let url = url {
            animation = LottieAnimation.filepath(url.path)
        }
        
        if let animation = animation {
            animationView.animation = animation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = loopMode
            animationView.play()
        } else {
            // Eksik dosya adı veya URL
            // İstediğiniz hata işleme veya varsayılan davranışı burada gerçekleştirebilirsiniz.
        }

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
        // Güncelleme gerektiren durumlar için gerekli kodlar
    }
}


