import UIKit
import Reactant

final class MainWireframe: Wireframe {
    private let module: DependencyModule

    init(module: DependencyModule) {
        self.module = module
    }

    func entrypoint() -> UIViewController {
        let mainController = main()
        return UINavigationController(rootViewController: mainController)
    }

    private func main() -> MainController {
        return create { provider in
            let properties = MainController.Properties(playEngine: self.module.playEngine)
            return MainController(properties: properties)
        }
    }
}
