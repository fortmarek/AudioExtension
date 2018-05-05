import Reactant

final class MainController: ControllerBase<Void, MainRootView> {

    struct Properties {
        let playEngine: SimplePlayEngine
    }

    private let properties: Properties

    init(properties: Properties) {
        self.properties = properties
        super.init()
    }

    override func afterInit() {
        properties.playEngine.setEffect()
        rootView.rootView.backgroundColor = .black
    }
}
