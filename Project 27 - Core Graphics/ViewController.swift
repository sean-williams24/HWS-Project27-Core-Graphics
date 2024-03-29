//
//  ViewController.swift
//  Project 27 - Core Graphics
//
//  Created by Sean Williams on 06/11/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var currentDrawType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawTwin()
    }
    
    @IBAction func redrawTapped(_ sender: Any) {
        currentDrawType += 1
        
        if currentDrawType > 8 {
            currentDrawType = 0
        }
        
        switch currentDrawType {
        case 0:
            drawShockedEmoji()
            
        case 1:
            drawCircle()
            
        case 2:
            drawCheckerBoard()
            
        case 3:
            drawRotatedSquares()
            
        case 4:
            drawLines()
            
        case 5:
            drawImagesAndText()
            
        case 6:
            drawRectangle()
            
        case 7:
            drawDisbeliefEmoji()
            
        case 8:
            drawTwin()
            
        default:
            break
        }
    }
    
    func drawShockedEmoji() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.yellow.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
            
            let leftEye = CGRect(x: 128, y: 120, width: 80, height: 90).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: leftEye)
            
            let rightEye = CGRect(x: 288, y: 120, width: 80, height: 90).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rightEye)
            
            let mouth = CGRect(x: 215, y: 360, width: 90, height: 90).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: mouth)
            
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        imageView.image = img
    }
    
    func drawDisbeliefEmoji() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.yellow.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
            
            
            let leftEye = CGRect(x: 128, y: 120, width: 80, height: 90).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: leftEye)
            
            let rightEye = CGRect(x: 288, y: 120, width: 80, height: 90).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rightEye)
            
            ctx.cgContext.drawPath(using: .fillStroke)
            
            
            ctx.cgContext.move(to: CGPoint(x: 100, y: 370))
            ctx.cgContext.addLine(to: CGPoint(x: 400, y: 370))
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
            
        }
        imageView.image = img
    }
    
    
    func drawRectangle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        imageView.image = img
    }
    
    
    func drawCircle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512).insetBy(dx: 5, dy: 5)
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            
            ctx.cgContext.addEllipse(in: rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        imageView.image = img
    }
    
    
    func drawCheckerBoard() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            
            for row in 0..<8 {
                for col in 0..<8 {
                    if (row + col) % 2 == 0 {
                        ctx.cgContext.fill(CGRect(x: col * 64, y: row * 64, width: 64, height: 64))
                    }
                }
            }
        }
        imageView.image = img
    }
    
    
    func drawRotatedSquares() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            ctx.cgContext.translateBy(x: 256, y: 256)
            
            let rotations = 16
            let amount = Double.pi / Double(rotations)
            
            for _ in 0 ..< rotations {
                ctx.cgContext.rotate(by: CGFloat(amount))
                ctx.cgContext.addRect(CGRect(x: -128, y: -128, width: 256, height: 256))
            }
            
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
        }
        imageView.image = img
    }
    
    fileprivate func drawLetterLine(_ ctx: UIGraphicsImageRendererContext,moveX: Int, moveY: Int, drawX: Int, drawY: Int) {
        ctx.cgContext.move(to: CGPoint(x: moveX, y: moveY))
        ctx.cgContext.addLine(to: CGPoint(x: drawX, y: drawY))
    }
    
    func drawTwin() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            let top = 5
            let bottom = 507
            ctx.cgContext.setLineWidth(5)

            drawLetterLine(ctx, moveX: 0, moveY: top, drawX: 100, drawY: top)
            drawLetterLine(ctx, moveX: 50, moveY: top, drawX: 50, drawY: bottom)
            drawLetterLine(ctx, moveX: 110, moveY: top, drawX: 135, drawY: bottom)
            drawLetterLine(ctx, moveX: 135, moveY: bottom, drawX: 160, drawY: top)
            drawLetterLine(ctx, moveX: 160, moveY: top, drawX: 185, drawY: bottom)
            drawLetterLine(ctx, moveX: 185, moveY: bottom, drawX: 210, drawY: top)
            drawLetterLine(ctx, moveX: 220, moveY: top, drawX: 320, drawY: top)
            drawLetterLine(ctx, moveX: 270, moveY: top, drawX: 270, drawY: bottom)
            drawLetterLine(ctx, moveX: 220, moveY: bottom, drawX: 320, drawY: bottom)
            drawLetterLine(ctx, moveX: 330, moveY: bottom, drawX: 330, drawY: top)
            drawLetterLine(ctx, moveX: 330, moveY: top, drawX: 430, drawY: bottom)
            drawLetterLine(ctx, moveX: 430, moveY: bottom, drawX: 430, drawY: top)
            
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
        }
        imageView.image = img
    }
    
    func drawLines() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            ctx.cgContext.translateBy(x: 256, y: 256)
            
            var first = true
            var length: CGFloat = 256
            
            for _ in 0 ..< 256 {
                ctx.cgContext.rotate(by: .pi / 2)
                
                if first {
                    ctx.cgContext.move(to: CGPoint(x: length, y: 50))
                    first = false
                } else {
                    ctx.cgContext.addLine(to: CGPoint(x: length, y: 50))
                }
                
                length *= 0.99
            }
            
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
        }
        imageView.image = img
    }
    
    
    func drawImagesAndText() {
        //Create a renderer at the correct size.
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = renderer.image { ctx in
            //Define a paragraph style that aligns text to the center.
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            //Create an attributes dictionary containing that paragraph style, and also a font.
            let attrs: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 36),
                .paragraphStyle: paragraphStyle
            ]
            
            //Wrap that attributes dictionary and a string into an instance of NSAttributedString.
            let string = "Watch out for the giant mouse, he really isn't to be trusted the sly thing"
            let attributedString = NSAttributedString(string: string, attributes: attrs)
            
            attributedString.draw(with: CGRect(x: 32, y: 32, width: 448, height: 448), options: .usesLineFragmentOrigin, context: nil)
            
            //Load an image from the project and draw it to the context.
            let mouse = UIImage(named: "mouse")
            mouse?.draw(at: CGPoint(x: 300, y: 180))
            
        }
        imageView.image = img
    }
}

