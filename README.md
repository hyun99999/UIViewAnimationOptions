# UIViewAnimationOptions
π§¨ UIView.AnimationOptions μ΄μ©ν μ ν μ λλ©μ΄μ λμμ 

### UIView transition animation options

λ¨Όμ  κ°λ°μλ¬Έμλ₯Ό μ΄ν΄λ³΄μ
[transition(with:duration:options:animations:completion:)](https://developer.apple.com/documentation/uikit/uiview/1622574-transition)

- νΉμ  container λ·°μ transition animation μ λ§λλ ν¨μμ΄λ€.

animation ν¨κ³Όλ₯Ό μ£ΌκΈ° μν΄μ νλΌλ―Έν° options μ ν΄λΉνλ `UIView.AnimationOptions` μ΅μμ μ€μ ν΄μ£Όλ©΄ λλ€.

### μ€λΉ

- Main.storyboard

<img src ="https://user-images.githubusercontent.com/69136340/130177903-9132cd8e-1533-48d0-a838-48d2509b8e60.png" width ="500">


- ViewController.swift

```swift
import UIKit

class ViewController: UIViewController {

    private var isInitialImage = true
    
    @IBOutlet weak var initialImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialImageView.image = UIImage(named: "initialImg")
        initialImageView.contentMode = .scaleAspectFill
    }

    @IBAction func touchTransitionButton(_ sender: Any) {
        print("transitionButton touched.")
        
        // β μλ©΄μ κ²½μ°
        if isInitialImage {
            self.isInitialImage = false
            initialImageView.image = UIImage(named: "transitionImg")
            
            // β options νλΌλ―Έν°μ μνλ ν¨κ³Όμ ν΄λΉνλ μ΅μμ λ£μ΄μ£Όλ©° λλ€.
            UIView.transition(with: initialImageView, duration: 1, options:.transitionFlipFromLeft, animations: nil, completion: nil)
        }
        // β λ·λ©΄μ κ²½μ°
        else {
            self.isInitialImage = true
            initialImageView.image = UIImage(named: "initialImg")
            UIView.transition(with: initialImageView, duration: 1, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
}

```

### UIView.AnimationOptions constants. 
transition animation ννμ μ§μ μ μΈ μ΅μλ€μ μ€μ΅ν΄λ³΄μλ€.

- [transitionCrossDissolve](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622499-transitioncrossdissolve)

<img src ="https://user-images.githubusercontent.com/69136340/130177363-8bd4c50c-41e2-47e8-a3ec-5c63f2dd7a08.gif" width ="250">

- [transitionCurlDown](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622455-transitioncurldown)

<img src ="https://user-images.githubusercontent.com/69136340/130177368-3e779e27-ce9c-48ba-8cc6-e91b9f4180e7.gif" width ="250">


- [transitionCurlUp](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622637-transitioncurlup)

<img src ="https://user-images.githubusercontent.com/69136340/130177370-c425beea-0a9b-41c4-84db-36fba0fadd6e.gif" width ="250">

- [transitionFlipFromBottom](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622632-transitionflipfrombottom)

<img src ="https://user-images.githubusercontent.com/69136340/130177451-7bc98464-7404-4f41-b396-5d99983e4423.gif" width ="250">

- [transitionFlipFromLeft]()

<img src ="https://user-images.githubusercontent.com/69136340/130177490-2215b1c7-1e85-48a2-94db-14361e3eeb79.gif" width ="250">

- [transitionFlipFromRight](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622573-transitionflipfromright)

<img src ="https://user-images.githubusercontent.com/69136340/130177508-d14058bc-5d4a-4113-8df0-7be61bcfb51d.gif" width ="250">

- [transitionFlipFromTop](https://developer.apple.com/documentation/uikit/uiview/animationoptions/1622548-transitionflipfromtop)

<img src ="https://user-images.githubusercontent.com/69136340/130177539-547c8875-094f-41d8-b215-ef9d9e561310.gif" width ="250">
