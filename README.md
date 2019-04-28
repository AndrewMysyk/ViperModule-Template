# ViperModule-Template
Templates, that help in easy way to create new VIPER modules

[Original template](https://github.com/Juanpe/Swift-VIPER-Module "Original template")

## Warning!
Template need to be used with navigation flow coordinator!

[How to use the coordinator pattern in iOS apps](https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps "How to use the coordinator pattern in iOS apps")

# How to install template

1. Open terminal and use command:
`sudo swift install.swift`
2. Copy `BaseProtocols.swift` to project folder

## Code Example With Coordinator　

```swift

//MARK: Coordinator
protocol FlowCoordinatorProtocol: class {
    init(navigatoionController: UINavigationController)
    func start()
}

final class FlowCoordinator: FlowCoordinatorProtocol {
    private var navigationController: UINavigationController?
    
    init(navigatoionController: UINavigationController) {
        self.navigationController = navigatoionController
    }
    
    func start() {
        let module = Module.create()
        module.input.backActionBlock = {
            self.navigationController?.popViewController(animated: true)
        }
        navigationController?.pushViewController(module.view, animated: true)
    }
}

//MARK: Router
final class ModuleRouter: ModuleInput {
    var backActionBlock: (() -> Void)?
}

extension ModuleRouter: ModuleRouterInput {
    func backAction() {
        backActionBlock?()
    }
}

//MARK: Module Components Protocols
//MARK: Assembler -
protocol ModuleInput: class {
     var backActionBlock: (() -> Void)? { get set }
}
//MARK: Presenter -> Router
protocol ModuleRouterInput: class {
    func backAction()
}
```
