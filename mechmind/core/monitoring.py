from dataclasses import dataclass, field
from typing import List

@dataclass
class WarRoom:
    threat_level: str = "DEFCON 1"
    scanners: List[str] = field(default_factory=lambda: ["ai-dependency", "codeql", "zero-day-radar"])
    alert_mode: str = "continuous"

def initialize_monitoring():
    return WarRoom()

if __name__ == "__main__":
    print("✅ Módulo de monitorización operativo")
