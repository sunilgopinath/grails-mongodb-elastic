<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
    <style type="text/css">
      #f1_container {
  position: relative;
  margin: 10px auto;
  width: 450px;
  height: 281px;
  z-index: 1;
}
#f1_container {
  -webkit-perspective: 1000px;
  -moz-perspective: 1000px;
  -o-perspective: 1000px;
  perspective: 1000px;
}
#f1_card {
  width: 100%;
  height: 100%;
  -webkit-transform-style: preserve-3d;
  -webkit-transition: all 1.0s linear;
  -moz-transform-style: preserve-3d;
  -moz-transition: all 1.0s linear;
  -o-transform-style: preserve-3d;
  -o-transition: all 1.0s linear;
  transform-style: preserve-3d;
  transition: all 1.0s linear;
}
#f1_container:hover #f1_card, #f1_container.hover_effect #f1_card {
  -webkit-transform: rotateY(180deg);
  -moz-transform: rotateY(180deg);
  -o-transform: rotateY(180deg);
  transform: rotateY(180deg);

  -webkit-box-shadow: -5px 5px 5px #aaa;
  -moz-box-shadow: -5px 5px 5px #aaa;
  box-shadow: -5px 5px 5px #aaa;
}
.face {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -o-backface-visibility: hidden;
  backface-visibility: hidden;
}
.face.back {
  display: block;
  -webkit-transform: rotateY(180deg);
  -webkit-box-sizing: border-box;
  -moz-transform: rotateY(180deg);
  -moz-box-sizing: border-box;
  -o-transform: rotateY(180deg);
  -o-box-sizing: border-box;
  transform: rotateY(180deg);
  box-sizing: border-box;
  padding: 10px;
  color: white;
  text-align: center;
  background-color: #aaa;
}
    </style>
  </head>
  <body>
    <div id="f1_container">
<div id="f1_card" class="shadow">
  <div class="front face">
    <img src="${resource(dir: 'images', file: 'arizona-lake-havasu.jpg')}"/>
  </div>
  <div class="back face center">
    BACK FACE
  </div>
</div>
</div>

    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35694647-1']);
  _gaq.push(['_setDomainName', 'local.com']);
  _gaq.push(['_setAllowLinker', true]);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
  </body>
</html>
