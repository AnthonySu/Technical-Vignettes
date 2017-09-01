# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require hammer
#= require jquery.hammer
$ ->
    
    getRandomInt = (min, max) ->
      min = Math.ceil(min)
      max = Math.floor(max)
      Math.floor(Math.random() * (max - min)) + min


    # __________________________________________________________________________

    tp = $("#touch-square")
    
    rightPanHandler = (event) ->
      $this = $(event.target)
      console.log(parseInt($this.css("left").substring(0,$this.css("left").length-2)) + 1 + "px")
      $this.css("left", parseInt($this.css("left").substring(0,$this.css("left").length-2)) + 1 + "px")
      $this = $("#damn")
      $this.text("(RIGHT)PANNEDDD")
    tp.hammer().bind("panright", rightPanHandler);
    # ____________________________________________
    leftPanHandler = (event) ->
      $this = $(event.target)
      console.log(parseInt($this.css("left").substring(0,$this.css("left").length-2)) + "px")
      $this.css("left", parseInt($this.css("left").substring(0,$this.css("left").length-2)) - 1 + "px")
      $this = $("#damn")
      $this.text("(LEFT)PANNEDDD")
    tp.hammer().bind("panleft", leftPanHandler);
    # ____________________________________________
    tapHandler = (event) ->
      $this = $(event.target)
      $this.css("top", parseInt($this.css("top").substring(0,$this.css("top").length-2)) + 1 + "px")
      $this = $("#damn")
      $this.text("TAPPEDDD")
    tp.hammer().bind("tap", tapHandler);
    # ____________________________________________
    pressHandler = (event) ->
      $this = $(event.target)
      $this.css("top", parseInt($this.css("top").substring(0,$this.css("top").length-2)) - 10 + "px")
      $this = $("#damn")
      $this.text("PRESSEDD")
    tp.hammer().bind("press", pressHandler);
    # ____________________________________________
    swipeHandler = (event) ->
      $this = $("#damn")
      $this1 = $("#damn1")
      $this.css("color", "rgb("+ getRandomInt(0,255) + "," + getRandomInt(0,255) + "," + getRandomInt(0,255) + ")" )
      $this1.text("SWIPEDDD")
      $this1.css("color", "rgb("+ getRandomInt(0,255) + "," + getRandomInt(0,255) + "," + getRandomInt(0 ,255) + ")" )
      tp.css("color", "rgb("+ getRandomInt(0,255) + "," + getRandomInt(0,255) + "," + getRandomInt(0,255) + ")" )
      $this.text("SWIPEDDD")
    tp.hammer().bind("swipe", swipeHandler);
    # ____________________________________________
    $('#touch-square').data("hammer").get('pinch').set({ enable: true });
    $('#touch-square').data("hammer").get('rotate').set({ enable: true });
    # ____________________________________________
    pinchHandler = (event) ->
      $this = $("#damn")
      $this.text("PINCHEDDDD")
    tp.hammer().bind("pinch", pinchHandler);
    ____________________________________________
    i = 0
    rotateHandler = (event) ->
      tp.css("transform", "rotate("+ i+ "deg)")
      i += 1
      $this = $("#damn")
      $this.text("ROTATEDDD")
    tp.hammer().bind("rotate", rotateHandler);

    
    
    # $("#damn").on 'click', (event) ->
      # Select the Button
    #   console.log 'you clicked me!!'
    
    # trial = (event) ->
        # console.log 'NICE!'
    # document.getElementById("damn").onclick = trial
    
    console.log("this: ", getRandomInt(0,10))
