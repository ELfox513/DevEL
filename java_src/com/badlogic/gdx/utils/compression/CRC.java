package com.badlogic.gdx.utils.compression;
/* loaded from: classes.dex */
public class CRC {
    public static int[] Table = new int[256];

    /* renamed from: a */
    public int f6811a = -1;

    public int GetDigest() {
        return this.f6811a ^ (-1);
    }

    public void Init() {
        this.f6811a = -1;
    }

    public void Update(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int[] iArr = Table;
            int i4 = this.f6811a;
            this.f6811a = iArr[(bArr[i + i3] ^ i4) & 255] ^ (i4 >>> 8);
        }
    }

    public void UpdateByte(int i) {
        int[] iArr = Table;
        int i2 = this.f6811a;
        this.f6811a = iArr[(i ^ i2) & 255] ^ (i2 >>> 8);
    }

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                if ((i2 & 1) != 0) {
                    i2 = (i2 >>> 1) ^ (-306674912);
                } else {
                    i2 >>>= 1;
                }
            }
            Table[i] = i2;
        }
    }

    public void Update(byte[] bArr) {
        for (byte b : bArr) {
            int[] iArr = Table;
            int i = this.f6811a;
            this.f6811a = iArr[(b ^ i) & 255] ^ (i >>> 8);
        }
    }
}
