private -rendering - tags
renderTimeToFirstOverTagOf: tasksResults tag: captureEventTag on: html
| chart data |

	chart := HighchartWebView forSimpleChart.
	data := self arrayOfTimeOverOnTagOf: tasksResults tag: captureEventTag.
	self configureArrivalTimeToTagOn: chart.
	chart configureSeriesOf: HighchartsSeriesColumn using: [ :series |
		series color: 'grey'.
		series name: 'Time to first over'.
		series data: data.
		 ].
	html render: chart.