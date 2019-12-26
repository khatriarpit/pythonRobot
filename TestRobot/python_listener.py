import os
import tempfile
from core.configurations_manager import ConfigurationsManager
from qmetry_util import UploadResult

ROBOT_LISTENER_API_VERSION = 2

def load_properties(filepath, sep='=', comment_char='#'):
    props = {}
    with open(filepath, "rt") as f:
        for line in f:
            l = line.strip()
            if l and not l.startswith(comment_char):
                key_value = l.split(sep)
                key = key_value[0].strip()
                value = sep.join(key_value[1:]).strip().strip('"')
                props[key] = value
    return props

if os.path.exists("resources/qmetry.properties"):
    _dict = load_properties("resources/qmetry.properties", "=", "#")
    for key, value in _dict.items():
        ConfigurationsManager().set_object_for_key(value=value, key=key)
        

def close():
    if os.path.exists("resources/qmetry.properties"):
        _dict = load_properties("resources/qmetry.properties", "=", "#")
        for key, value in _dict.items():
            ConfigurationsManager().set_object_for_key(value=value, key=key)
        is_integration_enabled = ConfigurationsManager().get_str_for_key(
            "automation.qmetry.enabled", "false")
        if str(is_integration_enabled).lower() == "true" or str(is_integration_enabled).lower() == "yes":
            upload_result = UploadResult()
            upload_result.uploadFile()
        else:
            print(is_integration_enabled+' is_integration_enabled')

