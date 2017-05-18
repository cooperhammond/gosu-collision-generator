# gosu-collision-generator

>  Generates collision code for the ruby gem gosu

 - Make sure that any image you are using to generate collisions off of is *mathematically similar* to the width and height of your game window. For example, if your window is 1200 pixels by 600 pixels, then make sure that the image's dimensions are 6x3, 12x6, 500x250, etcetera... Essentially a 2:1 scale in this example. It can be 3:1, or even 37:21 in your actual game.
 - Note that all images must be a .png

- In general, the collision detection will work the best if the image you are using to generate collisions is smaller. Because if it's rendering 1000 somewhat different collisions it takes a while.

 - The collision will detect all black pixels and leave the rest alone.


To actually create the generator:

```
g = Generator.new(1000, 800, "someimage.png")
```

The first argument is the width of your game window and the second is the
height of it. The third is the path to your image file.

From there, there's really only one thing to do. Test if an object is colliding
with the borders:

```
g.colliding?(some_object)
```

`some_object` must have the attr_reader of `:x`, `:y`, `:width`, `:height`.

`.colliding?` will return true or false depending on whether or not
`some_object` is touching any of the pixels.



If you have any questions, email me at `kepoorh@gmail.com`!
