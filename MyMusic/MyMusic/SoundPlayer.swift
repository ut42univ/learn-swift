//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Takuya Uehara on 2024/10/12.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました")
        }
        
    }
    
    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました")
        }
    }
}
