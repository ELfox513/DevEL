package p168r4;

import android.util.Log;
import android.util.Pair;
import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.tiles.CoreTile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: r4.o24 */
/* loaded from: classes2.dex */
public final class o24 {

    /* renamed from: N */
    public byte[] f28790N;

    /* renamed from: T */
    public p24 f28796T;

    /* renamed from: U */
    public boolean f28797U;

    /* renamed from: X */
    public d14 f28800X;

    /* renamed from: Y */
    public int f28801Y;

    /* renamed from: a */
    public String f28802a;

    /* renamed from: b */
    public String f28803b;

    /* renamed from: c */
    public int f28804c;

    /* renamed from: d */
    public int f28805d;

    /* renamed from: e */
    public int f28806e;

    /* renamed from: f */
    public int f28807f;

    /* renamed from: g */
    public int f28808g;

    /* renamed from: h */
    public boolean f28809h;

    /* renamed from: i */
    public byte[] f28810i;

    /* renamed from: j */
    public c14 f28811j;

    /* renamed from: k */
    public byte[] f28812k;

    /* renamed from: l */
    public fz3 f28813l;

    /* renamed from: m */
    public int f28814m = -1;

    /* renamed from: n */
    public int f28815n = -1;

    /* renamed from: o */
    public int f28816o = -1;

    /* renamed from: p */
    public int f28817p = -1;

    /* renamed from: q */
    public int f28818q = 0;

    /* renamed from: r */
    public int f28819r = -1;

    /* renamed from: s */
    public float f28820s = 0.0f;

    /* renamed from: t */
    public float f28821t = 0.0f;

    /* renamed from: u */
    public float f28822u = 0.0f;

    /* renamed from: v */
    public byte[] f28823v = null;

    /* renamed from: w */
    public int f28824w = -1;

    /* renamed from: x */
    public boolean f28825x = false;

    /* renamed from: y */
    public int f28826y = -1;

    /* renamed from: z */
    public int f28827z = -1;

    /* renamed from: A */
    public int f28777A = -1;

    /* renamed from: B */
    public int f28778B = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: C */
    public int f28779C = HttpStatus.SC_OK;

    /* renamed from: D */
    public float f28780D = -1.0f;

    /* renamed from: E */
    public float f28781E = -1.0f;

    /* renamed from: F */
    public float f28782F = -1.0f;

    /* renamed from: G */
    public float f28783G = -1.0f;

    /* renamed from: H */
    public float f28784H = -1.0f;

    /* renamed from: I */
    public float f28785I = -1.0f;

    /* renamed from: J */
    public float f28786J = -1.0f;

    /* renamed from: K */
    public float f28787K = -1.0f;

    /* renamed from: L */
    public float f28788L = -1.0f;

    /* renamed from: M */
    public float f28789M = -1.0f;

    /* renamed from: O */
    public int f28791O = 1;

    /* renamed from: P */
    public int f28792P = -1;

    /* renamed from: Q */
    public int f28793Q = 8000;

    /* renamed from: R */
    public long f28794R = 0;

    /* renamed from: S */
    public long f28795S = 0;

    /* renamed from: V */
    public boolean f28798V = true;

    /* renamed from: W */
    public String f28799W = "eng";

    public o24() {
    }

    public /* synthetic */ o24(n24 n24Var) {
    }

