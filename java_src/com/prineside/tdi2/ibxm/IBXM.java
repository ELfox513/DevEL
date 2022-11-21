package com.prineside.tdi2.ibxm;

import java.lang.reflect.Array;
import java.util.Arrays;
import net.bytebuddy.jar.asm.Opcodes;
/* loaded from: classes2.dex */
public class IBXM {
    public static final String VERSION = "a73 (c)2017 mumart@gmail.com";

    /* renamed from: a */
    public final Module f9431a;

    /* renamed from: c */
    public final boolean[] f9433c;
    public final Channel[] channels;

    /* renamed from: d */
    public final byte[][] f9434d;

    /* renamed from: e */
    public int f9435e;

    /* renamed from: f */
    public int f9436f;

    /* renamed from: g */
    public int f9437g;

    /* renamed from: h */
    public int f9438h;

    /* renamed from: i */
    public int f9439i;

    /* renamed from: j */
    public int f9440j;

    /* renamed from: k */
    public int f9441k;

    /* renamed from: l */
    public int f9442l;
    public int lastSeqPos;

    /* renamed from: m */
    public int f9443m;

    /* renamed from: n */
    public int f9444n;

    /* renamed from: b */
    public final int[] f9432b = new int[128];
    public int interpolation = 1;

    /* renamed from: o */
    public final GlobalVol f9445o = new GlobalVol();

    /* renamed from: p */
    public final Note f9446p = new Note();

    /* renamed from: a */
    public final int m21752a(int i, int i2) {
        return (i2 * 5) / (i * 2);
    }

    public int calculateSongDuration() {
        setSequencePos(0);
        boolean z = false;
        int i = 0;
        while (!z) {
            i += m21752a(this.f9442l, this.f9435e);
            z = m21749d();
        }
        setSequencePos(0);
        return i;
    }

    public GlobalVol getGlobalVol() {
        return this.f9445o;
    }

    public int getMixBufferLength() {
        return (m21752a(32, 128000) + 65) * 4;
    }

    public Module getModule() {
        return this.f9431a;
    }

    public int getRow() {
        return this.f9438h;
    }

    public int getSampleRate() {
        return this.f9435e;
    }

    public int getSequencePos() {
        return this.f9436f;
    }

    public int seek(int i) {
        setSequencePos(0);
        int m21752a = m21752a(this.f9442l, this.f9435e);
        int i2 = 0;
        while (i - i2 >= m21752a) {
            for (int i3 = 0; i3 < this.f9431a.numChannels; i3++) {
                this.channels[i3].updateSampleIdx(m21752a * 2, this.f9435e * 2);
            }
            i2 += m21752a;
            m21749d();
            m21752a = m21752a(this.f9442l, this.f9435e);
        }
        return i2;
    }

    public void seekSequencePos(int i, int i2) {
        setSequencePos(0);
        i = (i < 0 || i >= this.f9431a.sequenceLength) ? 0 : 0;
        Module module = this.f9431a;
        if (i2 >= module.patterns[module.sequence[i]].numRows) {
            i2 = 0;
        }
        do {
            if (this.f9436f >= i && this.f9438h >= i2) {
                return;
            }
            int m21752a = m21752a(this.f9442l, this.f9435e);
            for (int i3 = 0; i3 < this.f9431a.numChannels; i3++) {
                this.channels[i3].updateSampleIdx(m21752a * 2, this.f9435e * 2);
            }
        } while (!m21749d());
        setSequencePos(i);
    }

    public void setInterpolation(int i) {
        this.interpolation = i;
    }

