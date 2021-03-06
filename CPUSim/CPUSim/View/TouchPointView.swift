//
//  TouchPointView.swift
//  cs3339-proj-proto
//
//  Created by Connor Reid on 3/30/19.
//  Copyright © 2019 Connor Reid. All rights reserved.
//

import UIKit
import Pulsator

class TouchPointView: UIView {
    var pulsator: Pulsator?
    var dot: CAShapeLayer?
    var dotModel: DotModel?

    var name: String = "touchPoint"

    func setupWith(_ dotModel: DotModel) {
        self.dotModel = dotModel

        // Generate a Pulsator instance
        let pulsator = Pulsator.generatePulsator(radius: self.frame.width, backgroundColor: UIColor.blue.cgColor)

        // Add Pulsator as a sublayer to TouchPointView
        self.layer.addSublayer(pulsator)

        // Start pulsating
        pulsator.start()

        // Keep track of pulsator in order to change color, toggle off, etc
        self.pulsator = pulsator

        // Setup dot
        dot = CAShapeLayer.generateDotWith(
                self.dotModel!,
                color: UIColor.blue.cgColor)

        // Render dot
        self.layer.addSublayer(dot!)
    }

    func hitTest(_ touch: UITouch, event: UIEvent?) -> UIView? {
        guard let hitView = self.hitTest(
                CGPoint(x: touch.location(in: self).x + self.frame.width / 2,
                        y: touch.location(in: self).y + self.frame.height / 2),
                with: event)
                else {
            return nil
        }
        return hitView
    }

    func setCorrect() {
        // Change pulsator to green color
        pulsator?.backgroundColor = UIColor.green.cgColor

        // Remove previous dot
        dot?.removeFromSuperlayer()

        // Generate green dot
        dot = CAShapeLayer.generateDotWith(
                self.dotModel!,
                color: UIColor.green.cgColor)

        // Render green dot
        self.layer.addSublayer(dot!)
    }

    func setIncorrect() {
        // Change pulsator to dark red color
        pulsator?.backgroundColor = UIColor.darkRed.cgColor

        // Remove previous dot
        dot?.removeFromSuperlayer()

        // Generate dark red dot
        dot = CAShapeLayer.generateDotWith(
                self.dotModel!,
                color: UIColor.darkRed.cgColor)

        // Render dark red dot
        self.layer.addSublayer(dot!)
    }

    func reset() {
        // Change pulsator to blue color
        pulsator?.backgroundColor = UIColor.blue.cgColor

        // Remove previous dot
        dot?.removeFromSuperlayer()

        // Generate blue dot
        dot = CAShapeLayer.generateDotWith(
                self.dotModel!,
                color: UIColor.blue.cgColor)

        // Render blue dot
        self.layer.addSublayer(dot!)
    }

    func stop() {
        pulsator?.stop()
    }
}
