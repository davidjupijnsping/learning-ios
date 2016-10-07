//
//  ViewController.swift
//  Learning
//
//  Created by David Jupijn on 07/10/2016.
//  Copyright © 2016 Sping BV. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  let people = [Person(name: "David", awesome: true), Person(name: "Jeroen", awesome: false), Person(name: "Manuel", awesome: true), Person(name: "Sebastiaan", awesome: false)]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

  }

  func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {

  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell")
    let person = people[indexPath.row]
    cell?.textLabel?.text = person.name
    cell?.detailTextLabel?.text = person.says()
    cell?.detailTextLabel?.textColor = .gray
    cell?.imageView?.image = UIImage(named: person.name)
    cell?.accessoryType = person.awesome ? .checkmark : .none
    cell?.tintColor = .purple
    return cell!
  }
}

