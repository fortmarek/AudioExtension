//
//  AudioUnitViewController.swift
//  ViewExtension
//
//  Created by Marek Fořt on 5/5/18.
//

import CoreAudioKit

public class AudioUnitViewController: AUViewController, AUAudioUnitFactory {
    var audioUnit: AUAudioUnit?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if audioUnit == nil {
            return
        }
        
        // Get the parameter tree and add observers for any parameters that the UI needs to keep in sync with the AudioUnit
    }
    
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try ViewExtensionAudioUnit(componentDescription: componentDescription, options: [])
        
        return audioUnit!
    }
    
}
