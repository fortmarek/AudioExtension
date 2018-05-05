import AVFoundation

final class ApplicationModule: DependencyModule {
    let playEngine = SimplePlayEngine(componentType: kAudioUnitType_Effect)
}
