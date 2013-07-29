$(document).ready(function(){

  $.ajax(
    '/getdata',
    { success: function (graph_data) {
      Morris.Bar({
        element: 'jawbone',
        data: [
          { y: '2013-07-01', a: graph_data[0]['steps']},
          { y: '2013-07-02', a: graph_data[1]['steps']},
          { y: '2013-07-03', a: graph_data[2]['steps']},
          { y: '2013-07-04', a: graph_data[3]['steps']},
          { y: '2013-07-05', a: graph_data[4]['steps']},
          { y: '2013-07-06', a: graph_data[5]['steps']},
          { y: '2013-07-07', a: graph_data[6]['steps']},
          { y: '2013-07-08', a: graph_data[7]['steps']},
          { y: '2013-07-09', a: graph_data[8]['steps']},
          { y: '2013-07-10', a: graph_data[9]['steps']}
        ],
        xkey: 'y',
        ykeys: ['a'],
        labels: ['Steps'],
      });
    }
    }
  )
});