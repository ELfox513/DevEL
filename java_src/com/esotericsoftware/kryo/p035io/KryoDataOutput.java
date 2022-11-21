package com.esotericsoftware.kryo.p035io;

import java.io.DataOutput;
/* renamed from: com.esotericsoftware.kryo.io.KryoDataOutput */
/* loaded from: classes.dex */
public class KryoDataOutput implements DataOutput, AutoCloseable {
    public Output output;

    @Override // java.lang.AutoCloseable
    public void close() {
        this.output.close();
    }

    public void setOutput(Output output) {
        this.output = output;
    }

    @Override // java.io.DataOutput
    public void write(int i) {
        this.output.write(i);
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z) {
        this.output.writeBoolean(z);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i) {
        this.output.writeByte(i);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i) {
        this.output.writeChar((char) i);
    }

    @Override // java.io.DataOutput
    public void writeDouble(double d) {
        this.output.writeDouble(d);
    }

    @Override // java.io.DataOutput
    public void writeFloat(float f) {
        this.output.writeFloat(f);
    }

    @Override // java.io.DataOutput
    public void writeInt(int i) {
        this.output.writeInt(i);
    }

    @Override // java.io.DataOutput
    public void writeLong(long j) {
        this.output.writeLong(j);
    }

    @Override // java.io.DataOutput
    public void writeShort(int i) {
        this.output.writeShort(i);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String str) {
        this.output.writeString(str);
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr) {
        this.output.write(bArr);
    }

    public KryoDataOutput(Output output) {
        this.output = output;
    }

    @Override // java.io.DataOutput
    public void write(byte[] bArr, int i, int i2) {
        this.output.write(bArr, i, i2);
    }

    @Override // java.io.DataOutput
    public void writeBytes(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            this.output.write((byte) str.charAt(i));
        }
    }

    @Override // java.io.DataOutput
    public void writeChars(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            this.output.write(charAt & 255);
            this.output.write((charAt >>> '\b') & 255);
        }
    }
}
