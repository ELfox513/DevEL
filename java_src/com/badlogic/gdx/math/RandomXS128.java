package com.badlogic.gdx.math;

import java.util.Random;
/* loaded from: classes.dex */
public class RandomXS128 extends Random {

    /* renamed from: a */
    public long f5521a;

    /* renamed from: b */
    public long f5522b;

    public RandomXS128() {
        setSeed(new Random().nextLong());
    }

    /* renamed from: a */
    public static final long m23902a(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    public long getState(int i) {
        return i == 0 ? this.f5521a : this.f5522b;
    }

    @Override // java.util.Random
    public final int next(int i) {
        return (int) (nextLong() & ((1 << i) - 1));
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return (nextLong() & 1) != 0;
    }

    @Override // java.util.Random
    public void nextBytes(byte[] bArr) {
        int i;
        int length = bArr.length;
        while (length != 0) {
            if (length < 8) {
                i = length;
            } else {
                i = 8;
            }
            long nextLong = nextLong();
            while (true) {
                int i2 = i - 1;
                if (i != 0) {
                    length--;
                    bArr[length] = (byte) nextLong;
                    nextLong >>= 8;
                    i = i2;
                }
            }
        }
    }

    @Override // java.util.Random
    public double nextDouble() {
        double nextLong = nextLong() >>> 11;
        Double.isNaN(nextLong);
        return nextLong * 1.1102230246251565E-16d;
    }

    @Override // java.util.Random
    public float nextFloat() {
        double nextLong = nextLong() >>> 40;
        Double.isNaN(nextLong);
        return (float) (nextLong * 5.9604644775390625E-8d);
    }

    @Override // java.util.Random
    public int nextInt() {
        return (int) nextLong();
    }

    @Override // java.util.Random
    public long nextLong() {
        long j = this.f5521a;
        long j2 = this.f5522b;
        this.f5521a = j2;
        long j3 = j ^ (j << 23);
        long j4 = ((j3 >>> 17) ^ (j3 ^ j2)) ^ (j2 >>> 26);
        this.f5522b = j4;
        return j4 + j2;
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        return (int) nextLong(i);
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (j == 0) {
            j = Long.MIN_VALUE;
        }
        long m23902a = m23902a(j);
        setState(m23902a, m23902a(m23902a));
    }

    public void setState(long j, long j2) {
        this.f5521a = j;
        this.f5522b = j2;
    }

    public RandomXS128(long j) {
        setSeed(j);
    }

    public RandomXS128(long j, long j2) {
        setState(j, j2);
    }

    public long nextLong(long j) {
        long nextLong;
        long j2;
        if (j > 0) {
            do {
                nextLong = nextLong() >>> 1;
                j2 = nextLong % j;
            } while ((nextLong - j2) + (j - 1) < 0);
            return j2;
        }
        throw new IllegalArgumentException("n must be positive");
    }
}
