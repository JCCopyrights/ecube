SamacSys ECAD Model
253699/67827/2.32/5/4/Connector

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r138_45"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.45) (shapeHeight 1.38))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r210_147.5"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.475) (shapeHeight 2.1))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r190_117.5"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.175) (shapeHeight 1.9))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r237.5_190"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.9) (shapeHeight 2.375))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "47346-0001" (originalName "47346-0001")
		(multiLayer
			(pad (padNum 1) (padStyleRef r138_45) (pt 1.3, -4.81) (rotation 0))
			(pad (padNum 2) (padStyleRef r138_45) (pt 0.65, -4.81) (rotation 0))
			(pad (padNum 3) (padStyleRef r138_45) (pt 0, -4.81) (rotation 0))
			(pad (padNum 4) (padStyleRef r138_45) (pt -0.65, -4.81) (rotation 0))
			(pad (padNum 5) (padStyleRef r138_45) (pt -1.3, -4.81) (rotation 0))
			(pad (padNum 6) (padStyleRef r210_147.5) (pt -2.4525, -4.45) (rotation 0))
			(pad (padNum 7) (padStyleRef r210_147.5) (pt 2.4525, -4.45) (rotation 0))
			(pad (padNum 8) (padStyleRef r190_117.5) (pt 0.8375, -2.15) (rotation 0))
			(pad (padNum 9) (padStyleRef r190_117.5) (pt -0.8375, -2.15) (rotation 0))
			(pad (padNum 10) (padStyleRef r237.5_190) (pt 2.9125, -2.15) (rotation 90))
			(pad (padNum 11) (padStyleRef r237.5_190) (pt -2.9125, -2.15) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -0.313, -3.58) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.75 0) (pt 3.75 0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.75 0) (pt 3.75 -5) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.75 -5) (pt -3.75 -5) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.75 -5) (pt -3.75 0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.75 0) (pt 3.75 0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 3.75 -5) (pt 3.75 -3.373) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.75 -5) (pt -3.75 -3.373) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 1.572, -5.79) (radius 0.04589) (startAngle 0.0) (sweepAngle 0.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 1.572, -5.79) (radius 0.04589) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
	)
	(symbolDef "47346-1001" (originalName "47346-1001")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 1300 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 1300 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1070 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 1100 mils 100 mils) (width 6 mils))
		(line (pt 1100 mils 100 mils) (pt 1100 mils -300 mils) (width 6 mils))
		(line (pt 1100 mils -300 mils) (pt 200 mils -300 mils) (width 6 mils))
		(line (pt 200 mils -300 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1150 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "47346-1001" (originalName "47346-1001") (compHeader (numPins 5) (numParts 1) (refDesPrefix J)
		)
		(compPin "1" (pinName "VBUS_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "D+") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "D-") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "VBUS_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "NAME") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "47346-1001"))
		(attachedPattern (patternNum 1) (patternName "47346-0001")
			(numPads 5)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
			)
		)
		(attr "Manufacturer_Name" "Molex")
		(attr "Manufacturer_Part_Number" "47346-1001")
		(attr "RS Part Number" "")
		(attr "RS Price/Stock" "")
		(attr "Arrow Part Number" "47346-1001")
		(attr "Arrow Price/Stock" "")
		(attr "Description" "MOLEX - 47346-1001 - MULTIPOLE CONNECTOR")
		(attr "Datasheet Link" "http://www.molex.com/webdocs/datasheets/pdf/en-us/0473461001_IO_CONNECTORS.pdf")
	)

)
