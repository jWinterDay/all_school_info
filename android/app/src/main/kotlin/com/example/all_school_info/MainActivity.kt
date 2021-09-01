package com.example.all_school_info

import io.flutter.embedding.android.FlutterActivity

import android.os.Bundle
import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        createNotificationChannel()
    }

    override fun onResume() {
        super.onResume()

        closeAllNotifications();
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel1 = NotificationChannel("channel_1", "Channel 1", NotificationManager.IMPORTANCE_HIGH)
            val channel2 = NotificationChannel("channel_2", "Channel 2", NotificationManager.IMPORTANCE_LOW)
            val channel3 = NotificationChannel("channel_3", "Channel 3", NotificationManager.IMPORTANCE_DEFAULT)

            val notificationManager = getSystemService(NotificationManager::class.java)

            notificationManager.createNotificationChannel(channel1)
            notificationManager.createNotificationChannel(channel2)
            notificationManager.createNotificationChannel(channel3)

        }
    }

    private fun closeAllNotifications() {
        val notificationManager = getSystemService(NotificationManager::class.java)
        notificationManager.cancelAll()
    }
}
