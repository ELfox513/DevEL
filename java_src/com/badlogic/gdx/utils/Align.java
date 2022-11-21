package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class Align {
    public static final int bottom = 4;
    public static final int bottomLeft = 12;
    public static final int bottomRight = 20;
    public static final int center = 1;
    public static final int left = 8;
    public static final int right = 16;
    public static final int top = 2;
    public static final int topLeft = 10;
    public static final int topRight = 18;

    public static final boolean isBottom(int i) {
        return (i & 4) != 0;
    }

    public static final boolean isCenterHorizontal(int i) {
        return (i & 8) == 0 && (i & 16) == 0;
    }

    public static final boolean isCenterVertical(int i) {
        return (i & 2) == 0 && (i & 4) == 0;
    }

    public static final boolean isLeft(int i) {
        return (i & 8) != 0;
    }

    public static final boolean isRight(int i) {
        return (i & 16) != 0;
    }

    public static final boolean isTop(int i) {
        return (i & 2) != 0;
    }

    public static String toString(int i) {
        StringBuilder stringBuilder = new StringBuilder(13);
        if ((i & 2) != 0) {
            stringBuilder.append("top,");
        } else if ((i & 4) != 0) {
            stringBuilder.append("bottom,");
        } else {
            stringBuilder.append("center,");
        }
        if ((i & 8) != 0) {
            stringBuilder.append("left");
        } else if ((i & 16) != 0) {
            stringBuilder.append("right");
        } else {
            stringBuilder.append("center");
        }
        return stringBuilder.toString();
    }
}
