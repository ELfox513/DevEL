package com.prineside.tdi2.ibxm;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import net.bytebuddy.jar.asm.Opcodes;
/* loaded from: classes2.dex */
public class Channel {
    public static final int LINEAR = 1;
    public static final int NEAREST = 0;
    public static final int SINC = 2;

    /* renamed from: e0 */
    public static int[] f9370e0 = {32768, 32946, 33125, GL30.GL_FRAMEBUFFER_UNDEFINED, 33486, 33667, 33850, 34034, 34219, 34405, 34591, 34779, 34968, 35158, 35349, 35541, 35734, 35928, 36123, 36319, 36516, 36715, 36914, 37114, 37316, 37518, 37722, 37927, 38133, 38340, 38548, 38757, 38968, 39180, 39392, 39606, 39821, 40037, 40255, 40473, 40693, 40914, 41136, 41360, 41584, 41810, 42037, 42265, 42495, 42726, 42958, 43191, 43425, 43661, 43898, 44137, 44376, 44617, 44859, 45103, 45348, 45594, 45842, 46091, 46341, 46593, 46846, 47100, 47356, 47613, 47871, 48131, 48393, 48655, 48920, 49185, 49452, 49721, 49991, 50262, 50535, 50810, 51085, 51363, 51642, 51922, 52204, 52488, 52773, 53059, 53347, 53637, 53928, 54221, 54515, 54811, 55109, 55408, 55709, 56012, 56316, 56622, 56929, 57238, 57549, 57861, 58176, 58491, 58809, 59128, 59449, 59772, 60097, 60423, 60751, 61081, 61413, 61746, 62081, 62419, 62757, 63098, 63441, 63785, 64132, 64480, 64830, 65182, 65536};

    /* renamed from: f0 */
    public static final short[] f9371f0 = {0, 24, 49, 74, 97, 120, 141, 161, 180, 197, 212, 224, 235, 244, 250, 253, 255, 253, 250, 244, 235, 224, 212, 197, 180, 161, 141, 120, 97, 74, 49, 24};

    /* renamed from: A */
    public int f9372A;

    /* renamed from: B */
    public int f9373B;

    /* renamed from: C */
    public int f9374C;

    /* renamed from: D */
    public int f9375D;

    /* renamed from: E */
    public int f9376E;

    /* renamed from: F */
    public int f9377F;

    /* renamed from: G */
    public int f9378G;

    /* renamed from: H */
    public int f9379H;

    /* renamed from: I */
    public int f9380I;

    /* renamed from: J */
    public int f9381J;

    /* renamed from: K */
    public int f9382K;

    /* renamed from: L */
    public int f9383L;

    /* renamed from: M */
    public int f9384M;

    /* renamed from: N */
    public int f9385N;

    /* renamed from: O */
    public int f9386O;

    /* renamed from: P */
    public int f9387P;

    /* renamed from: Q */
    public int f9388Q;

    /* renamed from: R */
    public int f9389R;

    /* renamed from: S */
    public int f9390S;

    /* renamed from: T */
    public int f9391T;

    /* renamed from: U */
    public int f9392U;

    /* renamed from: V */
    public int f9393V;

    /* renamed from: W */
    public int f9394W;

    /* renamed from: X */
    public int f9395X;

    /* renamed from: Y */
    public int f9396Y;

    /* renamed from: Z */
    public int f9397Z;

    /* renamed from: a */
    public final Module f9398a;

    /* renamed from: a0 */
    public int f9399a0;

    /* renamed from: b */
    public final GlobalVol f9400b;

    /* renamed from: b0 */
    public int f9401b0;

    /* renamed from: c */
    public Instrument f9402c;

    /* renamed from: c0 */
    public int f9403c0;

    /* renamed from: d */
    public Sample f9404d;

    /* renamed from: d0 */
    public int f9405d0;

    /* renamed from: e */
    public boolean f9406e;

    /* renamed from: f */
    public int f9407f;

    /* renamed from: g */
    public int f9408g;

    /* renamed from: h */
    public int f9409h;

    /* renamed from: i */
    public int f9410i;

    /* renamed from: j */
    public int f9411j;

    /* renamed from: k */
    public int f9412k;

    /* renamed from: l */
    public int f9413l;

    /* renamed from: m */
    public int f9414m;

