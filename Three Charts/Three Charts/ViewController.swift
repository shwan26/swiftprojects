//
//  ViewController.swift
//  Three Charts
//
//  Created by Giyu Tomioka on 9/7/24.
//

import UIKit
import DGCharts

class ViewController: UIViewController, ChartViewDelegate {

    var lineChart = LineChartView()
    var barChart = BarChartView()
    var pieChart = PieChartView()
    
    var barChartLabel = UILabel()
    var lineChartLabel = UILabel()
    var pieChartLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lineChart.delegate = self
        barChart.delegate = self
        pieChart.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChartLabel.text = "Line Chart Example"
        lineChart.frame = CGRect(x: 20, y: 100, width: self.view.frame.size.width - 40, height: self.view.frame.size.width / 3)
               view.addSubview(lineChart)

               
        barChartLabel.text = "Bar Chart Example"
        barChart.frame = CGRect(x: 20, y: lineChart.frame.maxY + 20, width: self.view.frame.size.width - 40, height: self.view.frame.size.width / 3)
        view.addSubview(barChart)

        pieChartLabel.text = "Pie Chart Example"
               pieChart.frame = CGRect(x: 20, y: barChart.frame.maxY + 20, width: self.view.frame.size.width - 40, height: self.view.frame.size.width)
               view.addSubview(pieChart)

               // Populate data for all charts
               setBarChartData()
               setLineChartData()
               setPieChartData()
        }
        
    func setBarChartData() {
           var entries = [BarChartDataEntry]()
           for x in 0..<5 {
               entries.append(BarChartDataEntry(x: Double(x), y: Double(x * 10)))
           }
           
           let dataSet = BarChartDataSet(entries: entries, label: "Bar Chart Data")
//           dataSet.colors = ChartColorTemplates.joyful()
           let data = BarChartData(dataSet: dataSet)
           barChart.data = data
       }

       // MARK: - Line Chart Data
       func setLineChartData() {
           var entries = [ChartDataEntry]()
           for x in 0..<5 {
               entries.append(ChartDataEntry(x: Double(x), y: Double(x * 5)))
           }
           
           let dataSet = LineChartDataSet(entries: entries, label: "Line Chart Data")
//           dataSet.colors = [UIColor.cyan]
//           dataSet.circleColors = [UIColor.cyan]
           let data = LineChartData(dataSet: dataSet)
           lineChart.data = data
       }

       // MARK: - Pie Chart Data
       func setPieChartData() {
           let entries = [
               PieChartDataEntry(value: 15.0, label: "Joy"),
               PieChartDataEntry(value: 15.0, label: "James"),
               PieChartDataEntry(value: 40.0, label: "John"),
               PieChartDataEntry(value: 30.0, label: "Jack")
           ]
           
           let dataSet = PieChartDataSet(entries: entries, label: "Pie Chart Data")
           dataSet.colors = ChartColorTemplates.pastel()
           let data = PieChartData(dataSet: dataSet)
           pieChart.data = data
       
    }

}

