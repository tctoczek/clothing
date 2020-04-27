%Main Code
clear all
close all
clc
%Sewing Pattern Generator
%This program generates measurements for specific sewing patterns based on 
%the users given body and preferred measurements, taking into account the
%standard 3/8" seam allowance. Choice for measurement units can also be
%adjusted. 

pieceChoice = input('What would you like to make today?\n Choose from the following:\n circle skirt, pencil skirt, slip-on pants, off-shoulder top, halter top, tube top, bucket hat\n', 's');

unitChoice = input('Would you like to put in measurements in inches or centimeters? [in/cm] \n', 's');

disp(strcat('Type in your measurements to make your  ', pieceChoice));

if pieceChoice == "circle skirt"
%Circle skirt function

    waistCir = input('Waist measurement: ');
    hipCir = input('Hip measurement: ');
    skirtLength = input('Desired skirt length: ');
    waistbHeight = input('Desired waistband thickness: ');
    zipper = input('Desired/Available zipper length: ');
    
    if unitChoice == "cm"
        waistCir = cm2inch(waistCir);
        hipCir = cm2inch(hipCir);
        skirtLength = cm2inch(skirtLength);
        waistbHeight = cm2inch(waistbHeight);
        zipper = cm2inch(zipper);
    end
    
    
    [bigDiam, smallDiam, zipLength, waistbLength, waistbWidth] = circleSkirt(waistCir, hipCir, skirtLength, waistbHeight, zipper);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == "cm"
        disp('bigDiam: ' + string(inch2cm(bigDiam)));
        disp('smallDiam: ' + string(inch2cm(smallDiam)));
        disp('zipLength: ' + string(inch2cm(zipLength)));
        disp('waistbLength: ' + string(inch2cm(waistbLength)));
        disp('waistbWidth: ' + string(inch2cm(waistbWidth)));
    else
        disp('bigDiam: ' + string(bigDiam));
        disp('smallDiam: ' + string(smallDiam));
        disp('zipLength: ' + string(zipLength));
        disp('waistbLength: ' + string(waistbLength));
        disp('waistbWidth: ' + string(waistbWidth));
    end
    imshow('CircleSkirt.jpg')
    
elseif pieceChoice == "pencil skirt"
%Pencil Skirt function

    waistCir = input('Waist measurement: ');
    hipCir = input('Hip measurement: ');
    skirtDepth = input('Desired skirt length: ');
    waistbHeight = input('Desired waistband thickness: ');
    
    if unitChoice == 'cm'
        waistCir = cm2inch(waistCir);
        hipCir = cm2inch(hipCir);
        skirtDepth = cm2inch(skirtDepth);
        waistbHeight = cm2inch(waistbHeight);
    end
    
    [skirtLength, skirtHeight, zipLength, waistbLength, waistbWidth] = pencilSkirt(waistCir, hipCir, skirtDepth, waistbHeight);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('skirtLength: ' + string(inch2cm(skirtLength)));
        disp('skirtHeight: ' + string(inch2cm(skirtHeight)));
        disp('zipLength: ' + string(inch2cm(zipLength)));
        disp('waistbLength: ' + string(inch2cm(waistbLength)));
        disp('waistbWidth: ' + string(inch2cm(waistbWidth)));
    else
        disp('skirtLength: ' + string(skirtLength));
        disp('skirtHeight: ' + string(skirtHeight));
        disp('zipLength: ' + string(zipLength));
        disp('waistbLength: ' + string(waistbLength));
        disp('waistbWidth: ' + string(waistbWidth));
    end
    imshow('PencilSkirt.jpg')
    
elseif pieceChoice == "slip-on pants"
    
    waistCir = input('Waist measurement: ');
    hipCir = input('Hip measurement: ');
    calfCir = input('Calf circumference measurement: ');
    crotchHeight = input('Desired length from waist to crotch of pants: ');
    pantLength = input('Desired pants length: ');
    garterWidth = input('Available garter width: ');
    
    if unitChoice == 'cm'
        waistCir = cm2inch(waistCir);
        hipCir = cm2inch(hipCir);
        calfCir = cm2inch(calfCir);
        crotchHeight = cm2inch(crotchHeight);
        pantLength = cm2inch(pantLength);
        garterWidth = cm2inch(garterWidth);
    end
 
    [topCut, bottomCut, innerCut, outerCut, garterLength, waistbLength, waistbWidth] = slipPants(waistCir, hipCir, calfCir, crotchHeight, pantLength, garterWidth);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('topCut: ' + string(inch2cm(topCut)));
        disp('bottomCut: ' + string(inch2cm(bottomCut)));
        disp('innerCut: ' + string(inch2cm(innerCut)));
        disp('outerCut: ' + string(inch2cm(outerCut)));
        disp('waistbLength: ' + string(inch2cm(waistbLength)));
        disp('waistbWidth: ' + string(inch2cm(waistbWidth)));
    else
        disp('topCut: ' + string(topCut));
        disp('bottomCut: ' + string(bottomCut));
        disp('innerCut: ' + string(innerCut));
        disp('outerCut: ' + string(outerCut));
        disp('waistbLength: ' + string(waistbLength));
        disp('waistbWidth: ' + string(waistbWidth));
    end
    
    imshow('SlipOnPants.jpg')
    
   
