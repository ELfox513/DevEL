package com.badlogic.gdx.math;

import com.prineside.luaj.Lua;
import java.util.Random;
/* loaded from: classes.dex */
public final class MathUtils {

    /* renamed from: E */
    public static final float f5458E = 2.7182817f;
    public static final float FLOAT_ROUNDING_ERROR = 1.0E-6f;
    public static final float HALF_PI = 1.5707964f;

    /* renamed from: PI */
    public static final float f5459PI = 3.1415927f;
    public static final float PI2 = 6.2831855f;
    public static final float degRad = 0.017453292f;
    public static final float degreesToRadians = 0.017453292f;
    public static final float nanoToSec = 1.0E-9f;
    public static final float radDeg = 57.295776f;
    public static final float radiansToDegrees = 57.295776f;
    public static Random random = new RandomXS128();

    /* loaded from: classes.dex */
    public static class Sin {

        /* renamed from: a */
        public static final float[] f5460a = new float[16384];

        static {
            for (int i = 0; i < 16384; i++) {
                f5460a[i] = (float) Math.sin(((i + 0.5f) / 16384.0f) * 6.2831855f);
            }
            float[] fArr = f5460a;
            fArr[0] = 0.0f;
            fArr[4096] = 1.0f;
            fArr[8192] = 0.0f;
            fArr[12288] = -1.0f;
        }
    }

    public static int ceil(float f) {
        double d = f;
        Double.isNaN(d);
        return 16384 - ((int) (16384.0d - d));
    }

    public static int ceilPositive(float f) {
        double d = f;
        Double.isNaN(d);
        return (int) (d + 0.9999999d);
    }

    public static double clamp(double d, double d2, double d3) {
        return d < d2 ? d2 : d > d3 ? d3 : d;
    }

    public static float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static long clamp(long j, long j2, long j3) {
        return j < j2 ? j2 : j > j3 ? j3 : j;
    }

    public static short clamp(short s, short s2, short s3) {
        return s < s2 ? s2 : s > s3 ? s3 : s;
    }

    public static float cos(float f) {
        return Sin.f5460a[((int) ((f + 1.5707964f) * 2607.5945f)) & Lua.MASK_NOT_Bx];
    }

    public static float cosDeg(float f) {
        return Sin.f5460a[((int) ((f + 90.0f) * 45.511112f)) & Lua.MASK_NOT_Bx];
    }

    public static int floor(float f) {
        double d = f;
        Double.isNaN(d);
        return ((int) (d + 16384.0d)) + Lua.MASK_Bx;
    }

    public static int floorPositive(float f) {
        return (int) f;
    }

    public static boolean isEqual(float f, float f2) {
        return Math.abs(f - f2) <= 1.0E-6f;
    }

    public static boolean isPowerOfTwo(int i) {
        return i != 0 && (i & (i + (-1))) == 0;
    }

    public static boolean isZero(float f) {
        return Math.abs(f) <= 1.0E-6f;
    }