    /* renamed from: n */
    public int f9415n;

    /* renamed from: o */
    public int f9416o;

    /* renamed from: p */
    public int f9417p;
    public int plRow;

    /* renamed from: q */
    public int f9418q;

    /* renamed from: r */
    public int f9419r;

    /* renamed from: s */
    public int f9420s;

    /* renamed from: t */
    public int f9421t;

    /* renamed from: u */
    public int f9422u;

    /* renamed from: v */
    public int f9423v;

    /* renamed from: w */
    public int f9424w;

    /* renamed from: x */
    public int f9425x;

    /* renamed from: y */
    public int f9426y;

    /* renamed from: z */
    public int f9427z;

    public static int log2(int i) {
        int i2 = Opcodes.ASM8;
        for (int i3 = Opcodes.ASM8; i3 > 0; i3 >>= 1) {
            int i4 = i2 - i3;
            if (exp2(i4) >= i) {
                i2 = i4;
            }
        }
        return i2;
    }

    /* renamed from: h */
    public final void m21761h() {
        this.f9397Z = (m21755n(this.f9394W, this.f9393V & 3) * this.f9396Y) >> 6;
    }

    /* renamed from: l */
    public final void m21757l(boolean z) {
        this.f9399a0 = (m21755n(this.f9390S, this.f9389R & 3) * this.f9392U) >> (z ? 7 : 5);
    }

    public void resample(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = this.f9416o;
        if (i5 <= 0) {
            return;
        }
        int i6 = this.f9417p;
        int i7 = ((255 - i6) * i5) >> 8;
        int i8 = (i5 * i6) >> 8;
        int i9 = (this.f9415n << 12) / (i3 >> 3);
        if (i4 != 0) {
            if (i4 != 2) {
                this.f9404d.resampleLinear(this.f9413l, this.f9414m, i9, i7, i8, iArr, i, i2);
                return;
            } else {
                this.f9404d.resampleSinc(this.f9413l, this.f9414m, i9, i7, i8, iArr, i, i2);
                return;
            }
        }
        this.f9404d.resampleNearest(this.f9413l, this.f9414m, i9, i7, i8, iArr, i, i2);
    }

    public void reset() {
        this.f9406e = false;
        this.f9401b0 = 0;
        this.f9399a0 = 0;
        this.f9397Z = 0;
        this.f9396Y = 0;
        this.f9395X = 0;
        this.f9394W = 0;
        this.f9393V = 0;
        this.f9392U = 0;
        this.f9391T = 0;
        this.f9390S = 0;
        this.f9389R = 0;
        this.f9388Q = 0;
        this.f9387P = 0;
        this.f9386O = 0;
        this.f9385N = 0;
        this.f9384M = 0;
        this.f9383L = 0;
        this.f9382K = 0;
        this.f9381J = 0;
        this.f9380I = 0;
        this.f9379H = 0;
        this.f9378G = 0;
        this.f9377F = 0;
        this.f9376E = 0;
        this.f9375D = 0;
        this.f9374C = 0;
        this.f9373B = 0;
        this.f9372A = 0;
        this.f9427z = 0;
        this.f9426y = 0;
        this.f9425x = 0;
        this.f9424w = 0;
        this.f9423v = 0;
        this.f9422u = 0;
        this.f9421t = 0;
        this.f9420s = 0;
        this.f9418q = 0;
        this.f9417p = 0;
        this.f9416o = 0;
        this.f9415n = 0;
        this.f9414m = 0;
        this.f9413l = 0;
        this.f9412k = 0;
        this.f9411j = 0;
        this.f9410i = 0;
        this.f9409h = 0;
        this.f9408g = 0;
        this.f9407f = 0;
        int[] iArr = this.f9398a.defaultPanning;
        int i = this.f9403c0;
        this.f9419r = iArr[i];
        this.f9404d = this.f9402c.samples[0];
        this.f9405d0 = (i + 1) * 11259375;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void tick() {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ibxm.Channel.tick():void");
    }

    public static int exp2(int i) {
        int i2 = (i & 32767) >> 8;
        int[] iArr = f9370e0;
        int i3 = iArr[i2];
        return (((((iArr[i2 + 1] - i3) * (i & 255)) >> 8) + i3) << 15) >> (15 - (i >> 15));
    }

    /* renamed from: a */
    public final void m21768a() {
        Instrument instrument = this.f9402c;
        int i = instrument.vibratoDepth & 127;
        if (i > 0) {
            int i2 = instrument.vibratoSweep & 127;
            int i3 = instrument.vibratoRate & 127;
            int i4 = instrument.vibratoType;
            int i5 = this.f9427z;
            if (i5 < i2) {
                i = (i * i5) / i2;
            }
            this.f9399a0 += (m21755n((i5 * i3) >> 2, i4 + 4) * i) >> 8;
            this.f9427z++;
        }
    }

    /* renamed from: b */
    public final void m21767b() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 64;
        if (this.f9406e) {
            i = 64;
        } else {
            i = 0;
        }
        Envelope envelope = this.f9402c.volumeEnvelope;
        if (envelope.enabled) {
            i = envelope.calculateAmpl(this.f9421t);
        }
        int i6 = this.f9418q + this.f9397Z;
        if (i6 <= 64) {
            i5 = i6;
        }
        if (i5 >= 0) {
            i4 = i5;
        }
        this.f9416o = (((((((i4 * this.f9398a.gain) * 32768) >> 13) * this.f9420s) >> 15) * this.f9400b.volume) * i) >> 12;
        Envelope envelope2 = this.f9402c.panningEnvelope;
        if (envelope2.enabled) {
            i2 = envelope2.calculateAmpl(this.f9422u);
        } else {
            i2 = 32;
        }
        int i7 = this.f9419r;
        if (i7 < 128) {
            i3 = i7;
        } else {
            i3 = 255 - i7;
        }
        this.f9417p = i7 + ((i3 * (i2 - 32)) >> 5);
    }

