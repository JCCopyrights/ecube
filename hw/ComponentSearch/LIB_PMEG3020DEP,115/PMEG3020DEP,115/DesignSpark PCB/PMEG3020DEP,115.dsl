SamacSys ECAD Model
994562/67827/2.32/2/4/Schottky Diode

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r210_140"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.4) (shapeHeight 2.1))
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
	(patternDef "SOD128" (originalName "SOD128")
		(multiLayer
			(pad (padNum 1) (padStyleRef r210_140) (pt -2.2, 0) (rotation 0))
			(pad (padNum 2) (padStyleRef r210_140) (pt 2.2, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 1.387, 3.793) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.328, -0.073) (radius 0.065) (startAngle 0.0) (sweepAngle 0.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.328, -0.073) (radius 0.065) (startAngle 180.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.9 1.25) (pt 1.9 1.25) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.9 1.25) (pt 1.9 -1.25) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.9 -1.25) (pt -1.9 -1.25) (width 0.2))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.9 -1.25) (pt -1.9 1.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.9 1.25) (pt 1.9 1.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.9 -1.25) (pt -1.9 -1.25) (width 0.2))
		)
	)
	(symbolDef "PMEG3020DEP_115" (originalName "PMEG3020DEP_115")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 0 mils -45 mils) (rotation 0]) (justify "UpperLeft") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 600 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 600 mils -45 mils) (rotation 0]) (justify "UpperRight") (textStyleRef "Default"))
		))
		(line (pt 200 mils 0 mils) (pt 400 mils 100 mils) (width 6 mils))
		(line (pt 400 mils 100 mils) (pt 400 mils -100 mils) (width 6 mils))
		(line (pt 400 mils -100 mils) (pt 200 mils 0 mils) (width 6 mils))
		(line (pt 200 mils 80 mils) (pt 200 mils -80 mils) (width 6 mils))
		(line (pt 200 mils 80 mils) (pt 240 mils 100 mils) (width 6 mils))
		(line (pt 160 mils -100 mils) (pt 200 mils -80 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 400 mils 350 mils) (justify LowerLeft) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "PMEG3020DEP,115" (originalName "PMEG3020DEP,115") (compHeader (numPins 2) (numParts 1) (refDesPrefix D)
		)
		(compPin "1" (pinName "K") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "A") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "PMEG3020DEP_115"))
		(attachedPattern (patternNum 1) (patternName "SOD128")
			(numPads 2)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
			)
		)
		(attr "Manufacturer_Name" "Nexperia")
		(attr "Manufacturer_Part_Number" "PMEG3020DEP,115")
		(attr "RS Part Number" "1513051")
		(attr "RS Price/Stock" "http://uk.rs-online.com/web/p/products/1513051")
		(attr "Arrow Part Number" "PMEG3020DEP,115")
		(attr "Arrow Price/Stock" "https://www.arrow.com/en/products/pmeg3020dep115/nexperia")
		(attr "Description" "Diode Schottky 30V 2A MEGA Auto SOD-128")
		(attr "Datasheet Link" "https://assets.nexperia.com/documents/data-sheet/PMEG3020DEP.pdf")
	)

)
