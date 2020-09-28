private -rendering - tags
renderClicksTagOf: tasksResults tag: captureEventTag on: html
| chart data |

	chart := HighchartWebView forSimpleChart.
	data := self arrayOfClicksOnTagOf: tasksResults tag: captureEventTag.
	self configureClicksOnTagOn: chart.
	chart configureSeriesOf: HighchartsSeriesColumn using: [ :series |
		series color: '#7cb5ec'.
		series name: 'Cant clicks on tag'.
		series data: data.
		 ].
	html render: chart.