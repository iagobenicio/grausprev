class Weatherobjects {
  int _temp;
  int _humidity;
  String _city, _description, _windSpeed, _tempMax, _tempMin;
  List<dynamic> _nextdays;
  Weatherobjects(this._temp, this._city, this._description, this._humidity,
      this._windSpeed, this._nextdays);

  int getTemp() {
    return this._temp;
  }

  int getHumidity() {
    return this._humidity;
  }

  String getCity() {
    return this._city;
  }

  String getDescription() {
    return this._description;
  }

  String getWindspeed() {
    return this._windSpeed;
  }

  String getTempmax() {
    return this._tempMax;
  }

  String getTempmin() {
    return this._tempMin;
  }

  List<dynamic> getNextdays() {
    return this._nextdays;
  }
}
