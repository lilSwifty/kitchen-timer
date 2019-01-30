//
//  ViewController.swift
//  KitchenTimer
//
//  Created by Mani Sedighi on 2019-01-29.
//  Copyright © 2019 Mani Sedighi. All rights reserved.
//

import UIKit
import UserNotifications

class AlarmsTableviewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    var alarms : [Alarm] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
        
        tableview.delegate = self
        tableview.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "alarmsTableviewCell") as! AlarmsTableViewCell
        
        cell.subjectLabel.text = alarms[indexPath.row].subject
        cell.timer.text = "00:00:00"
        
        return cell
    }
    

    
    @IBAction func addNewAlarmButton(_ sender: Any) {
//        let newAlarm = Alarm.init(subject: "Ägg", time: 10.00)
//        alarms.append(newAlarm)
//        setAlarm()
//        tableview.reloadData()
    }
    
    func setAlarm(){
        let content = UNMutableNotificationContent()
        content.title = alarms[0].subject
        content.subtitle = "Your \(alarms[0].subject) are done!"
        content.body = "Time to go!"
        content.badge = 0
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    

}

