//
//  ViewController.swift
//  Weather24HourlyDay
//
//  Created by dohien on 11/08/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource , UICollectionViewDelegate, UICollectionViewDataSource{
    let padding: CGFloat = 8
    let numberOfItem: CGFloat = 4
    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var todayLabel: UILabel!
    @IBOutlet weak var tempcLabel: UILabel!
    @IBOutlet weak var tableview: UITableView!
    var weatherday: [WeatherDay] = []
    var weatherhourly: [WeatherHourlyDay] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.backgroundColor = UIColor.clear
        tableview.backgroundColor = UIColor.clear
        DataService.shared.getDataFromApiClosure { [unowned self] (forecastDay) in
            self.nameLabel.text = forecastDay.name
            self.tempcLabel.text = String(Int(forecastDay.temp_c)) + "º"
            self.todayLabel.text = String(forecastDay.localtime_epoch.getDaysOfWeek())
            self.weatherday = forecastDay.weatherDay
            self.tableview.reloadData()
        }
        DataService.shared.getDataFromApiHourlyDay { [unowned self] (hourlyDay) in
            self.weatherhourly = hourlyDay.weatherhourly
            self.collectionview.reloadData()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherday.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.dateLabel.text = weatherday[indexPath.row].date_epoch.getDaysOfWeek()
        cell.maxtemcLabel.text = String(Int(weatherday[indexPath.row].maxtemp_c))
        cell.mintempcLabel.text = String(Int(weatherday[indexPath.row].mintemp_c))
        cell.photoImage.imageUrlString(urlString: weatherday[indexPath.row].icon, indexpath: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weatherhourly.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.maxtemcLabel.text = weatherhourly[indexPath.row].tempC + "º"
        cell.timeLabel.text = (weatherhourly[indexPath.row].time.gethourOfWeek(dataJ: Double(weatherhourly[indexPath.row].time)!)) + "PM"
        cell.photoImage.imageUrlString(urlString: weatherhourly[indexPath.row].value, indexpath: indexPath)
        return cell
    }


}

