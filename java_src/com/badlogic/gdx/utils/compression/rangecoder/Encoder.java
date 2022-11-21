package com.badlogic.gdx.utils.compression.rangecoder;

import java.io.OutputStream;
/* loaded from: classes.dex */
public class Encoder {

    /* renamed from: g */
    public static int[] f6948g = new int[512];
    public static final int kNumBitPriceShiftBits = 6;

    /* renamed from: a */
    public OutputStream f6949a;

    /* renamed from: b */
    public long f6950b;

    /* renamed from: c */
    public int f6951c;

    /* renamed from: d */
    public int f6952d;

    /* renamed from: e */
    public int f6953e;

    /* renamed from: f */
    public long f6954f;

    public static int GetPrice(int i, int i2) {
        return f6948g[(((i - i2) ^ (-i2)) & 2047) >>> 2];
    }

    public static int GetPrice0(int i) {
        return f6948g[i >>> 2];
    }

    public static int GetPrice1(int i) {
        return f6948g[(2048 - i) >>> 2];
    }

    public static void InitBitModels(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }

    public void EncodeDirectBits(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            int i4 = this.f6951c >>> 1;
            this.f6951c = i4;
            if (((i >>> i3) & 1) == 1) {
                this.f6950b += i4;
            }
            if (((-16777216) & i4) == 0) {
                this.f6951c = i4 << 8;
                ShiftLow();
            }
        }
    }

    public void FlushData() {
        for (int i = 0; i < 5; i++) {
            ShiftLow();
        }
    }

    public void FlushStream() {
        this.f6949a.flush();
    }

    public long GetProcessedSizeAdd() {
        return this.f6952d + this.f6954f + 4;
    }

    public void ReleaseStream() {
        this.f6949a = null;
    }

    public void SetStream(OutputStream outputStream) {
        this.f6949a = outputStream;
    }

    static {
        for (int i = 8; i >= 0; i--) {
            int i2 = 9 - i;
            int i3 = i2 - 1;
            int i4 = 1 << i2;
            for (int i5 = 1 << i3; i5 < i4; i5++) {
                f6948g[i5] = (i << 6) + (((i4 - i5) << 6) >>> i3);
            }
        }
    }

    public void Encode(short[] sArr, int i, int i2) {
        short s = sArr[i];
        int i3 = this.f6951c;
        int i4 = (i3 >>> 11) * s;
        if (i2 == 0) {
            this.f6951c = i4;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
        } else {
            this.f6950b += i4 & 4294967295L;
            this.f6951c = i3 - i4;
            sArr[i] = (short) (s - (s >>> 5));
        }
        int i5 = this.f6951c;
        if (((-16777216) & i5) == 0) {
            this.f6951c = i5 << 8;
            ShiftLow();
        }
    }

    public void Init() {
        this.f6954f = 0L;
        this.f6950b = 0L;
        this.f6951c = -1;
        this.f6952d = 1;
        this.f6953e = 0;
    }

    public void ShiftLow() {
        int i;
        long j = this.f6950b;
        int i2 = (int) (j >>> 32);
        if (i2 != 0 || j < 4278190080L) {
            this.f6954f += this.f6952d;
            int i3 = this.f6953e;
            do {
                this.f6949a.write(i3 + i2);
                i3 = 255;
                i = this.f6952d - 1;
                this.f6952d = i;
            } while (i != 0);
            this.f6953e = ((int) this.f6950b) >>> 24;
        }
        this.f6952d++;
        this.f6950b = (this.f6950b & 16777215) << 8;
    }
}
