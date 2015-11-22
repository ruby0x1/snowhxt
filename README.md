# snowhxt
A convenience for using hxtelemetry with flow/snow based apps quickly

Using hxscout/hxtelemetry is really simple already,   
but this lib simplifies a few steps further. 

This library moves the flow config to a lib format,   
setting the build config for you, and wrapping the basics. 

### installing

- You need hxtelemetry installed `haxelib install hxtelemetry` 
- A recent hxcpp (`>=3.2.171` from haxelib)
- This repo installed
  - `haxelib git snowhxt https://github.com/underscorediscovery/snowhxt.git`

### step one

Add the dependency to your flow project as normal:

```js
    build : {
      dependencies : {
        ... : '*',
        snowhxt : '*'
      }
    },
```

### step two

Create and instantiate the Snowhxt instance.
Usually you do this in `ready`, once.

import:   
`import snowhxt.Snowhxt;` 

declare an instance:   
`var shxt : Snowhxt;`

create the instance:   
`shxt = new Snowhxt();`

### step three

Call the update function every frame.

```haxe
override function update( delta:Float ) {

    shxt.update();
    
    ...

}
```

--- 

### notes

If you want access to the hxt instance use `shxt.hxt`.   
If you want to configure the hxtelemetry settings:

```haxe

var myconfig = Snowhxt.default_config();
    myconfig.app_name = 'custom';
    myconfig.allocations = false;

var sxht = new Snowhxt( myconfig );

```


### links

- http://hxscout.com/
- http://snowkit.org/2015/07/31/using-hxscout-with-snowluxe/
- http://hxscout.com/guide.html


