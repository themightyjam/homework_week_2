const Journey = function(startLocation, endLocation, transport, distance) {
  this.startLocation = startLocation;
  this.endLocation = endLocation;
  this.transport = transport;
  this.distance = distance;
};

module.exports = Journey;

Journey.prototype.journeys = function () {
  return this.journey.map((journey) =>{
    return traveller.journeys;
  });
};

Journey.prototype.startLocation = function (location) {
  return this.startLocation.filter((journey) => {
    return this.startLocation;
    });
  };

Journey.prototype.startLocation = function (location) {
  return this.endLocation.filter((journey) => {
    return this.endLocation;
    });
  };

  Journey.prototype.journeysByTransport = function (transport) {
    return this.transport.filter((journey) => {
      return this.transport === transport;
    });
  };

  Journey.prototype.journeysByMinDistance = function (distance) {
    return this.distance.filter((journey) => {
      return this.distance <= 1000;
    });
  };