    public static float lerp(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public static float lerpAngle(float f, float f2, float f3) {
        return ((f + ((((((f2 - f) + 6.2831855f) + 3.1415927f) % 6.2831855f) - 3.1415927f) * f3)) + 6.2831855f) % 6.2831855f;
    }

    public static float lerpAngleDeg(float f, float f2, float f3) {
        return ((f + ((((((f2 - f) + 360.0f) + 180.0f) % 360.0f) - 180.0f) * f3)) + 360.0f) % 360.0f;
    }

    public static float log(float f, float f2) {
        return (float) (Math.log(f2) / Math.log(f));
    }

    public static float log2(float f) {
        return log(2.0f, f);
    }

    public static float map(float f, float f2, float f3, float f4, float f5) {
        return f3 + (((f5 - f) * (f4 - f3)) / (f2 - f));
    }

    public static int nextPowerOfTwo(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    public static float norm(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public static int random(int i) {
        return random.nextInt(i + 1);
    }

    public static boolean randomBoolean() {
        return random.nextBoolean();
    }

    public static int randomSign() {
        return (random.nextInt() >> 31) | 1;
    }

    public static float randomTriangular() {
        return random.nextFloat() - random.nextFloat();
    }

    public static int round(float f) {
        double d = f;
        Double.isNaN(d);
        return ((int) (d + 16384.5d)) + Lua.MASK_Bx;
    }

    public static int roundPositive(float f) {
        return (int) (f + 0.5f);
    }

    public static float sin(float f) {
        return Sin.f5460a[((int) (f * 2607.5945f)) & Lua.MASK_NOT_Bx];
    }

    public static float sinDeg(float f) {
        return Sin.f5460a[((int) (f * 45.511112f)) & Lua.MASK_NOT_Bx];
    }

    public static float acos(float f) {
        float f2 = f * f;
        float f3 = f * f2;
        if (f >= 0.0f) {
            return ((float) Math.sqrt(1.0f - f)) * (((1.5707288f - (f * 0.2121144f)) + (f2 * 0.074261f)) - (f3 * 0.0187293f));
        }
        return 3.1415927f - (((float) Math.sqrt(1.0f + f)) * ((((f * 0.2121144f) + 1.5707288f) + (f2 * 0.074261f)) + (f3 * 0.0187293f)));
    }

    public static float asin(float f) {
        float f2 = f * f;
        float f3 = f * f2;
        if (f >= 0.0f) {
            return 1.5707964f - (((float) Math.sqrt(1.0f - f)) * (((1.5707288f - (f * 0.2121144f)) + (f2 * 0.074261f)) - (f3 * 0.0187293f)));
        }
        return (((float) Math.sqrt(1.0f + f)) * ((((f * 0.2121144f) + 1.5707288f) + (f2 * 0.074261f)) + (f3 * 0.0187293f))) - 1.5707964f;
    }

    public static float atan2(float f, float f2) {
        float f3 = f / f2;
        if (f3 != f3) {
            if (f == f2) {
                f3 = 1.0f;
            } else {
                f3 = -1.0f;
            }
        } else {
            float f4 = f3 - f3;
            if (f4 != f4) {
                f2 = 0.0f;
            }
        }
        if (f2 > 0.0f) {
            return atanUnchecked(f3);
        }
        if (f2 < 0.0f) {
            if (f >= 0.0f) {
                return atanUnchecked(f3) + 3.1415927f;
            }
            return atanUnchecked(f3) - 3.1415927f;
        } else if (f > 0.0f) {
            return f2 + 1.5707964f;
        } else {
            if (f < 0.0f) {
                return f2 - 1.5707964f;
            }
            return f2 + f;
        }
    }

    public static boolean isEqual(float f, float f2, float f3) {
        return Math.abs(f - f2) <= f3;
    }

    public static boolean isZero(float f, float f2) {
        return Math.abs(f) <= f2;
    }

    public static int random(int i, int i2) {
        return i + random.nextInt((i2 - i) + 1);
    }

    public static boolean randomBoolean(float f) {
        return random() < f;
    }

    public static float randomTriangular(float f) {
        return (random.nextFloat() - random.nextFloat()) * f;
    }

    public static float atan(float f) {
        double min = Math.min(Math.abs(f), Double.MAX_VALUE);
        double d = (min - 1.0d) / (min + 1.0d);
        double d2 = d * d;
        double d3 = d * d2;
        double d4 = d3 * d2;
        double d5 = d4 * d2;
        double d6 = d5 * d2;
        return (float) Math.copySign(((((((d * 0.99997726d) - (d3 * 0.33262347d)) + (d4 * 0.19354346d)) - (d5 * 0.11643287d)) + (d6 * 0.05265332d)) - ((d2 * d6) * 0.0117212d)) + 0.7853981633974483d, f);
    }

    public static float atanUnchecked(double d) {
        double abs = Math.abs(d);
        double d2 = (abs - 1.0d) / (abs + 1.0d);
        double d3 = d2 * d2;
        double d4 = d2 * d3;
        double d5 = d4 * d3;
        double d6 = d5 * d3;
        double d7 = d6 * d3;
        return (float) Math.copySign(((((((d2 * 0.99997726d) - (d4 * 0.33262347d)) + (d5 * 0.19354346d)) - (d6 * 0.11643287d)) + (d7 * 0.05265332d)) - ((d3 * d7) * 0.0117212d)) + 0.7853981633974483d, d);
    }

    public static long random(long j) {
        return random(0L, j);
    }

    public static float randomTriangular(float f, float f2) {
        return randomTriangular(f, f2, (f + f2) * 0.5f);
    }

    public static long random(long j, long j2) {
        long nextLong = random.nextLong();
        if (j2 >= j) {
            j = j2;
            j2 = j;
        }
        long j3 = (j - j2) + 1;
        long j4 = nextLong & 4294967295L;
        long j5 = 4294967295L & j3;
        long j6 = nextLong >>> 32;
        long j7 = j3 >>> 32;
        return j2 + ((j5 * j6) >>> 32) + ((j4 * j7) >>> 32) + (j6 * j7);
    }

    public static float randomTriangular(float f, float f2, float f3) {
        float nextFloat = random.nextFloat();
        float f4 = f2 - f;
        float f5 = f3 - f;
        if (nextFloat <= f5 / f4) {
            return f + ((float) Math.sqrt(nextFloat * f4 * f5));
        }
        return f2 - ((float) Math.sqrt(((1.0f - nextFloat) * f4) * (f2 - f3)));
    }

    public static float random() {
        return random.nextFloat();
    }

    public static float random(float f) {
        return random.nextFloat() * f;
    }

    public static float random(float f, float f2) {
        return f + (random.nextFloat() * (f2 - f));
    }
}
