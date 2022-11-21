package p168r4;

import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* renamed from: r4.hg */
/* loaded from: classes2.dex */
public final class C5836hg implements InterfaceC6131pf {

    /* renamed from: Z */
    public static final InterfaceC6205rf f24569Z = new C5687dg();

    /* renamed from: a0 */
    public static final byte[] f24570a0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: b0 */
    public static final byte[] f24571b0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: c0 */
    public static final UUID f24572c0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    public C6469yk f24573A;

    /* renamed from: B */
    public C6469yk f24574B;

    /* renamed from: C */
    public boolean f24575C;

    /* renamed from: D */
    public int f24576D;

    /* renamed from: E */
    public long f24577E;

    /* renamed from: F */
    public long f24578F;

    /* renamed from: G */
    public int f24579G;

    /* renamed from: H */
    public int f24580H;

    /* renamed from: I */
    public int[] f24581I;

    /* renamed from: J */
    public int f24582J;

    /* renamed from: K */
    public int f24583K;

    /* renamed from: L */
    public int f24584L;

    /* renamed from: M */
    public int f24585M;

    /* renamed from: N */
    public boolean f24586N;

    /* renamed from: O */
    public boolean f24587O;

    /* renamed from: P */
    public boolean f24588P;

    /* renamed from: Q */
    public boolean f24589Q;

    /* renamed from: R */
    public byte f24590R;

    /* renamed from: S */
    public int f24591S;

    /* renamed from: T */
    public int f24592T;

    /* renamed from: U */
    public int f24593U;

    /* renamed from: V */
    public boolean f24594V;

    /* renamed from: W */
    public boolean f24595W;

    /* renamed from: X */
    public InterfaceC6168qf f24596X;

    /* renamed from: Y */
    public final C5650cg f24597Y;

    /* renamed from: a */
    public final C5909jg f24598a;

    /* renamed from: b */
    public final SparseArray<C5799gg> f24599b;

    /* renamed from: c */
    public final boolean f24600c;

    /* renamed from: d */
    public final C5692dl f24601d;

    /* renamed from: e */
    public final C5692dl f24602e;

    /* renamed from: f */
    public final C5692dl f24603f;

    /* renamed from: g */
    public final C5692dl f24604g;

    /* renamed from: h */
    public final C5692dl f24605h;

    /* renamed from: i */
    public final C5692dl f24606i;

    /* renamed from: j */
    public final C5692dl f24607j;

    /* renamed from: k */
    public final C5692dl f24608k;

    /* renamed from: l */
    public final C5692dl f24609l;

    /* renamed from: m */
    public ByteBuffer f24610m;

    /* renamed from: n */
    public long f24611n;

    /* renamed from: o */
    public long f24612o;

    /* renamed from: p */
    public long f24613p;

    /* renamed from: q */
    public long f24614q;

    /* renamed from: r */
    public long f24615r;

    /* renamed from: s */
    public C5799gg f24616s;

    /* renamed from: t */
    public boolean f24617t;

    /* renamed from: u */
    public int f24618u;

    /* renamed from: v */
    public long f24619v;

    /* renamed from: w */
    public boolean f24620w;

    /* renamed from: x */
    public long f24621x;

    /* renamed from: y */
    public long f24622y;

    /* renamed from: z */
    public long f24623z;

