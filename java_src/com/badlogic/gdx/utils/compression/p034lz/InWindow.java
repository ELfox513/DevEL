package com.badlogic.gdx.utils.compression.p034lz;

import java.io.InputStream;
/* renamed from: com.badlogic.gdx.utils.compression.lz.InWindow */
/* loaded from: classes.dex */
public class InWindow {
    public int _blockSize;
    public byte[] _bufferBase;
    public int _bufferOffset;
    public int _pos;
    public int _streamPos;

    /* renamed from: a */
    public InputStream f6829a;

    /* renamed from: b */
    public int f6830b;

    /* renamed from: c */
    public boolean f6831c;

    /* renamed from: d */
    public int f6832d;

    /* renamed from: e */
    public int f6833e;

    /* renamed from: f */
    public int f6834f;

    public byte GetIndexByte(int i) {
        return this._bufferBase[this._bufferOffset + this._pos + i];
    }

    public int GetNumAvailableBytes() {
        return this._streamPos - this._pos;
    }

    public void Init() {
        this._bufferOffset = 0;
        this._pos = 0;
        this._streamPos = 0;
        this.f6831c = false;
        ReadBlock();
    }

    public void ReleaseStream() {
        this.f6829a = null;
    }

    public void SetStream(InputStream inputStream) {
        this.f6829a = inputStream;
    }

    /* renamed from: a */
    public void m23459a() {
        this._bufferBase = null;
    }

    public void Create(int i, int i2, int i3) {
        this.f6833e = i;
        this.f6834f = i2;
        int i4 = i + i2 + i3;
        if (this._bufferBase == null || this._blockSize != i4) {
            m23459a();
            this._blockSize = i4;
            this._bufferBase = new byte[i4];
        }
        this.f6832d = this._blockSize - i2;
    }

    public int GetMatchLen(int i, int i2, int i3) {
        if (this.f6831c) {
            int i4 = this._pos;
            int i5 = i4 + i + i3;
            int i6 = this._streamPos;
            if (i5 > i6) {
                i3 = i6 - (i4 + i);
            }
        }
        int i7 = i2 + 1;
        int i8 = this._bufferOffset + this._pos + i;
        int i9 = 0;
        while (i9 < i3) {
            byte[] bArr = this._bufferBase;
            int i10 = i8 + i9;
            if (bArr[i10] != bArr[i10 - i7]) {
                break;
            }
            i9++;
        }
        return i9;
    }

    public void MoveBlock() {
        int i = this._bufferOffset;
        int i2 = (this._pos + i) - this.f6833e;
        if (i2 > 0) {
            i2--;
        }
        int i3 = (i + this._streamPos) - i2;
        for (int i4 = 0; i4 < i3; i4++) {
            byte[] bArr = this._bufferBase;
            bArr[i4] = bArr[i2 + i4];
        }
        this._bufferOffset -= i2;
    }

    public void MovePos() {
        int i = this._pos + 1;
        this._pos = i;
        if (i > this.f6830b) {
            if (this._bufferOffset + i > this.f6832d) {
                MoveBlock();
            }
            ReadBlock();
        }
    }

    public void ReadBlock() {
        if (this.f6831c) {
            return;
        }
        while (true) {
            int i = this._bufferOffset;
            int i2 = (0 - i) + this._blockSize;
            int i3 = this._streamPos;
            int i4 = i2 - i3;
            if (i4 == 0) {
                return;
            }
            int read = this.f6829a.read(this._bufferBase, i + i3, i4);
            if (read == -1) {
                int i5 = this._streamPos;
                this.f6830b = i5;
                int i6 = this._bufferOffset;
                int i7 = i5 + i6;
                int i8 = this.f6832d;
                if (i7 > i8) {
                    this.f6830b = i8 - i6;
                }
                this.f6831c = true;
                return;
            }
            int i9 = this._streamPos + read;
            this._streamPos = i9;
            int i10 = this._pos;
            int i11 = this.f6834f;
            if (i9 >= i10 + i11) {
                this.f6830b = i9 - i11;
            }
        }
    }

    public void ReduceOffsets(int i) {
        this._bufferOffset += i;
        this.f6830b -= i;
        this._pos -= i;
        this._streamPos -= i;
    }
}
