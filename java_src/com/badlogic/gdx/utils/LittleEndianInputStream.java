package com.badlogic.gdx.utils;

import java.io.DataInputStream;
import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public class LittleEndianInputStream extends FilterInputStream implements java.io.DataInput {

    /* renamed from: a */
    public DataInputStream f6578a;

    @Override // java.io.DataInput
    public boolean readBoolean() {
        return this.f6578a.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() {
        return this.f6578a.readByte();
    }

    @Override // java.io.DataInput
    public char readChar() {
        return this.f6578a.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) {
        this.f6578a.readFully(bArr);
    }

    @Override // java.io.DataInput
    public int readInt() {
        int[] iArr = new int[4];
        for (int i = 3; i >= 0; i--) {
            iArr[i] = this.f6578a.read();
        }
        return (iArr[3] & 255) | ((iArr[0] & 255) << 24) | ((iArr[1] & 255) << 16) | ((iArr[2] & 255) << 8);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        return this.f6578a.readLine();
    }

    @Override // java.io.DataInput
    public long readLong() {
        int[] iArr = new int[8];
        for (int i = 7; i >= 0; i--) {
            iArr[i] = this.f6578a.read();
        }
        return (iArr[7] & 255) | ((iArr[0] & 255) << 56) | ((iArr[1] & 255) << 48) | ((iArr[2] & 255) << 40) | ((iArr[3] & 255) << 32) | ((iArr[4] & 255) << 24) | ((iArr[5] & 255) << 16) | ((iArr[6] & 255) << 8);
    }

    @Override // java.io.DataInput
    public String readUTF() {
        return this.f6578a.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() {
        return this.f6578a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return this.f6578a.skipBytes(i);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) {
        this.f6578a.readFully(bArr, i, i2);
    }

    @Override // java.io.DataInput
    public short readShort() {
        return (short) ((this.f6578a.read() & 255) | (this.f6578a.read() << 8));
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() {
        return (this.f6578a.read() & 255) | ((this.f6578a.read() & 255) << 8);
    }

    public LittleEndianInputStream(InputStream inputStream) {
        super(inputStream);
        this.f6578a = new DataInputStream(inputStream);
    }
}
