import json
import requests
import time
from SensorInfo import get_sensor_name, get_sensor_value, get_sensor_unit
#from SendMessage import sendWhatsApp
# Request Parameters
host = 'https://sensecap.seeed.cc/openapi/view_latest_telemetry_data'
device_eui = '?device_eui=2CF7F1C0530003E4'
measurement_id = '&measurement_id='
channel_index = '&channel_index=1'
auth = ('XXXXXXXXX',
'XXXXXXXXXXXXX')
# Sensor parameters
sensorsInfo = ['4198', '4197']
DataExtracted = {}
SensorUnitValue = {}
for sensor_id in sensorsInfo:
  service = host + device_eui + measurement_id + sensor_id + channel_index
  response = requests.get(service, auth=auth)
  if response.status_code == 200:
    sensorName = get_sensor_name(sensor_id)
    DataExtracted[sensorName] = get_sensor_value(response.json()['data'])
    SensorUnitValue[sensorName] = get_sensor_unit(sensorName)
    print(DataExtracted[sensorName],SensorUnitValue[sensorName])
    
  else:
    print(f'Request failed with status code {response.status_code}: {response.text}')
