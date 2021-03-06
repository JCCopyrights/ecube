SamacSys ECAD Model
523740/67827/2.32/25/4/Integrated Circuit

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r75_30"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.3) (shapeHeight 0.75))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(padStyleDef "r275_265"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 2.65) (shapeHeight 2.75))
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
	(patternDef "QFN50P400X400X95-25N" (originalName "QFN50P400X400X95-25N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r75_30) (pt -2, 1.25) (rotation 90))
			(pad (padNum 2) (padStyleRef r75_30) (pt -2, 0.75) (rotation 90))
			(pad (padNum 3) (padStyleRef r75_30) (pt -2, 0.25) (rotation 90))
			(pad (padNum 4) (padStyleRef r75_30) (pt -2, -0.25) (rotation 90))
			(pad (padNum 5) (padStyleRef r75_30) (pt -2, -0.75) (rotation 90))
			(pad (padNum 6) (padStyleRef r75_30) (pt -2, -1.25) (rotation 90))
			(pad (padNum 7) (padStyleRef r75_30) (pt -1.25, -2) (rotation 0))
			(pad (padNum 8) (padStyleRef r75_30) (pt -0.75, -2) (rotation 0))
			(pad (padNum 9) (padStyleRef r75_30) (pt -0.25, -2) (rotation 0))
			(pad (padNum 10) (padStyleRef r75_30) (pt 0.25, -2) (rotation 0))
			(pad (padNum 11) (padStyleRef r75_30) (pt 0.75, -2) (rotation 0))
			(pad (padNum 12) (padStyleRef r75_30) (pt 1.25, -2) (rotation 0))
			(pad (padNum 13) (padStyleRef r75_30) (pt 2, -1.25) (rotation 90))
			(pad (padNum 14) (padStyleRef r75_30) (pt 2, -0.75) (rotation 90))
			(pad (padNum 15) (padStyleRef r75_30) (pt 2, -0.25) (rotation 90))
			(pad (padNum 16) (padStyleRef r75_30) (pt 2, 0.25) (rotation 90))
			(pad (padNum 17) (padStyleRef r75_30) (pt 2, 0.75) (rotation 90))
			(pad (padNum 18) (padStyleRef r75_30) (pt 2, 1.25) (rotation 90))
			(pad (padNum 19) (padStyleRef r75_30) (pt 1.25, 2) (rotation 0))
			(pad (padNum 20) (padStyleRef r75_30) (pt 0.75, 2) (rotation 0))
			(pad (padNum 21) (padStyleRef r75_30) (pt 0.25, 2) (rotation 0))
			(pad (padNum 22) (padStyleRef r75_30) (pt -0.25, 2) (rotation 0))
			(pad (padNum 23) (padStyleRef r75_30) (pt -0.75, 2) (rotation 0))
			(pad (padNum 24) (padStyleRef r75_30) (pt -1.25, 2) (rotation 0))
			(pad (padNum 25) (padStyleRef r275_265) (pt 0, 0) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -2.6 2.6) (pt 2.6 2.6) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 2.6 2.6) (pt 2.6 -2.6) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 2.6 -2.6) (pt -2.6 -2.6) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -2.6 -2.6) (pt -2.6 2.6) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2 2) (pt 2 2) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2 2) (pt 2 -2) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2 -2) (pt -2 -2) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2 -2) (pt -2 2) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -2 1.5) (pt -1.5 2) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.375, 2) (radius 0.125) (startAngle 0.0) (sweepAngle 0.0) (width 0.25))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -2.375, 2) (radius 0.125) (startAngle 180.0) (sweepAngle 180.0) (width 0.25))
		)
	)
	(symbolDef "MPU-6050" (originalName "MPU-6050")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 300 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 325 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 400 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 425 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 9) (pt 500 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 525 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 10) (pt 600 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 625 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 11) (pt 700 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 725 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 12) (pt 800 mils -1200 mils) (rotation 90) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 825 mils -970 mils) (rotation 90]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 13) (pt 1200 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 14) (pt 1200 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 15) (pt 1200 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 16) (pt 1200 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 17) (pt 1200 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 18) (pt 1200 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 970 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 19) (pt 300 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 325 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 20) (pt 400 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 425 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 21) (pt 500 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 525 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 22) (pt 600 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 625 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 23) (pt 700 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 725 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 24) (pt 800 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 825 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 25) (pt 900 mils 1000 mils) (rotation 270) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 925 mils 770 mils) (rotation 90]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 800 mils) (pt 1000 mils 800 mils) (width 6 mils))
		(line (pt 1000 mils 800 mils) (pt 1000 mils -1000 mils) (width 6 mils))
		(line (pt 1000 mils -1000 mils) (pt 200 mils -1000 mils) (width 6 mils))
		(line (pt 200 mils -1000 mils) (pt 200 mils 800 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1050 mils 1000 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "MPU-6050" (originalName "MPU-6050") (compHeader (numPins 25) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "CLKIN") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "NC_1") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "NC_2") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "NC_3") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "NC_4") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "AUX_DA") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "AUX_CL") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "VLOGIC") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "9" (pinName "AD0") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "10" (pinName "REGOUT") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "11" (pinName "FSYNC") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "12" (pinName "INT") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "18" (pinName "GND") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "17" (pinName "NC_8") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "16" (pinName "NC_7") (partNum 1) (symPinNum 15) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "15" (pinName "NC_6") (partNum 1) (symPinNum 16) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "14" (pinName "NC_5") (partNum 1) (symPinNum 17) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "13" (pinName "VDD") (partNum 1) (symPinNum 18) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "25" (pinName "THERMAL PAD") (partNum 1) (symPinNum 19) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "24" (pinName "SDA") (partNum 1) (symPinNum 20) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "23" (pinName "SCL") (partNum 1) (symPinNum 21) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "22" (pinName "RESV_3") (partNum 1) (symPinNum 22) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "21" (pinName "RESV_2") (partNum 1) (symPinNum 23) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "20" (pinName "CPOUT") (partNum 1) (symPinNum 24) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "19" (pinName "RESV_1") (partNum 1) (symPinNum 25) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "MPU-6050"))
		(attachedPattern (patternNum 1) (patternName "QFN50P400X400X95-25N")
			(numPads 25)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
				(padNum 15) (compPinRef "15")
				(padNum 16) (compPinRef "16")
				(padNum 17) (compPinRef "17")
				(padNum 18) (compPinRef "18")
				(padNum 19) (compPinRef "19")
				(padNum 20) (compPinRef "20")
				(padNum 21) (compPinRef "21")
				(padNum 22) (compPinRef "22")
				(padNum 23) (compPinRef "23")
				(padNum 24) (compPinRef "24")
				(padNum 25) (compPinRef "25")
			)
		)
		(attr "Manufacturer_Name" "INVENSENSE")
		(attr "Manufacturer_Part_Number" "MPU-6050")
		(attr "RS Part Number" "8837948P")
		(attr "RS Price/Stock" "http://uk.rs-online.com/web/p/products/8837948P")
		(attr "Arrow Part Number" "MPU-6050")
		(attr "Arrow Price/Stock" "http://uk.rs-online.com/web/p/products/8837948P")
		(attr "Description" "Gyro & Accelerometer 6 Axis I2C,MEMs InvenSense MPU-6050 6-Axis Motion Sensor Module")
		(attr "Datasheet Link" "http://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf")
		(attr "Height" "0.95 mm")
	)

)
