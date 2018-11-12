PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//226072/67827/2.32/4/3/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r125_95"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.95) (shapeHeight 1.25))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r320_125"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.25) (shapeHeight 3.2))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOT230P700X180-4N" (originalName "SOT230P700X180-4N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r125_95) (pt -3.4, 2.3) (rotation 90))
			(pad (padNum 2) (padStyleRef r125_95) (pt -3.4, 0) (rotation 90))
			(pad (padNum 3) (padStyleRef r125_95) (pt -3.4, -2.3) (rotation 90))
			(pad (padNum 4) (padStyleRef r320_125) (pt 3.4, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -4.275 3.6) (pt 4.275 3.6) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 4.275 3.6) (pt 4.275 -3.6) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 4.275 -3.6) (pt -4.275 -3.6) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -4.275 -3.6) (pt -4.275 3.6) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.75 3.25) (pt 1.75 3.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.75 3.25) (pt 1.75 -3.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.75 -3.25) (pt -1.75 -3.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.75 -3.25) (pt -1.75 3.25) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.75 0.95) (pt 0.55 3.25) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.425 3.25) (pt 2.425 3.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.425 3.25) (pt 2.425 -3.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.425 -3.25) (pt -2.425 -3.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -2.425 -3.25) (pt -2.425 3.25) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -4.025 3.125) (pt -2.775 3.125) (width 0.2))
		)
	)
	(symbolDef "NCP1117ST33T3G" (originalName "NCP1117ST33T3G")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 1200 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 1200 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 1000 mils 100 mils) (width 6 mils))
		(line (pt 1000 mils 100 mils) (pt 1000 mils -200 mils) (width 6 mils))
		(line (pt 1000 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1050 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 1050 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "NCP1117ST33T3G" (originalName "NCP1117ST33T3G") (compHeader (numPins 4) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "GND") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "2" (pinName "OUT_1") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "3" (pinName "IN") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "4" (pinName "OUT_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Output))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "NCP1117ST33T3G"))
		(attachedPattern (patternNum 1) (patternName "SOT230P700X180-4N")
			(numPads 4)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
			)
		)
		(attr "Manufacturer_Name" "ON Semiconductor")
		(attr "Manufacturer_Part_Number" "NCP1117ST33T3G")
		(attr "RS Part Number" "7857207P")
		(attr "RS Price/Stock" "http://uk.rs-online.com/web/p/products/7857207P")
		(attr "Allied_Number" "70340559")
		(attr "Allied Price/Stock" "http://www.alliedelec.com/on-semiconductor-ncp1117st33t3g/70340559/")
		(attr "Arrow Part Number" "NCP1117ST33T3G")
		(attr "Arrow Price/Stock" "https://www.arrow.com/en/products/ncp1117st33t3g/on-semiconductor")
		(attr "Description" "ON SEMICONDUCTOR - NCP1117ST33T3G - IC, LINEAR VOLTAGE REGULATOR")
		(attr "<Hyperlink>" "http://www.onsemi.com/pub/Collateral/NCP1117-D.PDF")
		(attr "<Component Height>" "1.8")
	)

)