    /* renamed from: i */
    public final byte[] m8911i(String str) {
        byte[] bArr = this.f28812k;
        if (bArr == null) {
            String valueOf = String.valueOf(str);
            throw C5973l6.m9787b(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }
        return bArr;
    }

    /* renamed from: f */
    public static Pair<String, List<byte[]>> m8914f(C6423xb c6423xb) {
        try {
            c6423xb.m5400s(16);
            long m5424C = c6423xb.m5424C();
            if (m5424C == 1482049860) {
                return new Pair<>("video/divx", null);
            }
            if (m5424C == 859189832) {
                return new Pair<>("video/3gpp", null);
            }
            if (m5424C == 826496599) {
                int m5404o = c6423xb.m5404o() + 20;
                byte[] m5402q = c6423xb.m5402q();
                while (true) {
                    int length = m5402q.length;
                    if (m5404o < length - 4) {
                        if (m5402q[m5404o] == 0 && m5402q[m5404o + 1] == 0 && m5402q[m5404o + 2] == 1 && m5402q[m5404o + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(m5402q, m5404o, length)));
                        }
                        m5404o++;
                    } else {
                        throw C5973l6.m9787b("Failed to find FourCC VC1 initialization data", null);
                    }
                }
            } else {
                Log.w("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw C5973l6.m9787b("Error parsing FourCC private data", null);
        }
    }

    /* renamed from: g */
    public static List<byte[]> m8913g(byte[] bArr) {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 1;
                int i4 = 0;
                while (true) {
                    i = bArr[i3] & 255;
                    if (i != 255) {
                        break;
                    }
                    i4 += 255;
                    i3++;
                }
                int i5 = i3 + 1;
                int i6 = i4 + i;
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5] & 255;
                    if (i2 != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + i2;
                if (bArr[i8] == 1) {
                    byte[] bArr2 = new byte[i6];
                    System.arraycopy(bArr, i8, bArr2, 0, i6);
                    int i10 = i8 + i6;
                    if (bArr[i10] == 3) {
                        int i11 = i10 + i9;
                        if (bArr[i11] == 5) {
                            int length = bArr.length - i11;
                            byte[] bArr3 = new byte[length];
                            System.arraycopy(bArr, i11, bArr3, 0, length);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw C5973l6.m9787b("Error parsing vorbis codec private", null);
                    }
                    throw C5973l6.m9787b("Error parsing vorbis codec private", null);
                }
                throw C5973l6.m9787b("Error parsing vorbis codec private", null);
            }
            throw C5973l6.m9787b("Error parsing vorbis codec private", null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw C5973l6.m9787b("Error parsing vorbis codec private", null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public final void m8916d(d04 d04Var, int i) {
        char c;
        List<byte[]> singletonList;
        List<byte[]> list;
        String str;
        int i2;
        String str2;
        int m9691o;
        byte[] bArr;
        int i3;
        int i4;
        float f;
        av3 av3Var;
        Map map;
        Map map2;
        byte[] bArr2;
        int i5;
        Map map3;
        xz3 m4945a;
        String str3 = this.f28803b;
        int i6 = 1;
        int i7 = 0;
        int i8 = 3;
        switch (str3.hashCode()) {
            case -2095576542:
                if (str3.equals("V_MPEG4/ISO/AP")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str3.equals("V_MPEG4/ISO/SP")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str3.equals("A_MS/ACM")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str3.equals("A_TRUEHD")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str3.equals("A_VORBIS")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str3.equals("A_MPEG/L2")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str3.equals("A_MPEG/L3")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str3.equals("V_MS/VFW/FOURCC")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str3.equals("S_DVBSUB")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str3.equals("V_MPEG4/ISO/ASP")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str3.equals("V_MPEG4/ISO/AVC")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str3.equals("S_VOBSUB")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str3.equals("A_DTS/LOSSLESS")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str3.equals("A_AAC")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str3.equals("A_AC3")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str3.equals("A_DTS")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 82318131:
                if (str3.equals("V_AV1")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str3.equals("V_VP8")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str3.equals("V_VP9")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str3.equals("S_HDMV/PGS")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str3.equals("V_THEORA")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str3.equals("A_DTS/EXPRESS")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 635596514:
                if (str3.equals("A_PCM/FLOAT/IEEE")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 725948237:
                if (str3.equals("A_PCM/INT/BIG")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str3.equals("A_PCM/INT/LIT")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 738597099:
                if (str3.equals("S_TEXT/ASS")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str3.equals("V_MPEGH/ISO/HEVC")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str3.equals("S_TEXT/UTF8")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str3.equals("V_MPEG2")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str3.equals("A_EAC3")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str3.equals("A_FLAC")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str3.equals("A_OPUS")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str4 = "audio/raw";
        switch (c) {
            case 0:
                str4 = "video/x-vnd.on2.vp8";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 1:
                str4 = "video/x-vnd.on2.vp9";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 2:
                str4 = "video/av01";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 3:
                str4 = "video/mpeg2";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 4:
            case 5:
            case 6:
                byte[] bArr3 = this.f28812k;
                if (bArr3 == null) {
                    singletonList = null;
                } else {
                    singletonList = Collections.singletonList(bArr3);
                }
                str4 = "video/mp4v-es";
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 7:
                kz3 m9821a = kz3.m9821a(new C6423xb(m8911i(str3)));
                list = m9821a.f26998a;
                this.f28801Y = m9821a.f26999b;
                str = m9821a.f27003f;
                str4 = "video/avc";
                i2 = -1;
                i8 = -1;
                List<byte[]> list2 = list;
                str2 = str;
                singletonList = list2;
                break;
            case '\b':
                q04 m8077a = q04.m8077a(new C6423xb(m8911i(str3)));
                list = m8077a.f29878a;
                this.f28801Y = m8077a.f29879b;
                str = m8077a.f29880c;
                str4 = "video/hevc";
                i2 = -1;
                i8 = -1;
                List<byte[]> list22 = list;
                str2 = str;
                singletonList = list22;
                break;
            case '\t':
                Pair<String, List<byte[]>> m8914f = m8914f(new C6423xb(m8911i(str3)));
                str4 = (String) m8914f.first;
                singletonList = (List) m8914f.second;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case '\n':
                str4 = "video/x-unknown";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 11:
                singletonList = m8913g(m8911i(str3));
                str4 = "audio/vorbis";
                str2 = null;
                i2 = 8192;
                i8 = -1;
                break;
            case '\f':
                singletonList = new ArrayList<>(3);
                singletonList.add(m8911i(this.f28803b));
                ByteBuffer allocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                singletonList.add(allocate.order(byteOrder).putLong(this.f28794R).array());
                singletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.f28795S).array());
                str4 = "audio/opus";
                str2 = null;
                i2 = 5760;
                i8 = -1;
                break;
            case '\r':
                singletonList = Collections.singletonList(m8911i(str3));
                az3 m12253a = cz3.m12253a(this.f28812k);
                this.f28793Q = m12253a.f20783a;
                this.f28791O = m12253a.f20784b;
                str2 = m12253a.f20785c;
                str4 = "audio/mp4a-latm";
                i2 = -1;
                i8 = -1;
                break;
            case 14:
                str4 = "audio/mpeg-L2";
                singletonList = null;
                str2 = null;
                i2 = 4096;
                i8 = -1;
                break;
            case 15:
                str4 = "audio/mpeg";
                singletonList = null;
                str2 = null;
                i2 = 4096;
                i8 = -1;
                break;
            case 16:
                str4 = "audio/ac3";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 17:
                str4 = "audio/eac3";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 18:
                this.f28796T = new p24();
                str4 = "audio/true-hd";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 19:
            case 20:
                str4 = "audio/vnd.dts";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 21:
                str4 = "audio/vnd.dts.hd";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 22:
                singletonList = Collections.singletonList(m8911i(str3));
                str4 = "audio/flac";
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 23:
                if (m8912h(new C6423xb(m8911i(str3)))) {
                    m9691o = C5979lc.m9691o(this.f28792P);
                    if (m9691o == 0) {
                        int i9 = this.f28792P;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i9);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    i8 = m9691o;
                    singletonList = null;
                    str2 = null;
                    i2 = -1;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                str4 = "audio/x-unknown";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 24:
                m9691o = C5979lc.m9691o(this.f28792P);
                if (m9691o == 0) {
                    int i10 = this.f28792P;
                    StringBuilder sb2 = new StringBuilder(89);
                    sb2.append("Unsupported little endian PCM bit depth: ");
                    sb2.append(i10);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str4 = "audio/x-unknown";
                    singletonList = null;
                    str2 = null;
                    i2 = -1;
                    i8 = -1;
                    break;
                }
                i8 = m9691o;
                singletonList = null;
                str2 = null;
                i2 = -1;
                break;
            case 25:
                int i11 = this.f28792P;
                if (i11 != 8) {
                    if (i11 == 16) {
                        singletonList = null;
                        str2 = null;
                        i2 = -1;
                        i8 = 268435456;
                        break;
                    } else {
                        StringBuilder sb3 = new StringBuilder(86);
                        sb3.append("Unsupported big endian PCM bit depth: ");
                        sb3.append(i11);
                        sb3.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb3.toString());
                        str4 = "audio/x-unknown";
                        singletonList = null;
                        str2 = null;
                        i2 = -1;
                        i8 = -1;
                        break;
                    }
                }
                singletonList = null;
                str2 = null;
                i2 = -1;
                break;
            case 26:
                int i12 = this.f28792P;
                if (i12 == 32) {
                    singletonList = null;
                    str2 = null;
                    i2 = -1;
                    i8 = 4;
                    break;
                } else {
                    StringBuilder sb4 = new StringBuilder(90);
                    sb4.append("Unsupported floating point PCM bit depth: ");
                    sb4.append(i12);
                    sb4.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb4.toString());
                    str4 = "audio/x-unknown";
                    singletonList = null;
                    str2 = null;
                    i2 = -1;
                    i8 = -1;
                    break;
                }
            case 27:
                str4 = "application/x-subrip";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 28:
                bArr = q24.f29900d0;
                singletonList = o33.m8898s(bArr, m8911i(this.f28803b));
                str4 = "text/x-ssa";
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 29:
                singletonList = o33.m8899r(m8911i(str3));
                str4 = "application/vobsub";
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 30:
                str4 = "application/pgs";
                singletonList = null;
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            case 31:
                byte[] bArr4 = new byte[4];
                System.arraycopy(m8911i(str3), 0, bArr4, 0, 4);
                singletonList = o33.m8899r(bArr4);
                str4 = "application/dvbsubs";
                str2 = null;
                i2 = -1;
                i8 = -1;
                break;
            default:
                throw C5973l6.m9787b("Unrecognized codec identifier.", null);
        }
        byte[] bArr5 = this.f28790N;
        if (bArr5 != null && (m4945a = xz3.m4945a(new C6423xb(bArr5))) != null) {
            str2 = m4945a.f33820a;
            str4 = "video/dolby-vision";
        }
        String str5 = str4;
        boolean z = this.f28798V;
        if (true != this.f28797U) {
            i3 = 0;
        } else {
            i3 = 2;
        }
        int i13 = (z ? 1 : 0) | i3;
        C5639c5 c5639c5 = new C5639c5();
        if (C5941kb.m10071a(str5)) {
            c5639c5.m12610B(this.f28791O);
            c5639c5.m12609C(this.f28793Q);
            c5639c5.m12608D(i8);
        } else if (C5941kb.m10070b(str5)) {
            if (this.f28818q == 0) {
                int i14 = this.f28816o;
                i4 = -1;
                if (i14 == -1) {
                    i14 = this.f28814m;
                }
                this.f28816o = i14;
                int i15 = this.f28817p;
                if (i15 == -1) {
                    i15 = this.f28815n;
                }
                this.f28817p = i15;
            } else {
                i4 = -1;
            }
            int i16 = this.f28816o;
            if (i16 != i4 && (i5 = this.f28817p) != i4) {
                f = (this.f28815n * i16) / (this.f28814m * i5);
            } else {
                f = -1.0f;
            }
            if (this.f28825x) {
                if (this.f28780D != -1.0f && this.f28781E != -1.0f && this.f28782F != -1.0f && this.f28783G != -1.0f && this.f28784H != -1.0f && this.f28785I != -1.0f && this.f28786J != -1.0f && this.f28787K != -1.0f && this.f28788L != -1.0f && this.f28789M != -1.0f) {
                    byte[] bArr6 = new byte[25];
                    ByteBuffer order = ByteBuffer.wrap(bArr6).order(ByteOrder.LITTLE_ENDIAN);
                    order.put((byte) 0);
                    order.putShort((short) ((this.f28780D * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28781E * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28782F * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28783G * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28784H * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28785I * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28786J * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f28787K * 50000.0f) + 0.5f));
                    order.putShort((short) (this.f28788L + 0.5f));
                    order.putShort((short) (this.f28789M + 0.5f));
                    order.putShort((short) this.f28778B);
                    order.putShort((short) this.f28779C);
                    bArr2 = bArr6;
                } else {
                    bArr2 = null;
                }
                av3Var = new av3(this.f28826y, this.f28777A, this.f28827z, bArr2);
            } else {
                av3Var = null;
            }
            if (this.f28802a != null) {
                map = q24.f29903g0;
                if (map.containsKey(this.f28802a)) {
                    map2 = q24.f29903g0;
                    i4 = ((Integer) map2.get(this.f28802a)).intValue();
                }
            }
            if (this.f28819r == 0 && Float.compare(this.f28820s, 0.0f) == 0 && Float.compare(this.f28821t, 0.0f) == 0) {
                if (Float.compare(this.f28822u, 0.0f) != 0) {
                    if (Float.compare(this.f28821t, 90.0f) == 0) {
                        i7 = 90;
                    } else if (Float.compare(this.f28821t, -180.0f) != 0 && Float.compare(this.f28821t, 180.0f) != 0) {
                        if (Float.compare(this.f28821t, -90.0f) == 0) {
                            i7 = 270;
                        }
                    } else {
                        i7 = 180;
                    }
                }
                c5639c5.m12559s(this.f28814m);
                c5639c5.m12558t(this.f28815n);
                c5639c5.m12555w(f);
                c5639c5.m12556v(i7);
                c5639c5.m12554x(this.f28823v);
                c5639c5.m12553y(this.f28824w);
                c5639c5.m12552z(av3Var);
                i6 = 2;
            }
            i7 = i4;
            c5639c5.m12559s(this.f28814m);
            c5639c5.m12558t(this.f28815n);
            c5639c5.m12555w(f);
            c5639c5.m12556v(i7);
            c5639c5.m12554x(this.f28823v);
            c5639c5.m12553y(this.f28824w);
            c5639c5.m12552z(av3Var);
            i6 = 2;
        } else if (!"application/x-subrip".equals(str5) && !"text/x-ssa".equals(str5) && !"application/vobsub".equals(str5) && !"application/pgs".equals(str5) && !"application/dvbsubs".equals(str5)) {
            throw C5973l6.m9787b("Unexpected MIME type.", null);
        } else {
            i6 = 3;
        }
        if (this.f28802a != null) {
            map3 = q24.f29903g0;
            if (!map3.containsKey(this.f28802a)) {
                c5639c5.m12575f(this.f28802a);
            }
        }
        c5639c5.m12577e(i);
        c5639c5.m12564n(str5);
        c5639c5.m12563o(i2);
        c5639c5.m12573g(this.f28799W);
        c5639c5.m12571h(i13);
        c5639c5.m12562p(singletonList);
        c5639c5.m12567k(str2);
        c5639c5.m12561q(this.f28813l);
        C5713e5 m12603I = c5639c5.m12603I();
        d14 mo10795r = d04Var.mo10795r(this.f28804c, i6);
        this.f28800X = mo10795r;
        mo10795r.mo4004f(m12603I);
    }

    /* renamed from: h */
    public static boolean m8912h(C6423xb c6423xb) {
        UUID uuid;
        UUID uuid2;
        try {
            int m5395x = c6423xb.m5395x();
            if (m5395x == 1) {
                return true;
            }
            if (m5395x == 65534) {
                c6423xb.m5403p(24);
                long m5421F = c6423xb.m5421F();
                uuid = q24.f29902f0;
                if (m5421F == uuid.getMostSignificantBits()) {
                    long m5421F2 = c6423xb.m5421F();
                    uuid2 = q24.f29902f0;
                    if (m5421F2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw C5973l6.m9787b("Error parsing MS/ACM codec private", null);
        }
    }
}