    /* renamed from: c */
    public final void m21766c() {
        int i = this.f9423v + this.f9399a0;
        Module module = this.f9398a;
        if (module.linearPeriods) {
            int i2 = i - (this.f9401b0 << 6);
            if (i2 < 28 || i2 > 7680) {
                i2 = GL20.GL_KEEP;
            }
            this.f9415n = ((module.c2Rate >> 4) * exp2(((4608 - i2) << 15) / GL20.GL_SRC_COLOR)) >> 11;
            return;
        }
        int i3 = 29021;
        if (i > 29021) {
            i = 29021;
        }
        int exp2 = (i << 15) / exp2((this.f9401b0 << 15) / 12);
        if (exp2 >= 28) {
            i3 = exp2;
        }
        this.f9415n = (this.f9398a.c2Rate * 1712) / i3;
    }

    /* renamed from: d */
    public final void m21765d(int i) {
        int i2 = this.f9423v;
        if (i2 > 0) {
            int i3 = i & 240;
            if (i3 != 224) {
                if (i3 != 240) {
                    if (this.f9426y > 0) {
                        this.f9423v = i2 + (i << 2);
                    }
                } else if (this.f9426y == 0) {
                    this.f9423v = i2 + ((i & 15) << 2);
                }
            } else if (this.f9426y == 0) {
                this.f9423v = i2 + (i & 15);
            }
            if (this.f9423v > 65535) {
                this.f9423v = MeshBuilder.MAX_INDEX;
            }
        }
    }

    /* renamed from: e */
    public final void m21764e(int i) {
        int i2 = i & 240;
        if (i2 != 224) {
            if (i2 != 240) {
                if (this.f9426y > 0) {
                    this.f9423v -= i << 2;
                }
            } else if (this.f9426y == 0) {
                this.f9423v -= (i & 15) << 2;
            }
        } else if (this.f9426y == 0) {
            this.f9423v -= i & 15;
        }
        if (this.f9423v < 0) {
            this.f9423v = 0;
        }
    }

