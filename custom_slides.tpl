{%- extends 'slides_reveal.tpl' -%}
{% block pre_slides %}
<body>
<script src="jquery.js"></script> 
<div id="hidden" style="display:none;">
    <div id="header">
    <!--  Would be really nice to load these dynamically, rather than hard-code.-->
    <!--  But I lack the JS-fu, or it's just plain difficult. -->
<!--        <div id="header-right">HEADER-RIGHT</div>-->
        <div id="header-left">
          <h5>Sustainable Software</h5>
        </div>
        <div id="footer-left">
          timstaley.co.uk/talks 
        </div>
<!--        <div id="footer-left"></div>-->
        <div id="footer-middle"> </div>
    </div>
</div>

{% endblock pre_slides %}

{% block post_slides %}


<script type="text/javascript">
    // 3. On Reveal.js ready event, copy header/footer <div> into each `.slide-background` <div>
    var header = $('#header').html();

    if ( window.location.search.match( /print-pdf/gi ) ) {
        Reveal.addEventListener( 'ready', function( event ) {
//            $('.slides').prepend(header);
            $('.slide-background').append(header);
        });
    }
    else {
        $('div.reveal').append(header);
   }
  
</script>
{{ super() }}
{% endblock post_slides %}
