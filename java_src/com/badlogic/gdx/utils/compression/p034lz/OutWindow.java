package com.badlogic.gdx.utils.compression.p034lz;

import java.io.OutputStream;
/* renamed from: com.badlogic.gdx.utils.compression.lz.OutWindow */
/* loaded from: classes.dex */
public class OutWindow {

    /* renamed from: a */
    public byte[] f6835a;

    /* renamed from: b */
    public int f6836b;

    /* renamed from: c */
    public int f6837c = 0;

    /* renamed from: d */
    public int f6838d;

    /* renamed from: e */
    public OutputStream f6839e;

    public void CopyBlock(int i, int i2) {
        int i3 = (this.f6836b - i) - 1;
        if (i3 < 0) {
            i3 += this.f6837c;
        }
        while (i2 != 0) {
            int i4 = this.f6837c;
            if (i3 >= i4) {
                i3 = 0;
            }
            byte[] bArr = this.f6835a;
            int i5 = this.f6836b;
            int i6 = i5 + 1;
            this.f6836b = i6;
            int i7 = i3 + 1;
            bArr[i5] = bArr[i3];
            if (i6 >= i4) {
                Flush();
            }
            i2--;
            i3 = i7;
        }
    }

    public void Create(int i) {
        if (this.f6835a == null || this.f6837c != i) {
            this.f6835a = new byte[i];
        }
        this.f6837c = i;
        this.f6836b = 0;
        this.f6838d = 0;
    }

    public void Flush() {
        int i = this.f6836b;
        int i2 = this.f6838d;
        int i3 = i - i2;
        if (i3 == 0) {
            return;
        }
        this.f6839e.write(this.f6835a, i2, i3);
        if (this.f6836b >= this.f6837c) {
            this.f6836b = 0;
        }
        this.f6838d = this.f6836b;
    }

    public byte GetByte(int i) {
        int i2 = (this.f6836b - i) - 1;
        if (i2 < 0) {
            i2 += this.f6837c;
        }
        return this.f6835a[i2];
    }

    public void Init(boolean z) {
        if (!z) {
            this.f6838d = 0;
            this.f6836b = 0;
        }
    }

    public void PutByte(byte b) {
        byte[] bArr = this.f6835a;
        int i = this.f6836b;
        int i2 = i + 1;
        this.f6836b = i2;
        bArr[i] = b;
        if (i2 >= this.f6837c) {
            Flush();
        }
    }

    public void ReleaseStream() {
        Flush();
        this.f6839e = null;
    }

    public void SetStream(OutputStream outputStream) {
        ReleaseStream();
        this.f6839e = outputStream;
    }
}