    /* renamed from: f */
    public final void m21763f() {
        if (this.f9425x >= this.f9386O) {
            this.f9414m = 0;
            this.f9413l = 0;
            this.f9425x = 0;
            switch (this.f9385N) {
                case 1:
                    this.f9418q--;
                    break;
                case 2:
                    this.f9418q -= 2;
                    break;
                case 3:
                    this.f9418q -= 4;
                    break;
                case 4:
                    this.f9418q -= 8;
                    break;
                case 5:
                    this.f9418q -= 16;
                    break;
                case 6:
                    this.f9418q = (this.f9418q * 2) / 3;
                    break;
                case 7:
                    this.f9418q >>= 1;
                    break;
                case 9:
                    this.f9418q++;
                    break;
                case 10:
                    this.f9418q += 2;
                    break;
                case 11:
                    this.f9418q += 4;
                    break;
                case 12:
                    this.f9418q += 8;
                    break;
                case 13:
                    this.f9418q += 16;
                    break;
                case 14:
                    this.f9418q = (this.f9418q * 3) / 2;
                    break;
                case 15:
                    this.f9418q <<= 1;
                    break;
            }
            if (this.f9418q < 0) {
                this.f9418q = 0;
            }
            if (this.f9418q > 64) {
                this.f9418q = 64;
            }
        }
    }

    /* renamed from: g */
    public final void m21762g() {
        int i = this.f9423v;
        if (i > 0) {
            int i2 = this.f9424w;
            if (i < i2) {
                int i3 = i + (this.f9374C << 2);
                this.f9423v = i3;
                if (i3 > i2) {
                    this.f9423v = i2;
                    return;
                }
                return;
            }
            int i4 = i - (this.f9374C << 2);
            this.f9423v = i4;
            if (i4 < i2) {
                this.f9423v = i2;
            }
        }
    }

    /* renamed from: i */
    public final void m21760i() {
        int i = this.f9425x;
        int i2 = this.f9387P;
        if (i >= i2) {
            this.f9397Z = -64;
        }
        if (i >= i2 + this.f9388Q) {
            this.f9425x = 0;
            this.f9397Z = 0;
        }
    }

