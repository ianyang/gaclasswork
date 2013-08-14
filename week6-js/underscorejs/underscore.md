#Underscore.js Notes


##Pure Javascript

```
var arr = [1, 2, 3, 4, 5];

for(i=0; i< arr.length; i++) {
    console.log(arr[i]);
}
```
##Loops

**Print the elements**
```
_.each(arr, function(n) { console.log(n); });
```

  	
**Select elements greater than 3**

	var grt = _.filter(arr, function(n) { return n > 3; });

** Multiply each element by 5**
	
	var mlt = _.map(arr, function(n) {return n * 5; });
	
	
##All and Any

**check whether values are odd**

```
var arr = [1, 3, 5, 7, 9];

_.all(arr, function(x) {return x % 2 != 0;});
```
**//Check whether any value is more than 6
**

```
Check whether any value is more than 6
_.any(arr, function(x) {return x > 6;});
// => true
```

##Pluk and Invoke
```
var albums = [
    {'name': 'Gossamer', 'artist': 'Passion Pit'},
    {'name': 'Sigh no more', 'artist': 'Mumford and Sons'},
    {'name': 'Time to Pretend', 'artist': 'MGMT'}
];
```
**Do Something to each element**

```
var artists = _.map(albums, function(a) {return a.artist; })

var upperArtists  = _.map(artists, function(a) {return a.toUpperCase();});
```

**Pick Only the artists from the hash**
```
var artists = _.pluck(albums, 'artist');
```

**Perform uppercase translation to each artists**
```
var upperArtists = _.invoke(artists, 'toUpperCase');
```

##Where/Min/Max
```
var albums = [
    {'name': 'Gossamer', 'artist': 'Passion Pit', 'year': 2013},
    {'name': 'Sigh no more', 'artist': 'Mumford and Sons', 'year': 2012},
    {'name': 'Time to Pretend', 'artist': 'MGMT', 'year': 2011},
];
```
**Return Object that has a certain key/value**

	_.where(albums, {'artist': 'MGMT'});

**Return object that has max on a value**

	_.max(albums, function(a) {return a.year};

**Return object that has min on a value**
	_.min(albums, function(a) {return a.year};


##Zip and Object
```
var artists = ["Passion Pit", "Mumford and Sons", "MGMT"];
var albums = ["Gossamer", "Sigh no more", "Time to Pretend"];
```
**Make array pairs**

```
_.zip(artists, albums);

```
**Make key value paires**`

```
_.object(artists, albums);


```

##Range
```
_.range(10);
// => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

_.range(0, -10, -1);
// => [0, -1, -2, -3, -4, -5, -6, -7, -8, -9]
```

##Keys values Pairs

```
obj = {
    "Anil": "Bridgpal", 
    "Markus": "Guehrs",
    "Jackie": "Herrlin",
    "Avand": "Amiri"
}
```

**Grab all keys**

	_.keys(obj);

**Grab all values**	

	_.values(obj);

**Make array Pairs**

	_.pairs(obj);



##Pick and Omit


```
var pp = {
    'name': 'Gossamer', 
    'artist': 'Passion Pit', 
    'year': 2013
    }
```
**New Object with only picked keys**

	_.pick(pp, 'name', 'artist');

**New Object omitting keys**

	_.omit(pp, 'year');




##Templates
```
var albums = [
    {'name': 'Gossamer', 'artist': 'Passion Pit', 'year': 2013},
    {'name': 'Sigh no more', 'artist': 'Mumford and Sons', 'year': 2012},
    {'name': 'Time to Pretend', 'artist': 'MGMT', 'year': 2011},
];
```
**Create Template object**

	var tem = _.template("You will love <%= artist %>'s <%= name %>");

**Output template using an object**

	tem(albums[0]);
