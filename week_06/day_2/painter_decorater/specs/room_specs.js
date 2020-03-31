const assert = require('assert');
const Room = require('../room.js');

describe('Room', function () {
  let room;

  beforeEach(function () {
    room = new Room(20, false);
  });

  describe('Properties', function(){
    it('should have an area', function(){
      const actual = room.area;
      assert.strictEqual(actual, 20);
    });

    it('is it painted', function(){
      const actual = room.painted;
      assert.equal(false, false);
    });

    it('how much is painted', function(){
      const actual = room.paintamount;
      assert.deepStrictEqual(actual, []);

    });
  });

});
