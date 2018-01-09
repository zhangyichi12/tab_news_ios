//
//  NewsList.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 1/7/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import Foundation

class NewsList {
    var newsList = [News]()
    
    let titles = ["t1", "t2", "t3", "Jim Harbaugh, Michigan football and the challenging path ahead", "Jim Harbaugh, Michigan football and the challenging path ahead", "Jim Harbaugh, Michigan football and the challenging path ahead", "Jim Harbaugh, Michigan football and the challenging path ahead", "Jim Harbaugh, Michigan football and the challenging path ahead", "Jim Harbaugh, Michigan football and the challenging path ahead"]
    let descriptions = ["d1", "d2", "d3", "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.", "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.", "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.", "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.", "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.", "lol"]
    let sources = ["CNN", "BBC", "FOX", "GoBlue", "GoBlue", "GoBlue", "GoBlue", "GoBlue", "GoBlue"]
    let imageUrls = ["https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png"]
    
    init() {
        print(titles.count, descriptions.count, sources.count, imageUrls.count)
        for i in 0...titles.count-1 {
            newsList.append(News(title: titles[i], description: descriptions[i], source: sources[i], imageUrl: imageUrls[i]))
        }
    }
}