//
//  CoreAnimations.swift
//  Animatify
//
//  Created by Shubham Singh on 15/06/20.
//  Copyright © 2020 Shubham Singh. All rights reserved.
//

import UIKit
/// CoreAnimations
enum LayerAnimationFactory {
    static func getStrokeStartAnimation(duration: TimeInterval, toValue: CGFloat = 1.0) -> CABasicAnimation {
        let strokeStart = CABasicAnimation(keyPath: "strokeStart")
        strokeStart.duration = duration
        strokeStart.toValue = toValue
        strokeStart.isRemovedOnCompletion = false
        strokeStart.fillMode = .forwards
        return strokeStart
    }
    
    static func getStrokeEndAnimation(duration: TimeInterval, toValue: CGFloat = 1.0, isRemovedOnCompletion : Bool = false) -> CABasicAnimation {
        let strokeEnd = CABasicAnimation(keyPath: "strokeEnd")
        strokeEnd.duration = duration
        strokeEnd.toValue = toValue
        strokeEnd.isRemovedOnCompletion = isRemovedOnCompletion
        strokeEnd.fillMode = .forwards
        return strokeEnd
    }
    
    static func getPulsatingAnimation(duration: TimeInterval, toValue: CGFloat = 1.5) -> CABasicAnimation {
        let pulse = CABasicAnimation(keyPath: "transform.scale")
        pulse.duration = duration
        pulse.toValue = toValue
        pulse.timingFunction=CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeOut)
        pulse.autoreverses=true
        pulse.repeatCount = .infinity
        return pulse
    }
    
    static func getTranslateXAnimation(duration: TimeInterval, toValue: CGFloat = 1.5) -> CABasicAnimation {
        let translate = CABasicAnimation(keyPath: "transform.translation.x")
        translate.duration = duration
        translate.byValue = toValue
        translate.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        translate.autoreverses=true
        translate.repeatCount = .infinity
        return translate
    }
    
   static func getTranslateYAnimation(for duration : TimeInterval? = nil,withTanslation translation : Float? = nil) -> CABasicAnimation{
       let animation : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.y")
    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
       animation.duration = (duration ?? 0.5)/TimeInterval(animation.repeatCount)
       animation.autoreverses = false
       animation.byValue = translation ?? -5
    animation.isRemovedOnCompletion = false
    return animation
       }
    
    
    static func setOpacity(for duration : TimeInterval = 1,to Value : Float = 1.0) -> CABasicAnimation{
          let animation : CABasicAnimation = CABasicAnimation(keyPath: "opacity")
       animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
          animation.duration = duration
          animation.autoreverses = false
          animation.toValue = Value
        animation.isRemovedOnCompletion = false
       return animation
          }
    
}
