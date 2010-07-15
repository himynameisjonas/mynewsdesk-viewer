// infinitescroll() is called on the element that surrounds 
// the items you will be loading more of

$(document).ready(function(){
   console.log("hello")
   $('#content nav ul').infinitescroll({
      navSelector  : "nav#pagination",
      // selector for the paged navigation (it will be hidden)
      nextSelector : "nav#pagination #next",
      // selector for the NEXT link (to page 2)
      itemSelector : "#content li",
      // selector for all items you'll retrieve
      debug: true,
   });
})

