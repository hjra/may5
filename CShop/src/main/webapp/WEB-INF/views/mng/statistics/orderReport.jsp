<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script>
$(function () {
        $('#container').highcharts({
            chart: {
                type: 'line'
            },
            title: {
                text: '오늘의 시간별 판매수량'
            },
            subtitle: {
                text: ' C# :: Cake Shop'
            },
            xAxis: {
                categories: ['9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20']
            },
            yAxis: {
                title: {
                    text: '개'
                }
            },
            plotOptions: {
                line: {
                    dataLabels: {
                        enabled: true
                    },
                    enableMouseTracking: false
                }
            },
            series: [{
                name: 'Tokyo',
                data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            }, {
                name: 'London',
                data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
            }]
        });
    });
    
</script>



<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
판매분석
