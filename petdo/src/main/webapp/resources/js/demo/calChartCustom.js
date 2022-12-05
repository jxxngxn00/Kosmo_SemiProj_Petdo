$(function(){
	
	//총 정산 그래프 검색버튼 클릭 이벤트
    $('#searchAreaBtn').click(function(event){
        let param={
            'start_date' : $('input[name="start_date"]').val(),
            'end_date' : $('input[name="end_date"]').val()}
        
        //console.log(param);
        $.ajax({
            type:'post',
            url:'selectCal.do',
            data: param,
            dataType : 'json',
            success : reChart,
            error : function(err){
                console.log(err);
                alert("에러");
            }
        })//end of ajax
    })//end of click(총 정산 검색버튼)

	//상품별 통계 그래프 검색버튼 클릭 이벤트
    $('#searchBarBtn').click(function(event){

      if($('#inputKeyword').val() == ''){
        alert('검색어를 입력하세요.');
        return false;
      }

      let param={
        'cate':$('#dropdownMenuButton').text(),
        'keyword':$('#inputKeyword').val()
    };
     
      console.log(param);
    $.ajax({
        type:'post',
        url:'itemSelectCharts.do',
        data: param,
        dataType : 'json',
        success : reBar,
        error : function(err){
            console.log(err);
            alert("에러");
        }
    })//end of ajax



    })//end of click(상품별 통계 검색 버튼)


})//end of function

//검색 후 차트 초기화 + 새로운 차트 그림(정산)
function reChart(result){
    console.log(result);
    $('#calChart').remove(); // this is my <canvas> element
    $('.chart-area').append('<canvas id="calChart"></canvas>');
    
    let ctx = $("#calChart");
    let mList = new Array();
    let sList = new Array();

    for(row of result){
        console.log('row : '+row);
        sList.push(row.MSUM);
        mList.push(row.ORDER_DATE_M);
    }

    var myLineChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: mList,       //가로축 이름
          datasets: [{
            label: "수입", //변수이름
            lineTension: 0.3,
            backgroundColor: "rgba(78, 115, 223, 0.05)",
            borderColor: "rgba(78, 115, 223, 1)",
            pointRadius: 3,
            pointBackgroundColor: "rgba(78, 115, 223, 1)",
            pointBorderColor: "rgba(78, 115, 223, 1)",
            pointHoverRadius: 3,
            pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
            pointHoverBorderColor: "rgba(78, 115, 223, 1)",
            pointHitRadius: 10,
            pointBorderWidth: 2,
            data: sList            //data 값
          }], //end of datasets
        },//end of data
        options: {
          maintainAspectRatio: false,
          layout: {
            padding: {
              left: 10,
              right: 25,
              top: 25,
              bottom: 0
            }
          },
          scales: {
            xAxes: [{
              time: {
                unit: 'date'
              },
              gridLines: {
                display: false,
                drawBorder: false
              },
              ticks: {
                maxTicksLimit: 7
              }
            }],
            yAxes: [{
              ticks: {
                maxTicksLimit: 5,
                padding: 10,
                // Include a dollar sign in the ticks
                callback: function(value, index, values) {
                  return number_format(value)+'원';
                }
              },
              gridLines: {
                color: "rgb(234, 236, 244)",
                zeroLineColor: "rgb(234, 236, 244)",
                drawBorder: false,
                borderDash: [2],
                zeroLineBorderDash: [2]
              }
            }],
          },
          legend: {
            display: false
          },
          tooltips: {
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            titleMarginBottom: 10,
            titleFontColor: '#6e707e',
            titleFontSize: 14,
            borderColor: '#dddfeb',
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            intersect: false,
            mode: 'index',
            caretPadding: 10,
            callbacks: {
              label: function(tooltipItem, chart) {
                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                return datasetLabel + ': ' + number_format(tooltipItem.yLabel)+' 원';
              }
            }
          }
        }
      });//end of myLineChart
}//end of function


//검색 후 차트 초기화 + 새로운 차트 그림(상품별)
function reBar(result){

  $('#barChart').remove(); // this is my <canvas> element
  $('div.chart-area').append('<canvas id="barChart"></canvas>');

  let ctx = $("#barChart");
  let pList = new Array(); // 상품이름 리스트
  let sList = new Array(); // 총 합계 리스트
  
  for(row of result){
      console.log('row : '+row.SUM);
      console.log('row : '+row.PRODUCT_NAME);
      sList.push(row.SUM);
      pList.push(row.PRODUCT_NAME);
  }

    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: pList,
          datasets: [{
            label: "상품별 수익",
            backgroundColor: "#4e73df",
            hoverBackgroundColor: "#2e59d9",
            borderColor: "#4e73df",
            data: sList,
          }],
        },
        options: {
          maintainAspectRatio: false,
          layout: {
            padding: {
              left: 10,
              right: 25,
              top: 25,
              bottom: 0
            }
          },
          scales: {
            xAxes: [{
              time: {
                unit: 'month'
              },
              gridLines: {
                display: false,
                drawBorder: false
              },
              ticks: {
                maxTicksLimit: 6
              },
              maxBarThickness: 25,
            }],
            yAxes: [{
              ticks: {
                min: 0,
                max: Math.max.apply(Math, sList)+10000,
                maxTicksLimit: 5,
                padding: 10,
                // Include a dollar sign in the ticks
                callback: function(value, index, values) {
                  return number_format(value)+'원';
                }
              },
              gridLines: {
                color: "rgb(234, 236, 244)",
                zeroLineColor: "rgb(234, 236, 244)",
                drawBorder: false,
                borderDash: [2],
                zeroLineBorderDash: [2]
              }
            }],
          },
          legend: {
            display: false
          },
          tooltips: {
            titleMarginBottom: 10,
            titleFontColor: '#6e707e',
            titleFontSize: 14,
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            borderColor: '#dddfeb',
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            caretPadding: 10,
            callbacks: {
              label: function(tooltipItem, chart) {
                var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                return datasetLabel + ':' + number_format(tooltipItem.yLabel)+'원';
              }
            }
          },
        }
      });//end of myBarChart
}