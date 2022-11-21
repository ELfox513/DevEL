package com.prineside.tdi2.enums;

import com.badlogic.gdx.math.Interpolation;
/* loaded from: classes2.dex */
public enum InterpolationType {
    linear,
    smooth,
    smooth2,
    smoother,
    fade,
    pow2,
    slowFast,
    fastSlow,
    pow2InInverse,
    pow2OutInverse,
    pow3,
    pow3In,
    pow3Out,
    pow3InInverse,
    pow3OutInverse,
    pow4,
    pow4In,
    pow4Out,
    pow5,
    pow5In,
    pow5Out,
    sine,
    sineIn,
    sineOut,
    exp10,
    exp10In,
    exp10Out,
    exp5,
    exp5In,
    exp5Out,
    circle,
    circleIn,
    circleOut,
    elastic,
    elasticIn,
    elasticOut,
    swing,
    swingIn,
    swingOut,
    bounce,
    bounceIn,
    bounceOut;
    
    public static final Interpolation[] objects;
    public static final InterpolationType[] values;

    public static Interpolation getObject(InterpolationType interpolationType) {
        return objects[interpolationType.ordinal()];
    }

    public static InterpolationType getType(Interpolation interpolation) {
        int i = 0;
        while (true) {
            Interpolation[] interpolationArr = objects;
            if (i < interpolationArr.length) {
                if (interpolationArr[i] == interpolation) {
                    return values[i];
                }
                i++;
            } else {
                return null;
            }
        }
    }

    static {
        InterpolationType interpolationType;
        InterpolationType interpolationType2;
        InterpolationType interpolationType3;
        InterpolationType interpolationType4;
        InterpolationType interpolationType5;
        InterpolationType interpolationType6;
        InterpolationType interpolationType7;
        InterpolationType interpolationType8;
        InterpolationType interpolationType9;
        InterpolationType interpolationType10;
        InterpolationType interpolationType11;
        InterpolationType interpolationType12;
        InterpolationType interpolationType13;
        InterpolationType interpolationType14;
        InterpolationType interpolationType15;
        InterpolationType interpolationType16;
        InterpolationType interpolationType17;
        InterpolationType interpolationType18;
        InterpolationType interpolationType19;
        InterpolationType interpolationType20;
        InterpolationType interpolationType21;
        InterpolationType interpolationType22;
        InterpolationType interpolationType23;
        InterpolationType interpolationType24;
        InterpolationType interpolationType25;
        InterpolationType interpolationType26;
        InterpolationType interpolationType27;
        InterpolationType interpolationType28;
        InterpolationType interpolationType29;
        InterpolationType interpolationType30;
        InterpolationType interpolationType31;
        InterpolationType interpolationType32;
        InterpolationType interpolationType33;
        InterpolationType interpolationType34;
        InterpolationType interpolationType35;
        InterpolationType interpolationType36;
        InterpolationType interpolationType37;
        InterpolationType interpolationType38;
        InterpolationType interpolationType39;
        InterpolationType interpolationType40;
        InterpolationType interpolationType41;
        InterpolationType interpolationType42;
        InterpolationType[] values2 = values();
        values = values2;
        Interpolation[] interpolationArr = new Interpolation[values2.length];
        objects = interpolationArr;
        interpolationArr[interpolationType.ordinal()] = Interpolation.linear;
        interpolationArr[interpolationType2.ordinal()] = Interpolation.smooth;
        interpolationArr[interpolationType3.ordinal()] = Interpolation.smooth2;
        interpolationArr[interpolationType4.ordinal()] = Interpolation.smoother;
        interpolationArr[interpolationType5.ordinal()] = Interpolation.fade;
        interpolationArr[interpolationType6.ordinal()] = Interpolation.pow2;
        interpolationArr[interpolationType7.ordinal()] = Interpolation.slowFast;
        interpolationArr[interpolationType8.ordinal()] = Interpolation.fastSlow;
        interpolationArr[interpolationType9.ordinal()] = Interpolation.pow2InInverse;
        interpolationArr[interpolationType10.ordinal()] = Interpolation.pow2OutInverse;
        interpolationArr[interpolationType11.ordinal()] = Interpolation.pow3;
        interpolationArr[interpolationType12.ordinal()] = Interpolation.pow3In;
        interpolationArr[interpolationType13.ordinal()] = Interpolation.pow3Out;
        interpolationArr[interpolationType14.ordinal()] = Interpolation.pow3InInverse;
        interpolationArr[interpolationType15.ordinal()] = Interpolation.pow3OutInverse;
        interpolationArr[interpolationType16.ordinal()] = Interpolation.pow4;
        interpolationArr[interpolationType17.ordinal()] = Interpolation.pow4In;
        interpolationArr[interpolationType18.ordinal()] = Interpolation.pow4Out;
        interpolationArr[interpolationType19.ordinal()] = Interpolation.pow5;
        interpolationArr[interpolationType20.ordinal()] = Interpolation.pow5In;
        interpolationArr[interpolationType21.ordinal()] = Interpolation.pow5Out;
        interpolationArr[interpolationType22.ordinal()] = Interpolation.sine;
        interpolationArr[interpolationType23.ordinal()] = Interpolation.sineIn;
        interpolationArr[interpolationType24.ordinal()] = Interpolation.sineOut;
        interpolationArr[interpolationType25.ordinal()] = Interpolation.exp10;
        interpolationArr[interpolationType26.ordinal()] = Interpolation.exp10In;
        interpolationArr[interpolationType27.ordinal()] = Interpolation.exp10Out;
        interpolationArr[interpolationType28.ordinal()] = Interpolation.exp5;
        interpolationArr[interpolationType29.ordinal()] = Interpolation.exp5In;
        interpolationArr[interpolationType30.ordinal()] = Interpolation.exp5Out;
        interpolationArr[interpolationType31.ordinal()] = Interpolation.circle;
        interpolationArr[interpolationType32.ordinal()] = Interpolation.circleIn;
        interpolationArr[interpolationType33.ordinal()] = Interpolation.circleOut;
        interpolationArr[interpolationType34.ordinal()] = Interpolation.elastic;
        interpolationArr[interpolationType35.ordinal()] = Interpolation.elasticIn;
        interpolationArr[interpolationType36.ordinal()] = Interpolation.elasticOut;
        interpolationArr[interpolationType37.ordinal()] = Interpolation.swing;
        interpolationArr[interpolationType38.ordinal()] = Interpolation.swingIn;
        interpolationArr[interpolationType39.ordinal()] = Interpolation.swingOut;
        interpolationArr[interpolationType40.ordinal()] = Interpolation.bounce;
        interpolationArr[interpolationType41.ordinal()] = Interpolation.bounceIn;
        interpolationArr[interpolationType42.ordinal()] = Interpolation.bounceOut;
    }
}
