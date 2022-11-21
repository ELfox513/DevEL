package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public final class NumberUtils {
    public static long doubleToLongBits(double d) {
        return Double.doubleToLongBits(d);
    }

    public static int floatToIntBits(float f) {
        return Float.floatToIntBits(f);
    }

    public static int floatToIntColor(float f) {
        int floatToRawIntBits = Float.floatToRawIntBits(f);
        return floatToRawIntBits | (((int) ((floatToRawIntBits >>> 24) * 1.003937f)) << 24);
    }

    public static int floatToRawIntBits(float f) {
        return Float.floatToRawIntBits(f);
    }

    public static float intBitsToFloat(int i) {
        return Float.intBitsToFloat(i);
    }

    public static float intToFloatColor(int i) {
        return Float.intBitsToFloat(i & (-16777217));
    }

    public static double longBitsToDouble(long j) {
        return Double.longBitsToDouble(j);
    }
}