    /* renamed from: j */
    public final void m21759j() {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4 = this.f9408g;
        if (i4 > 0) {
            Module module = this.f9398a;
            if (i4 <= module.numInstruments) {
                Instrument instrument = module.instruments[i4];
                this.f9402c = instrument;
                Sample[] sampleArr = instrument.samples;
                int[] iArr = instrument.keyToSample;
                int i5 = this.f9407f;
                if (i5 >= 97) {
                    i5 = 0;
                }
                Sample sample = sampleArr[iArr[i5]];
                int i6 = sample.volume;
                if (i6 >= 64) {
                    i3 = 64;
                } else {
                    i3 = i6 & 63;
                }
                this.f9418q = i3;
                int i7 = sample.panning;
                if (i7 >= 0) {
                    this.f9419r = i7 & 255;
                }
                if (this.f9423v > 0 && sample.looped()) {
                    this.f9404d = sample;
                }
                this.f9422u = 0;
                this.f9421t = 0;
                this.f9412k = 0;
                this.f9420s = 32768;
                this.f9406e = true;
            }
        }
        int i8 = this.f9410i;
        if (i8 == 9 || i8 == 143) {
            int i9 = this.f9411j;
            if (i9 > 0) {
                this.f9375D = i9;
            }
            this.f9412k = this.f9375D << 8;
        }
        int i10 = this.f9409h;
        if (i10 >= 16 && i10 < 96) {
            if (i10 < 80) {
                i2 = i10 - 16;
            } else {
                i2 = 64;
            }
            this.f9418q = i2;
        }
        int i11 = i10 & 240;
        if (i11 != 128) {
            if (i11 != 144) {
                if (i11 != 160) {
                    if (i11 != 176) {
                        if (i11 != 192) {
                            if (i11 == 240 && (i10 & 15) > 0) {
                                this.f9374C = i10 & 15;
                            }
                        } else {
                            this.f9419r = (i10 & 15) * 17;
                        }
                    } else {
                        if ((i10 & 15) > 0) {
                            this.f9392U = i10 & 15;
                        }
                        m21757l(false);
                    }
                } else if ((i10 & 15) > 0) {
                    this.f9391T = i10 & 15;
                }
            } else {
                int i12 = this.f9418q + (i10 & 15);
                this.f9418q = i12;
                if (i12 > 64) {
                    this.f9418q = 64;
                }
            }
        } else {
            int i13 = this.f9418q - (i10 & 15);
            this.f9418q = i13;
            if (i13 < 0) {
                this.f9418q = 0;
            }
        }
        int i14 = this.f9407f;
        if (i14 > 0) {
            if (i14 > 96) {
                this.f9406e = false;
                return;
            }
            if ((this.f9409h & 240) != 240 && (i = this.f9410i) != 3 && i != 5 && i != 135 && i != 140) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                Instrument instrument2 = this.f9402c;
                this.f9404d = instrument2.samples[instrument2.keyToSample[i14]];
            }
            Sample sample2 = this.f9404d;
            int i15 = sample2.fineTune;
            int i16 = this.f9410i;
            if (i16 == 117 || i16 == 242) {
                i15 = ((this.f9411j & 15) << 4) - 128;
            }
            int i17 = i14 + sample2.relNote;
            if (i17 < 1) {
                i17 = 1;
            }
            if (i17 > 120) {
                i17 = 120;
            }
            int i18 = (i17 << 6) + (i15 >> 1);
            if (this.f9398a.linearPeriods) {
                this.f9424w = 7744 - i18;
            } else {
                this.f9424w = (exp2((i18 << 15) / (-768)) * 29021) >> 15;
            }
            if (!z) {
                this.f9423v = this.f9424w;
                this.f9413l = this.f9412k;
                this.f9414m = 0;
                if (this.f9389R < 4) {
                    this.f9390S = 0;
                }
                if (this.f9393V < 4) {
                    this.f9394W = 0;
                }
                this.f9427z = 0;
                this.f9425x = 0;
            }
        }
    }

    /* renamed from: k */
    public final void m21758k() {
        Instrument instrument = this.f9402c;
        Envelope envelope = instrument.volumeEnvelope;
        if (envelope.enabled) {
            boolean z = this.f9406e;
            if (!z) {
                int i = this.f9420s - instrument.volumeFadeOut;
                this.f9420s = i;
                if (i < 0) {
                    this.f9420s = 0;
                }
            }
            this.f9421t = envelope.nextTick(this.f9421t, z);
        }
        Envelope envelope2 = this.f9402c.panningEnvelope;
        if (envelope2.enabled) {
            this.f9422u = envelope2.nextTick(this.f9422u, this.f9406e);
        }
    }

    /* renamed from: m */
    public final void m21756m() {
        int i = this.f9380I;
        int i2 = i >> 4;
        int i3 = i & 15;
        if (i3 == 15 && i2 > 0) {
            if (this.f9426y == 0) {
                this.f9418q += i2;
            }
        } else if (i2 == 15 && i3 > 0) {
            if (this.f9426y == 0) {
                this.f9418q -= i3;
            }
        } else if (this.f9426y > 0 || this.f9398a.fastVolSlides) {
            this.f9418q += i2 - i3;
        }
        if (this.f9418q > 64) {
            this.f9418q = 64;
        }
        if (this.f9418q < 0) {
            this.f9418q = 0;
        }
    }

    /* renamed from: n */
    public final int m21755n(int i, int i2) {
        short s;
        switch (i2) {
            case 1:
            case 7:
                return 255 - (((i + 32) & 63) << 3);
            case 2:
            case 5:
                return (i & 32) <= 0 ? -255 : 255;
            case 3:
            case 8:
                int i3 = this.f9405d0;
                this.f9405d0 = ((i3 * 65) + 17) & 536870911;
                s = (i3 >> 20) - 255;
                break;
            case 4:
            default:
                short s2 = f9371f0[i & 31];
                s = s2;
                if ((i & 32) > 0) {
                    return -s2;
                }
                break;
            case 6:
                return (((i + 32) & 63) << 3) - 255;
        }
        return s;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void row(com.prineside.tdi2.ibxm.Note r8) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.ibxm.Channel.row(com.prineside.tdi2.ibxm.Note):void");
    }

    public void updateSampleIdx(int i, int i2) {
        int i3 = this.f9414m + (((this.f9415n << 12) / (i2 >> 3)) * i);
        this.f9414m = i3;
        this.f9413l = this.f9404d.normaliseSampleIdx(this.f9413l + (i3 >> 15));
        this.f9414m &= 32767;
    }

    public Channel(Module module, int i, GlobalVol globalVol) {
        this.f9398a = module;
        this.f9403c0 = i;
        this.f9400b = globalVol;
        this.f9419r = module.defaultPanning[i];
        Instrument instrument = new Instrument();
        this.f9402c = instrument;
        this.f9404d = instrument.samples[0];
        this.f9405d0 = (i + 1) * 11259375;
    }
}
