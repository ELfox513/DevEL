package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public final class TimeUtils {
    public static long millis() {
        return System.currentTimeMillis();
    }

    public static long millisToNanos(long j) {
        return j * 1000000;
    }

    public static long nanoTime() {
        return System.nanoTime();
    }

    public static long nanosToMillis(long j) {
        return j / 1000000;
    }

    public static long timeSinceMillis(long j) {
        return millis() - j;
    }

    public static long timeSinceNanos(long j) {
        return nanoTime() - j;
    }
}
