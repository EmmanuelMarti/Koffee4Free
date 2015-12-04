<div>
	<h1>Jeu en JS ♥</h1>
</div>
<script type="text/javascript">
    window.onload = function(){
        $.ajax({
            url:'http://n2i2015.dev/ajax/getRandQuizz.php', 
            method: 'GET',
            dataType: 'json',
            success: function(json){ 
                console.log(json)
            }
        });   
    }
    /*var conn = new WebSocket('ws://<?php echo $wsAddr ?>:8080');
    conn.onopen = function(e) {

    };

    conn.onmessage = function(e) {
        var res;
        try{
            res = JSON.parse(e.data);
            if( !res.type ){
                throw "Il n'y pas de type de data";
            }        
        } catch (er) {
            console.error("Parsing error:", er);
            return;
        }

        if( res.type == 'chat' ){
            var which = res.playerName == playerName ? 1 : 2;
            $('.chat-block section ul').append(
                $('<li />').append(
                    $('<span />')
                        .addClass('player' + which)
                        .html( res.playerName ),
                    ' : ',
                    res.message
                )
            );
        } else if( res.type == 'combat' ){

        } else if( res.type == 'panel' ){
            battle.registerPlayers( res.players );
        }
    };*/
</script>