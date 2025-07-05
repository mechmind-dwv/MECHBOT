from mechmind.core.security import MechVault

def test_vault_encryption():
    vault = MechVault()
    test_data = "TopSecret123"
    encrypted = vault.encrypt(test_data)
    decrypted = vault.decrypt(encrypted)
    assert decrypted == test_data
    assert encrypted != test_data
