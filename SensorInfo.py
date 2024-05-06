# Helpers

def get_sensor_name(id):
    sensor_names = {
        '4097': 'Air Temperature',
        '4098': 'Air Humidity',
        '4099': 'Light Intensity',
        '4101': 'Barometric Pressure',
        '4104': 'Wind Direction',
        '4105': 'Wind Speed',
        '4113': 'Rainfall Hourly',
        '4190': 'UV Index',
        '4197': 'longitude',
        '4198': 'latitude'
    }
    return sensor_names.get(id, 'Unknown ID')


def get_sensor_value(data):
    return data[0]['points'][0]['measurement_value']


def get_sensor_unit(id):
    sensor_names = {
        'Air Temperature': '°C',
        'Air Humidity': '% RH',
        'Light Intensity': 'Lux',
        'Barometric Pressure': 'Pa',
        'Wind Direction': '°',
        'Wind Speed': 'm/s',
        'Rainfall Hourly': 'mm/hour',
        'UV Index': '',
        'longitude': '°',
        'latitude': '°'
    }
    return sensor_names.get(id, 'Unknown ID')
