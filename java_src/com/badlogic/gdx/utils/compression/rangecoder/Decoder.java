package com.badlogic.gdx.utils.compression.rangecoder;

import java.io.InputStream;
/* loaded from: classes.dex */
public class Decoder {

    /* renamed from: a */
    public int f6945a;

    /* renamed from: b */
    public int f6946b;

    /* renamed from: c */
    public InputStream f6947c;

    public static void InitBitModels(short[] sArr) {
        for (int i = 0; i < sArr.length; i++) {
            sArr[i] = 1024;
        }
    }

    public final int DecodeDirectBits(int i) {
        int i2 = 0;
        while (i != 0) {
            int i3 = this.f6945a >>> 1;
            this.f6945a = i3;
            int i4 = this.f6946b;
            int i5 = (i4 - i3) >>> 31;
            int i6 = i4 - ((i5 - 1) & i3);
            this.f6946b = i6;
            i2 = (i2 << 1) | (1 - i5);
            if ((i3 & (-16777216)) == 0) {
                this.f6946b = (i6 << 8) | this.f6947c.read();
                this.f6945a <<= 8;
            }
            i--;
        }
        return i2;
    }

    public final void Init() {
        this.f6946b = 0;
        this.f6945a = -1;
        for (int i = 0; i < 5; i++) {
            this.f6946b = (this.f6946b << 8) | this.f6947c.read();
        }
    }

    public final void ReleaseStream() {
        this.f6947c = null;
    }

    public final void SetStream(InputStream inputStream) {
        this.f6947c = inputStream;
    }

    public int DecodeBit(short[] sArr, int i) {
        short s = sArr[i];
        int i2 = this.f6945a;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.f6946b;
        if ((i4 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.f6945a = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            if ((i3 & (-16777216)) == 0) {
                this.f6946b = (i4 << 8) | this.f6947c.read();
                this.f6945a <<= 8;
                return 0;
            }
            return 0;
        }
        int i5 = i2 - i3;
        this.f6945a = i5;
        int i6 = i4 - i3;
        this.f6946b = i6;
        sArr[i] = (short) (s - (s >>> 5));
        if ((i5 & (-16777216)) == 0) {
            this.f6946b = (i6 << 8) | this.f6947c.read();
            this.f6945a <<= 8;
            return 1;
        }
        return 1;
    }
}
