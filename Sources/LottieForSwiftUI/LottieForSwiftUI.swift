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
    
    public init(url: URL, loopMode: LottieLoopMode = .loop) {
        self.url = url
        self.loopMode = loopMode
    }

    public func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)

        let animationView = LottieAnimationView()
        if let url = url {
            LottieAnimation.loadedFrom(url: url) { animation in
                animationView.animation = animation
            }
            
        } else if let fileName = fileName {
            let animation = LottieAnimation.named(fileName)
            animationView.animation = animation
        }
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

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
