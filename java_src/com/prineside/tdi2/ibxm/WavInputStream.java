package com.prineside.tdi2.ibxm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class WavInputStream extends InputStream {
    public static final byte[] header = {82, 73, 70, 70, 0, 0, 0, 0, 87, 65, 86, 69, 102, 109, 116, 32, 16, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 16, 0, 100, 97, 116, 97, 0, 0, 0, 0};

    /* renamed from: a */
    public IBXM f9451a;

    /* renamed from: b */
    public int[] f9452b;

    /* renamed from: d */
    public byte[] f9453d;

    /* renamed from: k */
    public int f9454k;

    /* renamed from: p */
    public int f9455p;

    /* renamed from: q */
    public int f9456q;

    /* renamed from: r */
    public int f9457r;

    /* loaded from: classes2.dex */
    public enum Mode {
        FULL_SONG,
        INTRO_PART,
        LOOPING_PART;
        
        public static final Mode[] values = values();
    }

    public static int readInt32(byte[] bArr, int i) {
        return (bArr[i] & DefaultClassResolver.NAME) | (bArr[i + 3] << 24) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8);
    }

    public static void writeInt32(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 >> 16);
        bArr[i + 3] = (byte) (i2 >> 24);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f9455p - this.f9454k;
    }

    public int getRemain() {
        return this.f9456q;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f9456q > 0) {
            byte[] bArr = this.f9453d;
            int i = this.f9454k;
            int i2 = i + 1;
            this.f9454k = i2;
            byte b = bArr[i];
            if (i2 >= this.f9455p) {
                m21741c();
            }
            this.f9456q--;
            return b;
        }
        return -1;
    }

    /* renamed from: c */
    public final void m21741c() {
        int i;
        int audio = this.f9451a.getAudio(this.f9452b) * 2;
        int i2 = this.f9456q;
        int i3 = this.f9457r;
        if (i2 < i3) {
            int i4 = i2 / (i3 >> 10);
            i = ((i4 * i4) * i4) >> 20;
        } else {
            i = 1024;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < audio; i6++) {
            int i7 = (this.f9452b[i6] * i) >> 10;
            if (i7 > 32767) {
                i7 = 32767;
            }
            if (i7 < -32768) {
                i7 = -32768;
            }
            byte[] bArr = this.f9453d;
            int i8 = i5 + 1;
            bArr[i5] = (byte) i7;
            i5 = i8 + 1;
            bArr[i8] = (byte) (i7 >> 8);
        }
        this.f9454k = 0;
        this.f9455p = audio * 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WavInputStream(com.prineside.tdi2.ibxm.IBXM r6, int r7, com.prineside.tdi2.ibxm.WavInputStream.Mode r8) {
        /*
            r5 = this;
            r5.<init>()
            com.prineside.tdi2.ibxm.Module r0 = r6.getModule()
            int r0 = r0.restartPos
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L37
            com.prineside.tdi2.ibxm.WavInputStream$Mode r0 = com.prineside.tdi2.ibxm.WavInputStream.Mode.INTRO_PART
            if (r8 != r0) goto L24
            com.prineside.tdi2.ibxm.Module r0 = r6.getModule()
            int r0 = r0.restartPos
            if (r0 == 0) goto L24
            com.prineside.tdi2.ibxm.Module r8 = r6.getModule()
            int r8 = r8.restartPos
            int r8 = r8 + (-1)
            r0 = r8
            r8 = 0
            goto L39
        L24:
            com.prineside.tdi2.ibxm.WavInputStream$Mode r0 = com.prineside.tdi2.ibxm.WavInputStream.Mode.LOOPING_PART
            if (r8 != r0) goto L37
            com.prineside.tdi2.ibxm.Module r8 = r6.getModule()
            int r8 = r8.restartPos
            com.prineside.tdi2.ibxm.Module r0 = r6.getModule()
            int r0 = r0.sequenceLength
            int r0 = r0 + (-1)
            goto L39
        L37:
            r8 = -1
            r0 = -1
        L39:
            if (r8 == r1) goto L61
            com.prineside.tdi2.ibxm.Module r1 = new com.prineside.tdi2.ibxm.Module
            com.prineside.tdi2.ibxm.Module r3 = r6.getModule()
            r1.<init>(r3)
            int r0 = r0 - r8
            int r0 = r0 + 1
            r1.sequenceLength = r0
            int[] r3 = r1.sequence
            int[] r4 = new int[r0]
            r1.sequence = r4
            java.lang.System.arraycopy(r3, r8, r4, r2, r0)
            int r8 = r6.interpolation
            com.prineside.tdi2.ibxm.IBXM r0 = new com.prineside.tdi2.ibxm.IBXM
            int r6 = r6.getSampleRate()
            r0.<init>(r1, r6)
            r0.setInterpolation(r8)
            r6 = r0
        L61:
            int r8 = r6.calculateSongDuration()
            r5.f9451a = r6
            int r0 = r6.getMixBufferLength()
            int[] r0 = new int[r0]
            r5.f9452b = r0
            int r0 = r0.length
            int r0 = r0 * 2
            byte[] r0 = new byte[r0]
            r5.f9453d = r0
            r0 = 4
            int r8 = r8 * 4
            int r6 = r6.getSampleRate()
            byte[] r1 = com.prineside.tdi2.ibxm.WavInputStream.header
            byte[] r3 = r5.f9453d
            int r4 = r1.length
            java.lang.System.arraycopy(r1, r2, r3, r2, r4)
            byte[] r3 = r5.f9453d
            int r4 = r8 + 36
            writeInt32(r3, r0, r4)
            byte[] r3 = r5.f9453d
            r4 = 24
            writeInt32(r3, r4, r6)
            byte[] r3 = r5.f9453d
            r4 = 28
            int r6 = r6 * 4
            writeInt32(r3, r4, r6)
            byte[] r0 = r5.f9453d
            r3 = 40
            writeInt32(r0, r3, r8)
            r5.f9454k = r2
            int r0 = r1.length
            r5.f9455p = r0
            int r0 = r1.length
            int r0 = r0 + r8
            r5.f9456q = r0
            int r6 = r6 * r7
            r5.f9457r = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ibxm.WavInputStream.<init>(com.prineside.tdi2.ibxm.IBXM, int, com.prineside.tdi2.ibxm.WavInputStream$Mode):void");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3 = this.f9456q;
        if (i3 > 0) {
            if (i3 <= i2) {
                i2 = i3;
            }
            int i4 = this.f9455p;
            int i5 = this.f9454k;
            int i6 = i4 - i5;
            if (i2 > i6) {
                i2 = i6;
            }
            System.arraycopy(this.f9453d, i5, bArr, i, i2);
            int i7 = this.f9454k + i2;
            this.f9454k = i7;
            if (i7 >= this.f9455p) {
                m21741c();
            }
            this.f9456q -= i2;
            return i2;
        }
        return -1;
    }
}
