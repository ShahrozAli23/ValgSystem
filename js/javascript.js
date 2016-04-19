$(document).ready(function(){

    $(document).on('click', '.deleteLink' ,function() {
        $(this).closest(".tl").remove();
    });

    $(document).on('click', '#addLink' ,function() {
        $( "#tilpassedeLinks" ).append( "<div class='tl'><div class='col-md-6'> <div class='form-group'> <input type='text' value='' placeholder='Titel på link' class='form-control' /> </div> </div> <div class='col-md-6'> <div class='col-md-10'> <div class='form-group'> <input type='url' value='' placeholder='Webadresse' class='form-control' /> </div> </div> <div class='col-md-2'> <button class='deleteLink btn btn-danger btn-raised btn-fab btn-fab-mini btn-round input-button'> <i class='material-icons'>delete</i> </button> </div> </div></div>" );
    });

    //add collapse to all tags hiden and showed by select valgTyper
    $('.valgTyper_hide').addClass('collapse');

    //on change hide all divs linked to select and show only linked to selected option
    $('#valgTyper').change(function() {
        var selector = '.valgTyper_' + $(this).val();

        //hide all elements
        $('.valgTyper_hide').collapse('hide');

        //show only element connected to selected option
        $(selector).collapse('show');
    });

    $('#timePeriod').addClass('collapse');

    $('#timePeriodCheckbox').change(function() {
        if(document.getElementById('timePeriodCheckbox').checked) {
            $('#timePeriod').collapse('show');
        }else{
            $('#timePeriod').collapse('hide');
        }
    });

      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Kandidater', 'Procent'],
          ["Shahroz Ali", 44],
          ["Hans Jørgen", 31],
          ["Allan Nielsen", 12],
          ["Peter Hansen", 10],
          ['Kenneth Steen', 3]
        ]);

        var options = {
          title: 'Chess opening moves',
          width: 900,
          legend: { position: 'none' },
          chart: { title: 'Valg resultat',
                   subtitle: 'i procent' },
          bars: 'horizontal', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'top', label: 'Procent'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };

});
