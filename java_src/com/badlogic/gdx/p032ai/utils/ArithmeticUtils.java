package com.badlogic.gdx.p032ai.utils;
/* renamed from: com.badlogic.gdx.ai.utils.ArithmeticUtils */
/* loaded from: classes.dex */
public final class ArithmeticUtils {
    public static int gcdPositive(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int i3 = i >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i2);
        int i4 = i2 >> numberOfTrailingZeros2;
        if (numberOfTrailingZeros > numberOfTrailingZeros2) {
            numberOfTrailingZeros = numberOfTrailingZeros2;
        }
        while (i3 != i4) {
            int i5 = i3 - i4;
            if (i3 <= i4) {
                i4 = i3;
            }
            if (i5 < 0) {
                i5 = -i5;
            }
            i3 = i5 >> Integer.numberOfTrailingZeros(i5);
        }
        return i3 << numberOfTrailingZeros;
    }

    public static int lcmPositive(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int abs = Math.abs(mulAndCheck(i / gcdPositive(i, i2), i2));
        if (abs != Integer.MIN_VALUE) {
            return abs;
        }
        throw new ArithmeticException("overflow: lcm(" + i + ", " + i2 + ") > 2^31");
    }

    public static int mulAndCheck(int i, int i2) {
        long j = i * i2;
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException();
        }
        return (int) j;
    }

    public static float wrapAngleAroundZero(float f) {
        if (f >= 0.0f) {
            float f2 = f % 6.2831855f;
            return f2 > 3.1415927f ? f2 - 6.2831855f : f2;
        }
        float f3 = (-f) % 6.2831855f;
        if (f3 > 3.1415927f) {
            f3 -= 6.2831855f;
        }
        return -f3;
    }

    public static int lcmPositive(int... iArr) {
        if (iArr != null && iArr.length >= 2) {
            int i = iArr[0];
            int length = iArr.length;
            for (int i2 = 1; i2 < length; i2++) {
                i = lcmPositive(i, iArr[i2]);
            }
            return i;
        }
        throw new IllegalArgumentException("lcmPositive requires at least two arguments");
    }

    public static int gcdPositive(int... iArr) {
        if (iArr != null && iArr.length >= 2) {
            int i = iArr[0];
            int length = iArr.length;
            for (int i2 = 1; i2 < length; i2++) {
                i = gcdPositive(i, iArr[i2]);
            }
            return i;
        }
        throw new IllegalArgumentException("gcdPositive requires at least two arguments");
    }
}
