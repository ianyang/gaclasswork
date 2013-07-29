$('.sidebar button').click(function(){
  $('#weather .loading').css('display','block');

  $.ajax(
    '/getweather',
    { success: function (graph_data) {
      Morris.Line({
        element: 'weather',
        data: [
          { y: '2013-07-01', a: graph_data[0]['maxtemp'], b: graph_data[0]['mintemp'] },
          { y: '2013-07-02', a: graph_data[1]['maxtemp'], b: graph_data[1]['mintemp'] },
          { y: '2013-07-03', a: graph_data[2]['maxtemp'], b: graph_data[2]['mintemp'] },
          { y: '2013-07-04', a: graph_data[3]['maxtemp'], b: graph_data[3]['mintemp'] },
          { y: '2013-07-05', a: graph_data[4]['maxtemp'], b: graph_data[4]['mintemp'] },
          { y: '2013-07-06', a: graph_data[5]['maxtemp'], b: graph_data[5]['mintemp'] },
          { y: '2013-07-07', a: graph_data[6]['maxtemp'], b: graph_data[6]['mintemp'] },
          { y: '2013-07-08', a: graph_data[7]['maxtemp'], b: graph_data[7]['mintemp'] },
          { y: '2013-07-09', a: graph_data[8]['maxtemp'], b: graph_data[8]['mintemp'] },
          { y: '2013-07-10', a: graph_data[9]['maxtemp'], b: graph_data[9]['mintemp'] }
        ],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['High F', 'Low F'],
      });
      $('#weather .loading').css('display','none');
    }
    }
  )
});