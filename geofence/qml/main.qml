
// Copyright 2015 ESRI
//
// All rights reserved under the copyright laws of the United States
// and applicable international laws, treaties, and conventions.
//
// You may freely redistribute and use this sample code, with or
// without modification, provided you include the original copyright
// notice and use restrictions.
//
// See the Sample code usage restrictions document for further information.
//

import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtPositioning 5.3
import ArcGIS.Runtime 10.25
import ArcGIS.Runtime.Toolkit.Controls 1.0

ApplicationWindow {
    id: appWindow
    width: 400
    height: 600
    title: "geofence"
/*
    property bool previouslyWithin: false
    property bool within
*/
    Map {
        id: map
        anchors.fill: parent
        focus: true
        //extent: esriCampus

        ArcGISTiledMapServiceLayer {
            url: "http://server.arcgisonline.com/ArcGIS/rest/services/World_Topo_Map/MapServer"
        }

        /*
        GraphicsLayer {
            id: gl
            opacity: 0.5
        }
        */

        /*
        Envelope {
            id: esriCampus
            xMin: -13046340.492629018
            yMin: 4036308.8291057628
            xMax: -13046101.626915699
            yMax: 4036487.9783907514
            spatialReference: map.spatialReference
        }
        */

        /*
        onStatusChanged: {
            if (status === Enums.MapStatusReady) {
                ps.active = true;
                gl.addGraphic(graphic);
            }
        }
        */

       /*
        positionDisplay {
            id: pd
            mode: Enums.AutoPanModeNavigation
            positionSource: PositionSource {
                id: ps
                nmeaSource: "qrc:///Resources/campus.txt"
            }


//            onMapPointChanged: {
//                within = pd.mapPoint.within(poly);
//                console.log("within?", within);
////                //   Determine if we were previously within the AOI or not
////                if (!(previouslyWithin) && within) {
////                    previouslyWithin = true;
////                    md.text = "You have entered the AOI!";
////                    md.open();
////                } else if (previouslyWithin && !(within)) {
////                    previouslyWithin = false;
////                    md.text = "You have left the AOI!";
////                    md.open();
////                } else if (previouslyWithin && within) {
////                    // they were previously within, and still are
////                    previouslyWithin = true;
////                    return;
////                } else if (!(previouslyWithin) && !(within)) {
////                    // they were not previously within, and still are not
////                    return;
////                }
//            }
        }
        */

        /*
        Graphic {
            id: graphic
            geometry: poly
            symbol: SimpleFillSymbol {
                color: "red"
                style: Enums.SimpleFillSymbolStyleSolid
                outline: SimpleLineSymbol {
                    color: "black"
                    width: 4
                    style: Enums.SimpleLineSymbolStyleDash
                }
            }
        }
        */

//        Polygon {
//            id: poly
//            json: {"rings":[[[-13046183.332051678,4036381.3192332187],[-13046183.353462445,4036380.6652019266],[-13046183.417603064,4036380.0139712966],[-13046183.524198873,4036379.3683299986],[-13046183.672793414,4036378.731042768],[-13046183.862750383,4036378.1048385655],[-13046184.093256352,4036377.492398895],[-13046184.363324262,4036376.8963463167],[-13046184.67179764,4036376.3192332187],[-13046185.017355554,4036375.7635308886],[-13046185.398518275,4036375.2316189287],[-13046185.813653603,4036374.7257750677],[-13046186.260983866,4036374.2481654068],[-13046186.738593526,4036373.800835144],[-13046187.244437387,4036373.3856998156],[-13046187.776349347,4036373.004537096],[-13046188.332051678,4036372.6589791807],[-13046188.909164775,4036372.3505058032],[-13046189.505217355,4036372.0804378935],[-13046190.117657024,4036371.8499319237],[-13046190.743861226,4036371.659974956],[-13046191.381148458,4036371.5113804145],[-13046192.026789755,4036371.404784605],[-13046192.678020386,4036371.340643986],[-13046193.332051678,4036371.3192332187],[-13046193.98608297,4036371.340643986],[-13046194.6373136,4036371.404784605],[-13046195.282954898,4036371.5113804145],[-13046195.920242129,4036371.659974956],[-13046196.54644633,4036371.8499319237],[-13046197.158886,4036372.0804378935],[-13046197.75493858,4036372.3505058032],[-13046198.332051678,4036372.6589791807],[-13046198.887754008,4036373.004537096],[-13046199.419665968,4036373.3856998156],[-13046199.92550983,4036373.800835144],[-13046200.40311949,4036374.2481654068],[-13046200.850449752,4036374.7257750677],[-13046201.26558508,4036375.2316189287],[-13046201.646747801,4036375.7635308886],[-13046201.992305715,4036376.3192332187],[-13046202.300779093,4036376.8963463167],[-13046202.570847003,4036377.492398895],[-13046202.801352972,4036378.1048385655],[-13046202.99130994,4036378.731042768],[-13046203.139904482,4036379.3683299986],[-13046203.24650029,4036380.0139712966],[-13046203.31064091,4036380.6652019266],[-13046203.332051678,4036381.3192332187],[-13046203.31064091,4036381.9732645107],[-13046203.24650029,4036382.6244951407],[-13046203.139904482,4036383.270136439],[-13046202.99130994,4036383.9074236695],[-13046202.801352972,4036384.533627872],[-13046202.570847003,4036385.1460675425],[-13046202.300779093,4036385.7421201207],[-13046201.992305715,4036386.3192332187],[-13046201.646747801,4036386.8749355488],[-13046201.26558508,4036387.4068475086],[-13046200.850449752,4036387.9126913697],[-13046200.40311949,4036388.3903010306],[-13046199.92550983,4036388.8376312936],[-13046199.419665968,4036389.2527666218],[-13046198.887754008,4036389.6339293416],[-13046198.332051678,4036389.9794872566],[-13046197.75493858,4036390.287960634],[-13046197.158886,4036390.558028544],[-13046196.54644633,4036390.7885345137],[-13046195.920242129,4036390.9784914814],[-13046195.282954898,4036391.127086023],[-13046194.6373136,4036391.2336818324],[-13046193.98608297,4036391.297822451],[-13046193.332051678,4036391.3192332187],[-13046192.678020386,4036391.297822451],[-13046192.026789755,4036391.2336818324],[-13046191.381148458,4036391.127086023],[-13046190.743861226,4036390.9784914814],[-13046190.117657024,4036390.7885345137],[-13046189.505217355,4036390.558028544],[-13046188.909164775,4036390.287960634],[-13046188.332051678,4036389.9794872566],[-13046187.776349347,4036389.6339293416],[-13046187.244437387,4036389.2527666218],[-13046186.738593526,4036388.8376312936],[-13046186.260983866,4036388.3903010306],[-13046185.813653603,4036387.9126913697],[-13046185.398518275,4036387.4068475086],[-13046185.017355554,4036386.8749355488],[-13046184.67179764,4036386.3192332187],[-13046184.363324262,4036385.7421201207],[-13046184.093256352,4036385.1460675425],[-13046183.862750383,4036384.533627872],[-13046183.672793414,4036383.9074236695],[-13046183.524198873,4036383.270136439],[-13046183.417603064,4036382.6244951407],[-13046183.353462445,4036381.9732645107],[-13046183.332051678,4036381.3192332187]]],"spatialReference":{"latestWkid":3857,"wkid":102100}}
//        }

//        MessageDialog {
//            id: md
//        }

//        NavigationToolbar {
//            anchors {
//                right: parent.right
//                verticalCenter: parent.verticalCenter
//                margins: 15
//            }
//        }
    }
}

