// Retina Js - dinesh.vasudevan@gmail.com
//
// Inspired by https://github.com/imulus/retinajs
//

(function(){
  var root = (typeof exports === 'undefined') ? window : exports;

  function init() {
    var context = root;

    var existingOnload = context.onload || function(){};

    context.onload = function() {
      var images = document.getElementsByTagName('img'), retinaImages = [], i, image;
      for (i = 0; i < images.length; i++) {
        image = images[i];
        if (image.hasAttribute('data-hid') || image.hasAttribute('data-at2x')) {
          retinaImages.push(new RetinaImage(image));
        }
      }
      existingOnload();
    };
  }

  function isRetina(){
    var mediaQuery =  "(-webkit-min-device-pixel-ratio: 1.5)," +
                      "(min--moz-device-pixel-ratio: 1.5)," +
                      "(-o-min-device-pixel-ratio: 3/2)," +
                      "(min-resolution: 1.5dppx)";

    if (root.devicePixelRatio > 1) {
      return true;
    }

    if (root.matchMedia && root.matchMedia(mediaQuery).matches) {
      return true;
    }

    return false;
  }

  function RetinaImage(element) {
    var replaceableImage = element.getAttribute('src');
    if (element.hasAttribute('data-at2x')) {
      replaceableImage = element.getAttribute('data-at2x');
    } else {
      // _2x is used by Apple.
      replaceableImage = replaceableImage.replace(/\.\w+$/, function(match) { return "_2x" + match; });
    }
    element.setAttribute('src', replaceableImage);
  }

  if (isRetina()) {
    init();
  }
}());
