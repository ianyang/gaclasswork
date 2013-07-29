var arr = [1,2,3,4,5,6];

// var result = _.filter(arr, function(n) { return n > 3 });

var albums = [
    {'name': 'Gossamer', 'artist': 'Passion Pit'},
    {'name': 'Sigh no more', 'artist': 'Mumford and Sons'},
    {'name': 'Time to Pretend', 'artist': 'MGMT'}
];


// var result = _.map(albums, function(a) {return a.artist});

var artists = _.pluck(albums, 'artist');

// var result = _.invoke(artists, 'toUpperCase');

var result = _.where(albums, {'artist': 'MGMT'});


console.log(result[0]);