    /* renamed from: b */
    public final void m21751b(int[] iArr, int i) {
        int i2 = i * 2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + 4;
            iArr[i3] = (iArr[i4] >> 2) + (iArr[i4 + 2] >> 1) + (iArr[i5] >> 2);
            iArr[i3 + 1] = (iArr[i4 + 1] >> 2) + (iArr[i4 + 3] >> 1) + (iArr[i4 + 5] >> 2);
            i3 += 2;
            i4 = i5;
        }
    }

    /* renamed from: c */
    public final void m21750c() {
        int i;
        if (this.f9439i < 0) {
            this.f9437g = this.f9436f + 1;
            this.f9439i = 0;
        }
        int i2 = this.f9437g;
        if (i2 >= 0) {
            if (i2 >= this.f9431a.sequenceLength) {
                this.f9439i = 0;
                this.f9437g = 0;
            }
            while (true) {
                Module module = this.f9431a;
                int[] iArr = module.sequence;
                i = this.f9437g;
                if (iArr[i] < module.numPatterns) {
                    break;
                }
                int i3 = i + 1;
                this.f9437g = i3;
                if (i3 >= module.sequenceLength) {
                    this.f9439i = 0;
                    this.f9437g = 0;
                }
            }
            this.f9436f = i;
            for (int i4 = 0; i4 < this.f9431a.numChannels; i4++) {
                this.channels[i4].plRow = 0;
            }
            this.f9437g = -1;
        }
        Module module2 = this.f9431a;
        Pattern[] patternArr = module2.patterns;
        int[] iArr2 = module2.sequence;
        int i5 = this.f9436f;
        Pattern pattern = patternArr[iArr2[i5]];
        int i6 = this.f9439i;
        this.f9438h = i6;
        int i7 = pattern.numRows;
        if (i6 >= i7) {
            this.f9438h = 0;
        }
        byte[] bArr = this.f9434d[i5];
        int i8 = this.f9438h;
        byte b = bArr[i8];
        if (this.f9443m < 0 && b < Byte.MAX_VALUE) {
            bArr[i8] = (byte) (b + 1);
        }
        int i9 = i8 + 1;
        this.f9439i = i9;
        if (i9 >= i7) {
            this.f9439i = -1;
        }
        int i10 = i8 * module2.numChannels;
        for (int i11 = 0; i11 < this.f9431a.numChannels; i11++) {
            Channel channel = this.channels[i11];
            pattern.getNote(i10 + i11, this.f9446p);
            Note note = this.f9446p;
            if (note.effect == 14) {
                int i12 = note.param;
                note.effect = (i12 >> 4) | 112;
                note.param = i12 & 15;
            }
            if (note.effect == 147) {
                int i13 = note.param;
                note.effect = (i13 >> 4) | 240;
                note.param = i13 & 15;
            }
            if (note.effect == 0 && note.param > 0) {
                note.effect = 138;
            }
            channel.row(note);
            Note note2 = this.f9446p;
            int i14 = note2.effect;
            if (i14 != 11) {
                if (i14 != 13) {
                    if (i14 != 15) {
                        if (i14 != 118) {
                            if (i14 != 126) {
                                if (i14 != 148) {
                                    if (i14 != 251) {
                                        if (i14 != 254) {
                                            switch (i14) {
                                                case 129:
                                                    int i15 = note2.param;
                                                    if (i15 > 0) {
                                                        this.f9441k = i15;
                                                        this.f9440j = i15;
                                                        break;
                                                    } else {
                                                        break;
                                                    }
                                            }
                                        }
                                    }
                                } else {
                                    int i16 = note2.param;
                                    if (i16 > 32) {
                                        this.f9442l = i16;
                                    }
                                }
                            }
                            int i17 = this.f9441k;
                            this.f9440j = i17 + (note2.param * i17);
                        }
                        int i18 = note2.param;
                        if (i18 == 0) {
                            channel.plRow = this.f9438h;
                        }
                        int i19 = channel.plRow;
                        int i20 = this.f9438h;
                        if (i19 < i20 && this.f9437g < 0) {
                            if (this.f9443m < 0) {
                                this.f9443m = i18;
                                this.f9444n = i11;
                            }
                            if (this.f9444n == i11) {
                                int i21 = this.f9443m;
                                if (i21 == 0) {
                                    channel.plRow = i20 + 1;
                                } else {
                                    this.f9439i = i19;
                                }
                                this.f9443m = i21 - 1;
                            }
                        }
                    } else {
                        int i22 = note2.param;
                        if (i22 > 0) {
                            if (i22 < 32) {
                                this.f9441k = i22;
                                this.f9440j = i22;
                            } else {
                                this.f9442l = i22;
                            }
                        }
                    }
                }
                if (this.f9443m < 0) {
                    if (this.f9437g < 0) {
                        this.f9437g = this.f9436f + 1;
                    }
                    int i23 = note2.param;
                    this.f9439i = ((i23 >> 4) * 10) + (i23 & 15);
                }
            }
            if (this.f9443m < 0) {
                this.f9437g = note2.param;
                this.f9439i = 0;
            }
        }
    }

    /* renamed from: d */
    public final boolean m21749d() {
        int i = this.f9440j - 1;
        this.f9440j = i;
        if (i <= 0) {
            this.f9440j = this.f9441k;
            m21750c();
        } else {
            for (int i2 = 0; i2 < this.f9431a.numChannels; i2++) {
                this.channels[i2].tick();
            }
        }
        if (this.f9434d[this.f9436f][this.f9438h] > 1) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public final void m21748e(int[] iArr, int i) {
        int i2 = Opcodes.ASM8 / this.f9435e;
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4 += i2) {
            int i5 = 256 - i4;
            int[] iArr2 = this.f9432b;
            iArr[i3] = ((iArr[i3] * i4) + (iArr2[i3] * i5)) >> 8;
            int i6 = i3 + 1;
            iArr[i6] = ((iArr[i6] * i4) + (iArr2[i6] * i5)) >> 8;
            i3 += 2;
        }
        System.arraycopy(iArr, i * 2, this.f9432b, 0, 128);
    }

    public int getAudio(int[] iArr) {
        int m21752a = m21752a(this.f9442l, this.f9435e);
        int i = m21752a + 65;
        int i2 = i * 4;
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = 0;
        }
        for (int i4 = 0; i4 < this.f9431a.numChannels; i4++) {
            Channel channel = this.channels[i4];
            if (!this.f9433c[i4]) {
                channel.resample(iArr, 0, i * 2, this.f9435e * 2, this.interpolation);
            }
            channel.updateSampleIdx(m21752a * 2, this.f9435e * 2);
        }
        m21751b(iArr, m21752a + 64);
        m21748e(iArr, m21752a);
        m21749d();
        return m21752a;
    }

    public void setMuted(int i, boolean z) {
        if (i < 0) {
            for (int i2 = 0; i2 < this.f9431a.numChannels; i2++) {
                this.f9433c[i2] = z;
            }
        } else if (i < this.f9431a.numChannels) {
            this.f9433c[i] = z;
        }
    }

    public void setSampleRate(int i) {
        if (i >= 8000 && i <= 128000) {
            this.f9435e = i;
            return;
        }
        throw new IllegalArgumentException("Unsupported sampling rate!");
    }

    public void setSequencePos(int i) {
        int i2;
        Module module = this.f9431a;
        if (i >= module.sequenceLength) {
            i = 0;
        }
        this.f9437g = i;
        this.f9439i = 0;
        this.f9440j = 1;
        this.f9445o.volume = module.defaultGVol;
        int i3 = module.defaultSpeed;
        if (i3 <= 0) {
            i3 = 6;
        }
        this.f9441k = i3;
        int i4 = module.defaultTempo;
        if (i4 <= 0) {
            i4 = 125;
        }
        this.f9442l = i4;
        this.f9444n = -1;
        this.f9443m = -1;
        int i5 = 0;
        while (true) {
            byte[][] bArr = this.f9434d;
            if (i5 >= bArr.length) {
                break;
            }
            Module module2 = this.f9431a;
            int i6 = module2.sequence[i5];
            if (i6 < module2.numPatterns) {
                i2 = module2.patterns[i6].numRows;
            } else {
                i2 = 0;
            }
            if (bArr[i5].length < i2) {
                bArr[i5] = new byte[i2];
            }
            Arrays.fill(bArr[i5], (byte) 0);
            i5++;
        }
        for (int i7 = 0; i7 < this.f9431a.numChannels; i7++) {
            this.channels[i7].reset();
        }
        for (int i8 = 0; i8 < 128; i8++) {
            this.f9432b[i8] = 0;
        }
        m21749d();
    }

    public IBXM(Module module, int i) {
        this.f9431a = module;
        setSampleRate(i);
        this.f9434d = (byte[][]) Array.newInstance(Byte.TYPE, module.sequenceLength, 0);
        int i2 = module.numChannels;
        this.channels = new Channel[i2];
        this.f9433c = new boolean[i2];
        for (int i3 = 0; i3 < module.numChannels; i3++) {
            this.channels[i3] = new Channel(module, i3, this.f9445o);
        }
        setSequencePos(0);
    }
}