    /* renamed from: h */
    public static final int m10924h(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: i */
    public static final boolean m10923i(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* renamed from: q */
    public static int[] m10919q(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    /* renamed from: k */
    public final void m10921k() {
        this.f24585M = 0;
        this.f24593U = 0;
        this.f24592T = 0;
        this.f24586N = false;
        this.f24587O = false;
        this.f24589Q = false;
        this.f24591S = 0;
        this.f24590R = (byte) 0;
        this.f24588P = false;
        this.f24606i.m12120c();
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: m */
    public final int mo4727m(C6094of c6094of, C6316uf c6316uf) {
        this.f24594V = false;
        while (!this.f24594V) {
            if (!this.f24597Y.m12472c(c6094of)) {
                return -1;
            }
            long m8811h = c6094of.m8811h();
            if (this.f24620w) {
                this.f24622y = m8811h;
                c6316uf.f32262a = this.f24621x;
                this.f24620w = false;
                return 1;
            } else if (this.f24617t) {
                long j = this.f24622y;
                if (j != -1) {
                    c6316uf.f32262a = j;
                    this.f24622y = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: n */
    public final boolean mo4726n(C6094of c6094of) {
        return new C5873ig().m10664a(c6094of);
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: o */
    public final void mo4725o(InterfaceC6168qf interfaceC6168qf) {
        this.f24596X = interfaceC6168qf;
    }

    public C5836hg(int i) {
        C5650cg c5650cg = new C5650cg();
        this.f24612o = -1L;
        this.f24613p = -9223372036854775807L;
        this.f24614q = -9223372036854775807L;
        this.f24615r = -9223372036854775807L;
        this.f24621x = -1L;
        this.f24622y = -1L;
        this.f24623z = -9223372036854775807L;
        this.f24597Y = c5650cg;
        c5650cg.m12473b(new C5725eg(this, null));
        this.f24600c = true;
        this.f24598a = new C5909jg();
        this.f24599b = new SparseArray<>();
        this.f24603f = new C5692dl(4);
        this.f24604g = new C5692dl(ByteBuffer.allocate(4).putInt(-1).array());
        this.f24605h = new C5692dl(4);
        this.f24601d = new C5692dl(C5619bl.f21092a);
        this.f24602e = new C5692dl(4);
        this.f24606i = new C5692dl();
        this.f24607j = new C5692dl();
        this.f24608k = new C5692dl(8);
        this.f24609l = new C5692dl();
    }

    /* renamed from: b */
    public final void m10930b(int i, long j, long j2) {
        if (i != 160) {
            if (i != 174) {
                if (i != 187) {
                    if (i != 19899) {
                        if (i != 20533) {
                            if (i != 21968) {
                                if (i != 408125543) {
                                    if (i != 475249515) {
                                        if (i == 524531317 && !this.f24617t) {
                                            if (this.f24600c && this.f24621x != -1) {
                                                this.f24620w = true;
                                                return;
                                            }
                                            this.f24596X.mo7834b(new C6353vf(this.f24615r));
                                            this.f24617t = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.f24573A = new C6469yk(32);
                                    this.f24574B = new C6469yk(32);
                                    return;
                                }
                                long j3 = this.f24612o;
                                if (j3 != -1 && j3 != j) {
                                    throw new C5980ld("Multiple Segment elements not supported");
                                }
                                this.f24612o = j;
                                this.f24611n = j2;
                                return;
                            }
                            this.f24616s.f24064q = true;
                            return;
                        }
                        this.f24616s.f24052e = true;
                        return;
                    }
                    this.f24618u = -1;
                    this.f24619v = -1L;
                    return;
                }
                this.f24575C = false;
                return;
            }
            this.f24616s = new C5799gg(null);
            return;
        }
        this.f24595W = false;
    }

    /* renamed from: c */
    public final void m10929c(int i) {
        InterfaceC6390wf c6353vf;
        C6469yk c6469yk;
        C6469yk c6469yk2;
        int i2;
        int i3 = 0;
        if (i != 160) {
            if (i != 174) {
                if (i != 19899) {
                    if (i != 25152) {
                        if (i != 28032) {
                            if (i != 357149030) {
                                if (i != 374648427) {
                                    if (i == 475249515 && !this.f24617t) {
                                        InterfaceC6168qf interfaceC6168qf = this.f24596X;
                                        if (this.f24612o != -1 && this.f24615r != -9223372036854775807L && (c6469yk = this.f24573A) != null && c6469yk.m4658c() != 0 && (c6469yk2 = this.f24574B) != null && c6469yk2.m4658c() == this.f24573A.m4658c()) {
                                            int m4658c = this.f24573A.m4658c();
                                            int[] iArr = new int[m4658c];
                                            long[] jArr = new long[m4658c];
                                            long[] jArr2 = new long[m4658c];
                                            long[] jArr3 = new long[m4658c];
                                            for (int i4 = 0; i4 < m4658c; i4++) {
                                                jArr3[i4] = this.f24573A.m4659b(i4);
                                                jArr[i4] = this.f24612o + this.f24574B.m4659b(i4);
                                            }
                                            while (true) {
                                                i2 = m4658c - 1;
                                                if (i3 >= i2) {
                                                    break;
                                                }
                                                int i5 = i3 + 1;
                                                iArr[i3] = (int) (jArr[i5] - jArr[i3]);
                                                jArr2[i3] = jArr3[i5] - jArr3[i3];
                                                i3 = i5;
                                            }
                                            iArr[i2] = (int) ((this.f24612o + this.f24611n) - jArr[i2]);
                                            jArr2[i2] = this.f24615r - jArr3[i2];
                                            this.f24573A = null;
                                            this.f24574B = null;
                                            c6353vf = new C6057nf(iArr, jArr, jArr2, jArr3);
                                        } else {
                                            this.f24573A = null;
                                            this.f24574B = null;
                                            c6353vf = new C6353vf(this.f24615r);
                                        }
                                        interfaceC6168qf.mo7834b(c6353vf);
                                        this.f24617t = true;
                                        return;
                                    }
                                    return;
                                } else if (this.f24599b.size() != 0) {
                                    this.f24596X.mo7830j();
                                    return;
                                } else {
                                    throw new C5980ld("No valid tracks were found");
                                }
                            }
                            if (this.f24613p == -9223372036854775807L) {
                                this.f24613p = 1000000L;
                            }
                            long j = this.f24614q;
                            if (j != -9223372036854775807L) {
                                this.f24615r = m10920p(j);
                                return;
                            }
                            return;
                        }
                        C5799gg c5799gg = this.f24616s;
                        if (c5799gg.f24052e && c5799gg.f24053f != null) {
                            throw new C5980ld("Combining encryption and compression is not supported");
                        }
                        return;
                    }
                    C5799gg c5799gg2 = this.f24616s;
                    if (c5799gg2.f24052e) {
                        if (c5799gg2.f24054g != null) {
                            c5799gg2.f24056i = new C5982lf(new C5945kf(C6239sc.f31303b, "video/webm", this.f24616s.f24054g.f33580b, false));
                            return;
                        }
                        throw new C5980ld("Encrypted Track found but ContentEncKeyID was not found");
                    }
                    return;
                }
                int i6 = this.f24618u;
                if (i6 != -1) {
                    long j2 = this.f24619v;
                    if (j2 != -1) {
                        if (i6 == 475249515) {
                            this.f24621x = j2;
                            return;
                        }
                        return;
                    }
                }
                throw new C5980ld("Mandatory element SeekID or SeekPosition not found");
            }
            String str = this.f24616s.f24048a;
            if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                C5799gg c5799gg3 = this.f24616s;
                c5799gg3.m11173b(this.f24596X, c5799gg3.f24049b);
                SparseArray<C5799gg> sparseArray = this.f24599b;
                C5799gg c5799gg4 = this.f24616s;
                sparseArray.put(c5799gg4.f24049b, c5799gg4);
            }
            this.f24616s = null;
        } else if (this.f24576D == 2) {
            if (!this.f24595W) {
                this.f24584L |= 1;
            }
            m10922j(this.f24599b.get(this.f24582J), this.f24577E);
            this.f24576D = 0;
        }
    }

    /* renamed from: d */
    public final void m10928d(int i, long j) {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                switch (i) {
                    case 131:
                        this.f24616s.f24050c = (int) j;
                        return;
                    case 136:
                        C5799gg c5799gg = this.f24616s;
                        if (j == 1) {
                            z = true;
                        }
                        c5799gg.f24043L = z;
                        return;
                    case 155:
                        this.f24578F = m10920p(j);
                        return;
                    case 159:
                        this.f24616s.f24038G = (int) j;
                        return;
                    case 176:
                        this.f24616s.f24057j = (int) j;
                        return;
                    case 179:
                        this.f24573A.m4660a(m10920p(j));
                        return;
                    case 186:
                        this.f24616s.f24058k = (int) j;
                        return;
                    case 215:
                        this.f24616s.f24049b = (int) j;
                        return;
                    case 231:
                        this.f24623z = m10920p(j);
                        return;
                    case 241:
                        if (!this.f24575C) {
                            this.f24574B.m4660a(j);
                            this.f24575C = true;
                            return;
                        }
                        return;
                    case 251:
                        this.f24595W = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new C5980ld(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new C5980ld(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new C5980ld(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new C5980ld(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new C5980ld(sb5.toString());
                        }
                        return;
                    case 21420:
                        this.f24619v = j + this.f24612o;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 != 0) {
                            if (i2 != 1) {
                                if (i2 != 3) {
                                    if (i2 == 15) {
                                        this.f24616s.f24063p = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f24616s.f24063p = 1;
                                return;
                            }
                            this.f24616s.f24063p = 2;
                            return;
                        }
                        this.f24616s.f24063p = 0;
                        return;
                    case 21680:
                        this.f24616s.f24059l = (int) j;
                        return;
                    case 21682:
                        this.f24616s.f24061n = (int) j;
                        return;
                    case 21690:
                        this.f24616s.f24060m = (int) j;
                        return;
                    case 21930:
                        C5799gg c5799gg2 = this.f24616s;
                        if (j == 1) {
                            z = true;
                        }
                        c5799gg2.f24044M = z;
                        return;
                    case 22186:
                        this.f24616s.f24041J = j;
                        return;
                    case 22203:
                        this.f24616s.f24042K = j;
                        return;
                    case 25188:
                        this.f24616s.f24039H = (int) j;
                        return;
                    case 2352003:
                        this.f24616s.f24051d = (int) j;
                        return;
                    case 2807729:
                        this.f24613p = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i3 = (int) j;
                                if (i3 != 1) {
                                    if (i3 == 2) {
                                        this.f24616s.f24067t = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.f24616s.f24067t = 2;
                                return;
                            case 21946:
                                int i4 = (int) j;
                                if (i4 != 1) {
                                    if (i4 != 16) {
                                        if (i4 != 18) {
                                            if (i4 != 6 && i4 != 7) {
                                                return;
                                            }
                                        } else {
                                            this.f24616s.f24066s = 7;
                                            return;
                                        }
                                    } else {
                                        this.f24616s.f24066s = 6;
                                        return;
                                    }
                                }
                                this.f24616s.f24066s = 3;
                                return;
                            case 21947:
                                C5799gg c5799gg3 = this.f24616s;
                                c5799gg3.f24064q = true;
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 != 9) {
                                        if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                            c5799gg3.f24065r = 2;
                                            return;
                                        }
                                        return;
                                    }
                                    c5799gg3.f24065r = 6;
                                    return;
                                }
                                c5799gg3.f24065r = 1;
                                return;
                            case 21948:
                                this.f24616s.f24068u = (int) j;
                                return;
                            case 21949:
                                this.f24616s.f24069v = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                StringBuilder sb6 = new StringBuilder(55);
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new C5980ld(sb6.toString());
            }
        } else if (j == 0) {
        } else {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new C5980ld(sb7.toString());
        }
    }

    /* renamed from: e */
    public final void m10927e(int i, double d) {
        if (i != 181) {
            if (i != 17545) {
                switch (i) {
                    case 21969:
                        this.f24616s.f24070w = (float) d;
                        return;
                    case 21970:
                        this.f24616s.f24071x = (float) d;
                        return;
                    case 21971:
                        this.f24616s.f24072y = (float) d;
                        return;
                    case 21972:
                        this.f24616s.f24073z = (float) d;
                        return;
                    case 21973:
                        this.f24616s.f24032A = (float) d;
                        return;
                    case 21974:
                        this.f24616s.f24033B = (float) d;
                        return;
                    case 21975:
                        this.f24616s.f24034C = (float) d;
                        return;
                    case 21976:
                        this.f24616s.f24035D = (float) d;
                        return;
                    case 21977:
                        this.f24616s.f24036E = (float) d;
                        return;
                    case 21978:
                        this.f24616s.f24037F = (float) d;
                        return;
                    default:
                        return;
                }
            }
            this.f24614q = (long) d;
            return;
        }
        this.f24616s.f24040I = (int) d;
    }

    /* renamed from: f */
    public final void m10926f(int i, String str) {
        if (i != 134) {
            if (i != 17026) {
                if (i == 2274716) {
                    C5799gg.m11174a(this.f24616s, str);
                    return;
                }
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                StringBuilder sb = new StringBuilder(str.length() + 22);
                sb.append("DocType ");
                sb.append(str);
                sb.append(" not supported");
                throw new C5980ld(sb.toString());
            } else {
                return;
            }
        }
        this.f24616s.f24048a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x01eb, code lost:
        throw new p168r4.C5980ld("EBML lacing sample size out of range.");
     */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023a  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10925g(int r19, int r20, p168r4.C6094of r21) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5836hg.m10925g(int, int, r4.of):void");
    }

    /* renamed from: j */
    public final void m10922j(C5799gg c5799gg, long j) {
        int i;
        byte[] m9650d;
        if ("S_TEXT/UTF8".equals(c5799gg.f24048a)) {
            byte[] bArr = this.f24607j.f22312a;
            long j2 = this.f24578F;
            if (j2 == -9223372036854775807L) {
                m9650d = f24571b0;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                m9650d = C5988ll.m9650d(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (i * 1000000)) / 1000))));
            }
            System.arraycopy(m9650d, 0, bArr, 19, 12);
            InterfaceC6464yf interfaceC6464yf = c5799gg.f24046O;
            C5692dl c5692dl = this.f24607j;
            interfaceC6464yf.mo4740c(c5692dl, c5692dl.m12118e());
            this.f24593U += this.f24607j.m12118e();
        }
        c5799gg.f24046O.mo4742a(j, this.f24584L, this.f24593U, 0, c5799gg.f24054g);
        this.f24594V = true;
        m10921k();
    }

    /* renamed from: p */
    public final long m10920p(long j) {
        long j2 = this.f24613p;
        if (j2 != -9223372036854775807L) {
            return C5988ll.m9644j(j, j2, 1000L);
        }
        throw new C5980ld("Can't scale timecode prior to timecodeScale being set.");
    }

    /* renamed from: r */
    public final void m10918r(C6094of c6094of, int i) {
        if (this.f24603f.m12118e() >= i) {
            return;
        }
        if (this.f24603f.m12115h() < i) {
            C5692dl c5692dl = this.f24603f;
            byte[] bArr = c5692dl.f22312a;
            int length = bArr.length;
            c5692dl.m12121b(Arrays.copyOf(bArr, Math.max(length + length, i)), this.f24603f.m12118e());
        }
        C5692dl c5692dl2 = this.f24603f;
        c6094of.m8817b(c5692dl2.f22312a, c5692dl2.m12118e(), i - this.f24603f.m12118e(), false);
        this.f24603f.m12117f(i);
    }

    /* renamed from: s */
    public final void m10917s(C6094of c6094of, C5799gg c5799gg, int i) {
        int i2;
        if ("S_TEXT/UTF8".equals(c5799gg.f24048a)) {
            int i3 = i + 32;
            if (this.f24607j.m12115h() < i3) {
                this.f24607j.f22312a = Arrays.copyOf(f24570a0, i3 + i);
            }
            c6094of.m8817b(this.f24607j.f22312a, 32, i, false);
            this.f24607j.m12114i(0);
            this.f24607j.m12117f(i3);
            return;
        }
        InterfaceC6464yf interfaceC6464yf = c5799gg.f24046O;
        if (!this.f24586N) {
            if (c5799gg.f24052e) {
                this.f24584L &= -1073741825;
                int i4 = 128;
                if (!this.f24587O) {
                    c6094of.m8817b(this.f24603f.f22312a, 0, 1, false);
                    this.f24585M++;
                    byte b = this.f24603f.f22312a[0];
                    if ((b & 128) != 128) {
                        this.f24590R = b;
                        this.f24587O = true;
                    } else {
                        throw new C5980ld("Extension bit is set in signal byte");
                    }
                }
                byte b2 = this.f24590R;
                if ((b2 & 1) == 1) {
                    int i5 = b2 & 2;
                    this.f24584L |= 1073741824;
                    if (!this.f24588P) {
                        c6094of.m8817b(this.f24608k.f22312a, 0, 8, false);
                        this.f24585M += 8;
                        this.f24588P = true;
                        C5692dl c5692dl = this.f24603f;
                        byte[] bArr = c5692dl.f22312a;
                        if (i5 != 2) {
                            i4 = 0;
                        }
                        bArr[0] = (byte) (i4 | 8);
                        c5692dl.m12114i(0);
                        interfaceC6464yf.mo4740c(this.f24603f, 1);
                        this.f24593U++;
                        this.f24608k.m12114i(0);
                        interfaceC6464yf.mo4740c(this.f24608k, 8);
                        this.f24593U += 8;
                    }
                    if (i5 == 2) {
                        if (!this.f24589Q) {
                            c6094of.m8817b(this.f24603f.f22312a, 0, 1, false);
                            this.f24585M++;
                            this.f24603f.m12114i(0);
                            this.f24591S = this.f24603f.m12111l();
                            this.f24589Q = true;
                        }
                        int i6 = this.f24591S * 4;
                        this.f24603f.m12122a(i6);
                        c6094of.m8817b(this.f24603f.f22312a, 0, i6, false);
                        this.f24585M += i6;
                        int i7 = (this.f24591S >> 1) + 1;
                        int i8 = (i7 * 6) + 2;
                        ByteBuffer byteBuffer = this.f24610m;
                        if (byteBuffer == null || byteBuffer.capacity() < i8) {
                            this.f24610m = ByteBuffer.allocate(i8);
                        }
                        this.f24610m.position(0);
                        this.f24610m.putShort((short) i7);
                        int i9 = 0;
                        int i10 = 0;
                        while (true) {
                            i2 = this.f24591S;
                            if (i9 >= i2) {
                                break;
                            }
                            int m12102u = this.f24603f.m12102u();
                            if (i9 % 2 == 0) {
                                this.f24610m.putShort((short) (m12102u - i10));
                            } else {
                                this.f24610m.putInt(m12102u - i10);
                            }
                            i9++;
                            i10 = m12102u;
                        }
                        int i11 = (i - this.f24585M) - i10;
                        if ((i2 & 1) == 1) {
                            this.f24610m.putInt(i11);
                        } else {
                            this.f24610m.putShort((short) i11);
                            this.f24610m.putInt(0);
                        }
                        this.f24609l.m12121b(this.f24610m.array(), i8);
                        interfaceC6464yf.mo4740c(this.f24609l, i8);
                        this.f24593U += i8;
                    }
                }
            } else {
                byte[] bArr2 = c5799gg.f24053f;
                if (bArr2 != null) {
                    this.f24606i.m12121b(bArr2, bArr2.length);
                }
            }
            this.f24586N = true;
        }
        int m12118e = i + this.f24606i.m12118e();
        if (!"V_MPEG4/ISO/AVC".equals(c5799gg.f24048a) && !"V_MPEGH/ISO/HEVC".equals(c5799gg.f24048a)) {
            while (true) {
                int i12 = this.f24585M;
                if (i12 >= m12118e) {
                    break;
                }
                m10916t(c6094of, interfaceC6464yf, m12118e - i12);
            }
        } else {
            byte[] bArr3 = this.f24602e.f22312a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i13 = c5799gg.f24047P;
            int i14 = 4 - i13;
            while (this.f24585M < m12118e) {
                int i15 = this.f24592T;
                if (i15 == 0) {
                    int min = Math.min(i13, this.f24606i.m12119d());
                    c6094of.m8817b(bArr3, i14 + min, i13 - min, false);
                    if (min > 0) {
                        this.f24606i.m12112k(bArr3, i14, min);
                    }
                    this.f24585M += i13;
                    this.f24602e.m12114i(0);
                    this.f24592T = this.f24602e.m12102u();
                    this.f24601d.m12114i(0);
                    interfaceC6464yf.mo4740c(this.f24601d, 4);
                    this.f24593U += 4;
                } else {
                    this.f24592T = i15 - m10916t(c6094of, interfaceC6464yf, i15);
                }
            }
        }
        if ("A_VORBIS".equals(c5799gg.f24048a)) {
            this.f24604g.m12114i(0);
            interfaceC6464yf.mo4740c(this.f24604g, 4);
            this.f24593U += 4;
        }
    }

    /* renamed from: t */
    public final int m10916t(C6094of c6094of, InterfaceC6464yf interfaceC6464yf, int i) {
        int mo4741b;
        int m12119d = this.f24606i.m12119d();
        if (m12119d > 0) {
            mo4741b = Math.min(i, m12119d);
            interfaceC6464yf.mo4740c(this.f24606i, mo4741b);
        } else {
            mo4741b = interfaceC6464yf.mo4741b(c6094of, i, false);
        }
        this.f24585M += mo4741b;
        this.f24593U += mo4741b;
        return mo4741b;
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: l */
    public final void mo4728l(long j, long j2) {
        this.f24623z = -9223372036854775807L;
        this.f24576D = 0;
        this.f24597Y.m12474a();
        this.f24598a.m10293a();
        m10921k();
    }
}
