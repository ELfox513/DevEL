package com.badlogic.gdx.utils.compression.rangecoder;
/* loaded from: classes.dex */
public class BitTreeDecoder {

    /* renamed from: a */
    public short[] f6941a;

    /* renamed from: b */
    public int f6942b;

    public void Init() {
        Decoder.InitBitModels(this.f6941a);
    }

    public int ReverseDecode(Decoder decoder) {
        int i = 0;
        int i2 = 1;
        for (int i3 = 0; i3 < this.f6942b; i3++) {
            int DecodeBit = decoder.DecodeBit(this.f6941a, i2);
            i2 = (i2 << 1) + DecodeBit;
            i |= DecodeBit << i3;
        }
        return i;
    }

    public int Decode(Decoder decoder) {
        int i = 1;
        for (int i2 = this.f6942b; i2 != 0; i2--) {
            i = decoder.DecodeBit(this.f6941a, i) + (i << 1);
        }
        return i - (1 << this.f6942b);
    }

    public BitTreeDecoder(int i) {
        this.f6942b = i;
        this.f6941a = new short[1 << i];
    }

    public static int ReverseDecode(short[] sArr, int i, Decoder decoder, int i2) {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            int DecodeBit = decoder.DecodeBit(sArr, i + i4);
            i4 = (i4 << 1) + DecodeBit;
            i3 |= DecodeBit << i5;
        }
        return i3;
    }
}
