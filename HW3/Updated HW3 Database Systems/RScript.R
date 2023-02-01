library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.28027777427334, lat=34.03346641630316,label="Home", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="White")
m <- addCircleMarkers(m, lng=-118.28391306487782, lat=34.01990922402959,label="Doheny", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.28592124816186, lat=34.01932198822603,label="Accounting", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.2877727680764, lat=34.01933171578953,label="Helen Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.28660678091485, lat=34.01870337219264,label="Hoose", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.28308933815674, lat=34.021580558417455,label="Leavy", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.28605572634898, lat=34.02363626032822,label="Wilson", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Blue")
m <- addCircleMarkers(m, lng=-118.28545902251025, lat=34.022362985685085,label="Anna Bing", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m <- addCircleMarkers(m, lng=-118.28629702603723, lat=34.023441892046925,label="Douglas", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m <- addCircleMarkers(m, lng=-118.28346504871546, lat=34.02252577745639,label="Generations", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m <- addCircleMarkers(m, lng=-118.28524731158892, lat=34.02037342717057,label="Pasty and F", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m <- addCircleMarkers(m, lng=-118.28450150629811, lat=34.02049269362996,label="Prentiss", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m <- addCircleMarkers(m, lng=-118.28592960124274, lat=34.02044656998676,label="RTCC", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="Red")
m
