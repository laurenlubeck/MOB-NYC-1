// Playground - noun: a place where people can play

import UIKit

class Player {
    var message: String
    var damage: Int
}


class GoodPlayer: Player {
    var healthMetric = 100
    
    func pow() -> (message:String, damage: Int) {
        message = "You have been powed"
        damage = 20
    }
    
    func wham() -> (message:String, damage: Int) {
        message = "You have been whammed"
        damage = 50
    }
}

class BadPlayer : Player {
    var healthMetric = 100
    
    func kapow() -> (message:String, damage: Int) {
        message = "You have been ka-powed"
        damage = 20
    }
    
    func boom() -> (message:String, damage: Int) {
        message = "You have been boomed"
        damage = 50
    }
    
}

class Match {
    func isAlive(Int) -> Bool {
        if healthMetric > 0 {
            return true
        } else {println "\(player) is dead and has lost!"
    }
    
    func playerTurn(String) -> String {
        var turnGoodPlayer = 0
        var turnBadPlayer = 1
        
 if turnGoodPlayer < turnBadPlayer (goodPlayerGo && turnGoodPlayer =+ 1 && applies damage && appies message)
        
        else badPlayerGo && turnBadPlayer =+ 1 && applies damage && appies message)
    }
}