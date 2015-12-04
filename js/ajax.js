function getQuizzsRand(){
    var res;
    $.ajax({
        async: false,
        url: 'http://n2i2015.dev/ajax/getRandQuizz.php', 
        method: 'GET',
        dataType: 'json',
        success: function(json){ 
            res = json; 
        }
    });
    return res;
}