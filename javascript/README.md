# Javascript cheatsheet

## URL's
https://github.com/platzi/nodejs-avanzado
https://github.com/Buritica/anotamela-api-basico
http://code.tutsplus.com/tutorials/how-to-scrape-web-pages-with-nodejs-and-jquery--net-22478
https://fernetjs.com/2012/09/jsonp-cors-y-como-los-soportamos-desde-nodejs/

## Asíncrono
```javascript
$.post('/devs', function(data) {
	console.log(data);
});
```

## Sincrono
```javascript
var data = $.post('/devs');
console.log(data);
```

## Autoreload
```javascript
npm install -g nodemon
nodemon bin/www
```

## Debug
## https://www.youtube.com/watch?v=hbqxekO3Av0
```javascript
npm install -g node-inspector supervisor forever
supervisor --debug server.js
forever /usr/local/bin/node-inspector --web-port=9999
```

## Forever
```javascript
npm install -g forever
forever start bin/www
```

## Objetos
```javascript
function Ninja(name){
    this.name = name;
}

Ninja.prototype.swingSword = function(){
    return true;
};

var ninja1 = new Ninja('Diego');

var ninja2 = Ninja('Diego');

Ninja.prototype.myName = function(){
    return this.name;
}

ninja1.myName()

var ninja1 = new Ninja('Alonso');

ninja1.age = 27;
```