elseif pieceChoice == "off-shoulder top"
%Off-shoulder top function

    chestCir = input('Chest measurement: ');
    bustCir = input('Bust measurement: ');
    waistCir = input('Waist measurement: ');
    topLength = input('Desired top length: ');
    armCir = input('Arm measurement: ');
    sleeveL = input('Desired sleeve length: ');
    garterWidth = input('Available garter width: '); 
    
    if unitChoice == 'cm'
        chestCir = cm2inch(chestCir);
        bustCir = cm2inch(bustCir);
        waistCir = cm2inch(waistCir);
        topLength = cm2inch(topLength);
        armCir = cm2inch(armCir);
        sleeveL = cm2inch(sleeveL);
        garterWidth = cm2inch(garterWidth);
    end
    
    [bodLength, bodWidth, sleeveLength, sleeveWidth, bodGarterTop, bodGarterBottom, sleeveGarter] = offShoulder(chestCir, bustCir, waistCir, topLength, armCir,sleeveL, garterWidth);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('bodLength: ' + string(inch2cm(bodLength)));
        disp('bodWidth: ' + string(inch2cm(bodWidth)));
        disp('sleeveLength: ' + string(inch2cm(sleeveLength)));
        disp('sleeveWidth: ' + string(inch2cm(sleeveWidth)));
        disp('bodGarterTop: ' + string(inch2cm(bodGarterTop)));
        disp('bodGarterBottom: ' + string(inch2cm(bodGarterBottom)));
        disp('sleeveGarter: ' + string(inch2cm(sleeveGarter)));
    else
        disp('bodLength: ' + string(bodLength));
        disp('bodWidth: ' + string(bodWidth));
        disp('sleeveLength: ' + string(sleeveLength));
        disp('sleeveWidth: ' + string(sleeveWidth));
        disp('bodGarterTop: ' + string(bodGarterTop));
        disp('bodGarterBottom: ' + string(bodGarterBottom));
        disp('sleeveGarter: ' + string(sleeveGarter));
    end
    
    imshow('OffShoulder.jpg')
    
elseif pieceChoice == "halter top"
%Halter top function

    waistCir = input('Waist measurement: ');
    topLength = input('Desired top length: ');
    halterWidth = input('Desired halter (neckline) width: ');
    halterHeight = input('Desired halter height (from top end of desired length): '); 
    
    if unitChoice == 'cm'
        waistCir = cm2inch(waistCir);
        topLength = cm2inch(topLength);
        halterWidth = cm2inch(halterWidth);
        halterHeight = cm2inch(halterHeight);
    end
    
    [bodLength, bodHeight, bodHalterHeight, bodHalterWidth, strapLength] = halterTop(waistCir, topLength, halterWidth, halterHeight)
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('bodLength: ' + string(inch2cm(bodLength)));
        disp('bodHeight: ' + string(inch2cm(bodHeight)));
        disp('bodHalterHeight: ' + string(inch2cm(bodHalterHeight)));
        disp('bodHalterWidth: ' + string(inch2cm(bodHalterWidth)));
        disp('strapLength: ' + string(inch2cm(strapLength)));
    else
        disp('bodLength: ' + string(bodLength));
        disp('bodHeight: ' + string(bodHeight));
        disp('bodHalterHeight: ' + string(bodHalterHeight));
        disp('bodHalterWidth: ' + string(bodHalterWidth));
        disp('strapLength: ' + string(strapLength));
    end
    
    imshow('HalterTop.jpg')
    
    
elseif pieceChoice == "tube top"
%Tube top function

    chestCir = input('Chest measurement: ');
    bustCir = input('Bust measurement: ');
    waistCir = input('Waist measurement: ');
    topLength = input('Desired top length: '); 
    
    if unitChoice == 'cm'
        chestCir = cm2inch(chestCir);
        bustCir = cm2inch(bustCir);
        waistCir = cm2inch(waistCir);
        topLength = cm2inch(topLength);
    end
    
    [bodLength, bodWidth, garterLength, garterWidth] = tubeTop(chestCir, bustCir, waistCir, topLength);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('bodLength: ' + string(inch2cm(bodLength)));
        disp('bodWidth: ' + string(inch2cm(bodWidth)));
        disp('garterLength: ' + string(inch2cm(garterLength)));
        disp('garterWidth: ' + string(inch2cm(garterWidth)));
    else
        disp('bodLength: ' + string(bodLength));
        disp('bodWidth: ' + string(bodWidth));
        disp('garterLength: ' + string(garterLength));
        disp('garterWidth: ' + string(garterWidth));
    end
    
    imshow('TubeTop.jpg')
    
elseif pieceChoice == "bucket hat"
%Bucket hat function

    headCir = input('Head circumference measurement: ');
    
    if unitChoice == 'cm'
        headCir = cm2inch(headCir);
    end
    
    [circleRad, hatHeight, brimWidth] = bucketHat(headCir);
    
    disp('Use the following measurements and pattern pieces in the image');
    
    if unitChoice == 'cm'
        disp('circleRad: ' + string(inch2cm(circleRad)));
        disp('hatHeight: ' + string(inch2cm(hatHeight)));
        disp('brimWidth: ' + string(inch2cm(brimWidth)));
    else
        disp('circleRad: ' + string(circleRad));
        disp('hatHeight: ' + string(hatHeight));
        disp('brimWidth: ' + string(brimWidth));
    end
    
    imshow('BucketHat.jpg')
    
else
    disp(strcat(pieceChoice, ' is an invalid choice'));
end

disp('To generate a new pattern, re-run the program.');
