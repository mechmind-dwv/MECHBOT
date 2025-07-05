#!/usr/bin/env python3
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from mechmind.core.monitoring import WarRoom
import time

class RealTimeMonitor:
    def __init__(self):
        self.war_room = WarRoom()
    
    def start(self):
        print(f"🚀 Iniciando MECHBOT-9000 en modo {self.war_room.alert_mode}")
        while True:
            print(f"🛡️ Estado: {self.war_room.threat_level} | Escáneres: {len(self.war_room.scanners)} activos")
            time.sleep(5)

if __name__ == "__main__":
    monitor = RealTimeMonitor()
    monitor.start()
