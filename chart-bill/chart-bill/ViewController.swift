//
//  ViewController.swift
//  chart-bill
//
//  Created by Giyu Tomioka on 9/7/24.
//

import UIKit
import DGCharts

class ViewController: UIViewController {
    
    @IBOutlet weak var waterUsageChartView: LineChartView!
    @IBOutlet weak var electricityUsageChartView: LineChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupChartView(waterUsageChartView, withData: [
                    ChartDataEntry(x: 6, y: 9),
                    ChartDataEntry(x: 7, y: 10),
                    ChartDataEntry(x: 8, y: 27),
                    ChartDataEntry(x: 9, y: 25),
                    ChartDataEntry(x: 10, y: 10),
                    ChartDataEntry(x: 11, y: 9),
                    ChartDataEntry(x: 12, y: 11),
                    ChartDataEntry(x: 13, y: 10)
                ], label: "Water Usage", lineColor: .white, fillColor: .blue, backgroundColor: .blue, average: 14.00)
                
                setupChartView(electricityUsageChartView, withData: [
                    ChartDataEntry(x: 6, y: 40),
                    ChartDataEntry(x: 7, y: 46),
                    ChartDataEntry(x: 8, y: 120),
                    ChartDataEntry(x: 9, y: 121),
                    ChartDataEntry(x: 10, y: 45),
                    ChartDataEntry(x: 11, y: 45),
                    ChartDataEntry(x: 12, y: 40),
                    ChartDataEntry(x: 13, y: 40)
                ], label: "Electricity Usage", lineColor: .white, fillColor: .orange, backgroundColor: .orange, average: 63.38)
    }
    
    private func setupChartView(_ chartView: LineChartView, withData entries: [ChartDataEntry], label: String, lineColor: UIColor, fillColors: [UIColor], backgroundColor: UIColor, average: Double) {
            let dataSet = LineChartDataSet(entries: entries, label: label)
            dataSet.setColor(lineColor)
            dataSet.drawCirclesEnabled = true
            dataSet.drawValuesEnabled = true
            dataSet.valueColors = [lineColor] // Set color of point labels
            dataSet.valueFont = UIFont.systemFont(ofSize: 10) // Set font size of point labels
            dataSet.lineWidth = 2.0
            dataSet.mode = .cubicBezier // Smooth curve
            
            // Configure fill
            dataSet.drawFilledEnabled = true
            let gradientColors = fillColors.map { $0.cgColor }
            let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColors as CFArray, locations: [0.0, 1.0])
            dataSet.fill = Fill.fillWithLinearGradient(gradient, angle: 90)
            dataSet.fillAlpha = 0.5
            
            let data = LineChartData(dataSet: dataSet)
            chartView.data = data
            chartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: ["6 AM", "7 AM", "8 AM", "9 AM", "10 AM", "11 AM", "12 PM", "Now"])
            chartView.xAxis.labelPosition = .bottom
            chartView.xAxis.drawGridLinesEnabled = false
            chartView.rightAxis.enabled = false
            
            // Remove Y-Axis labels
            chartView.leftAxis.drawLabelsEnabled = false
            chartView.leftAxis.drawGridLinesEnabled = false
            
            chartView.legend.enabled = false
            
            // Add average line
            let avgLine = ChartLimitLine(limit: average)
            avgLine.lineColor = .white
            avgLine.lineWidth = 1.0
            avgLine.lineDashLengths = [4.0, 2.0] // Dotted line
            avgLine.labelPosition = .rightBottom
            avgLine.valueTextColor = .white
            chartView.leftAxis.addLimitLine(avgLine)
            
            chartView.chartDescription.text = ""
            
            // Set background gradient
            setGradientBackground(for: chartView, color: backgroundColor)
        }

        private func setGradientBackground(for chartView: LineChartView, color: UIColor) {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = chartView.bounds
            let colors: [CGColor]
            
            if color == .lightBlue {
                colors = [UIColor.lightBlue.cgColor, UIColor.white.cgColor]
            } else {
                colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
            }
            
            gradientLayer.colors = colors
            gradientLayer.locations = [0.0, 1.0]
            
            // Remove any existing gradient layers
            if let existingLayer = chartView.layer.sublayers?.first(where: { $0 is CAGradientLayer }) {
                existingLayer.removeFromSuperlayer()
            }
            
            chartView.layer.insertSublayer(gradientLayer, at: 0)
        }
    }

    // UIColor extensions to define custom colors
extension UIColor {
        static let lightBlue = UIColor(red: 173/255, green: 216/255, blue: 230/255, alpha: 1.0) // Light Blue
}
