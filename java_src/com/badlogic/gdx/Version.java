package com.badlogic.gdx;

import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class Version {
    public static final int MAJOR;
    public static final int MINOR;
    public static final int REVISION;
    public static final String VERSION = "1.11.1";

    public static boolean isHigher(int i, int i2, int i3) {
        return isHigherEqual(i, i2, i3 + 1);
    }

    public static boolean isLower(int i, int i2, int i3) {
        return isLowerEqual(i, i2, i3 - 1);
    }

    static {
        int intValue;
        int intValue2;
        try {
            String[] split = VERSION.split("\\.");
            int i = 0;
            if (split.length < 1) {
                intValue = 0;
            } else {
                intValue = Integer.valueOf(split[0]).intValue();
            }
            MAJOR = intValue;
            if (split.length < 2) {
                intValue2 = 0;
            } else {
                intValue2 = Integer.valueOf(split[1]).intValue();
            }
            MINOR = intValue2;
            if (split.length >= 3) {
                i = Integer.valueOf(split[2]).intValue();
            }
            REVISION = i;
        } catch (Throwable th) {
            throw new GdxRuntimeException("Invalid version 1.11.1", th);
        }
    }

    public static boolean isHigherEqual(int i, int i2, int i3) {
        int i4 = MAJOR;
        if (i4 != i) {
            if (i4 > i) {
                return true;
            }
            return false;
        }
        int i5 = MINOR;
        if (i5 != i2) {
            if (i5 > i2) {
                return true;
            }
            return false;
        } else if (REVISION >= i3) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isLowerEqual(int i, int i2, int i3) {
        int i4 = MAJOR;
        if (i4 != i) {
            if (i4 < i) {
                return true;
            }
            return false;
        }
        int i5 = MINOR;
        if (i5 != i2) {
            if (i5 < i2) {
                return true;
            }
            return false;
        } else if (REVISION <= i3) {
            return true;
        } else {
            return false;
        }
    }
}
