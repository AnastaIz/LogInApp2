//
//  UserInfo.swift
//  LogInApp
//
//  Created by Anastasia Izmaylova on 17.12.2021.
//

struct User {
    let userName: String
    let userPassword: String
    let fullName: String
}

var user = User(userName: "user", userPassword: "password", fullName: "Анастасия Измайлова")

struct Person {
    let age: String
    let city: String
    let coding: String
}

var mySelf = Person(age: "Мне 30 лет.", city: "Я живу в городе Подольск.", coding: "Рада начать свой путь в программировании со SwiftBook!")
