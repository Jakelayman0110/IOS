//
//  universities.swift
//  Layman_UniversityApp
//
//  Created by Jacob Layman on 11/16/23.
//

import Foundation
import UIKit

struct Universities{
    var domain : String = ""
    var list_Array : UniversityList = UniversityList(collegeName: "", collegeImage: "", collegeInfo: "")
}


struct UniversityList{
    var collegeName : String = ""
    var collegeImage : String = ""
    var collegeInfo : String = ""
}

var arr : Array = ["Computer Science", "IT", "Software Engineering", "Data Science"]

// Computer Science
let byteTech = Universities(domain:"Computer Science", list_Array: UniversityList(collegeName: "ByteTech University", collegeImage: "byteTech", collegeInfo: "A leading institution in computer science education, focusing on algorithmic thinking and cutting-edge software development."))
let cyberCode = Universities(domain: "Computer Science", list_Array: UniversityList(collegeName: "CyberCode Institute", collegeImage: "cyberCode", collegeInfo: "CyberCode Institute specializes in cybersecurity within computer science, preparing students for the challenges of digital security."))
let techSphere = Universities(domain: "Computer Science", list_Array: UniversityList(collegeName: "TechSphere College", collegeImage: "techSphere", collegeInfo: "TechSphere College offers diverse specializations within computer science, emphasizing AI, machine learning, and software architecture."))
let dataPulse = Universities(domain: "Computer Science", list_Array: UniversityList(collegeName: "DataPulse University", collegeImage: "dataPulse", collegeInfo: "DataPulse University intertwines data analysis with computer science, exploring the intersection of technology and big data analytics."))
let innoTech = Universities(domain: "Computer Science", list_Array: UniversityList(collegeName: "InnoTech Academy", collegeImage: "innoTech", collegeInfo: "InnoTech Academy focuses on innovation and entrepreneurship in computer science, nurturing creative solutions and tech-driven ventures."))

// IT (Information Technology)
let netConnect = Universities(domain: "IT", list_Array: UniversityList(collegeName: "NetConnect Institute", collegeImage: "netConnect", collegeInfo: "NetConnect Institute specializes in IT infrastructure and network management, providing hands-on training in system administration."))
let techSavvy = Universities(domain: "IT", list_Array: UniversityList(collegeName: "TechSavvy University", collegeImage: "techSavvy", collegeInfo: "TechSavvy University offers comprehensive IT programs, focusing on systems integration, cybersecurity, and cloud computing."))
let infoTech = Universities(domain: "IT", list_Array: UniversityList(collegeName: "InfoTech Central", collegeImage: "infoTech", collegeInfo: "InfoTech Central prepares students for IT consultancy and management roles, emphasizing strategic IT planning and implementation."))
let dataGuard = Universities(domain: "IT", list_Array: UniversityList(collegeName: "DataGuard College", collegeImage: "dataGuard", collegeInfo: "DataGuard College specializes in IT security and risk management, training professionals to safeguard digital assets."))
let netGenius = Universities(domain: "IT", list_Array: UniversityList(collegeName: "NetGenius Institute", collegeImage: "netGenius", collegeInfo: "NetGenius Institute focuses on emerging technologies in IT, exploring IoT, blockchain, and AI applications in IT infrastructure."))

// Software Engineering
let codeCraft = Universities(domain: "Software Engineering", list_Array: UniversityList(collegeName: "CodeCraft University", collegeImage: "codeCraft", collegeInfo: "CodeCraft University focuses on software engineering principles, emphasizing scalable and efficient software development."))
let agileTech = Universities(domain: "Software Engineering", list_Array: UniversityList(collegeName: "AgileTech Institute", collegeImage: "agileTech", collegeInfo: "AgileTech Institute champions agile methodologies in software engineering, teaching iterative and adaptive development practices."))
let devOps = Universities(domain: "Software Engineering", list_Array: UniversityList(collegeName: "DevOps Academy", collegeImage: "devOps", collegeInfo: "DevOps Academy integrates software engineering with DevOps practices, teaching automation and collaboration in software lifecycles."))
let scaleUp = Universities(domain: "Software Engineering", list_Array: UniversityList(collegeName: "ScaleUp College", collegeImage: "scaleUp", collegeInfo: "ScaleUp College specializes in scalable software solutions, focusing on architecture design and distributed systems."))
let futureCode = Universities(domain: "Software Engineering", list_Array: UniversityList(collegeName: "FutureCode University", collegeImage: "futureCode", collegeInfo: "FutureCode University explores future technologies in software engineering, preparing students for innovative software solutions."))

// Data Science
let insightData = Universities(domain: "Data Science", list_Array: UniversityList(collegeName: "Insight Data Institute", collegeImage: "insightData", collegeInfo: "Insight Data Institute specializes in advanced data analytics, focusing on predictive modeling and data-driven decision-making."))
let dataVision = Universities(domain: "Data Science", list_Array: UniversityList(collegeName: "DataVision University", collegeImage: "dataVision", collegeInfo: "DataVision University delves into data visualization and storytelling, emphasizing communication of complex data insights."))
let analyticsHub = Universities(domain: "Data Science", list_Array: UniversityList(collegeName: "AnalyticsHub College", collegeImage: "analyticsHub", collegeInfo: "AnalyticsHub College focuses on data mining and statistical analysis, training professionals in extracting valuable insights from data."))
let aiNexus = Universities(domain: "Data Science", list_Array: UniversityList(collegeName: "AI Nexus Institute", collegeImage: "aiNexus", collegeInfo: "AI Nexus Institute merges data science with AI research, exploring neural networks and machine learning algorithms."))
let quantumData = Universities(domain: "Data Science", list_Array: UniversityList(collegeName: "QuantumData University", collegeImage: "quantumData", collegeInfo: "QuantumData University explores the frontiers of data science, integrating quantum computing principles with data analytics."))

var compsciarr : [Universities] = [byteTech, cyberCode, techSphere, dataPulse, innoTech]
var itarr : [Universities] = [netConnect, techSavvy, infoTech, dataGuard, netGenius]
var cyberarr : [Universities] = [codeCraft, agileTech, devOps, scaleUp, futureCode]
var datasciencearr : [Universities] = [insightData, dataVision, analyticsHub, aiNexus, quantumData]
