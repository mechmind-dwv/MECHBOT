from mechmind.core.monitoring import WarRoom

def test_warroom_initialization():
    wr = WarRoom()
    assert wr.threat_level == "DEFCON 1"
    assert len(wr.scanners) == 3
    assert wr.alert_mode == "continuous"

# Añadir a monitoring.py
def send_alert(message):
    from mechmind.core.security import encrypt_alert
    # Implementar lógica de alertas
