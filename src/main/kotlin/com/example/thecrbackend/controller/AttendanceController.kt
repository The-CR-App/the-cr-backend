package com.example.thecrbackend.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class AttendanceController {
    @GetMapping("/")
    fun welcome(): String = "Welcome to Attendance Section"
}