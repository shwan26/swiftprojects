//
//  ViewController.swift
//  Three Charts Sample
//
//  Created by Giyu Tomioka on 9/7/24.
//

import UIKit
import DGCharts

class ViewController: UIViewController {
    
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var barChartView: BarChartView!
    @IBOutlet weak var pieChartView: PieChartView!
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var barLabel: UILabel!
    @IBOutlet weak var pieLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lineLabel.text = "Line Chart"
        barLabel.text = "Bar Chart"
        pieLabel.text = "Pie Chart"
        setupLineChart()
        setupBarChart()
        setupPieChart()
    }
    
    // Function to set up Line Chart
       func setupLineChart() {
           let dataEntries = [
               ChartDataEntry(x: 1.0, y: 20.0),
               ChartDataEntry(x: 2.0, y: 30.0),
               ChartDataEntry(x: 3.0, y: 50.0),
               ChartDataEntry(x: 4.0, y: 80.0)
           ]
           let dataSet = LineChartDataSet(entries: dataEntries, label: "Line Data")
           dataSet.colors = [UIColor.red]
           let data = LineChartData(dataSet: dataSet)
           lineChartView.data = data
       }

       // Function to set up Bar Chart
       func setupBarChart() {
           let barDataEntries = [
               BarChartDataEntry(x: 1.0, y: 15.0),
               BarChartDataEntry(x: 2.0, y: 25.0),
               BarChartDataEntry(x: 3.0, y: 35.0),
               BarChartDataEntry(x: 4.0, y: 60.0)
           ]
           let barDataSet = BarChartDataSet(entries: barDataEntries, label: "Bar Data")
           barDataSet.colors = [UIColor.blue]
           let barData = BarChartData(dataSet: barDataSet)
           barChartView.data = barData
       }

       // Function to set up Pie Chart
       func setupPieChart() {
           let pieDataEntries = [
               PieChartDataEntry(value: 40.0, label: "Category 1"),
               PieChartDataEntry(value: 30.0, label: "Category 2"),
               PieChartDataEntry(value: 20.0, label: "Category 3"),
               PieChartDataEntry(value: 10.0, label: "Category 4")
           ]
           let pieDataSet = PieChartDataSet(entries: pieDataEntries, label: "Pie Data")
           pieDataSet.colors = ChartColorTemplates.material()
           let pieData = PieChartData(dataSet: pieDataSet)
           pieChartView.data = pieData
       }


}

