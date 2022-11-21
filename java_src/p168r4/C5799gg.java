package p168r4;

import android.util.Log;
import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.tiles.CoreTile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: r4.gg */
/* loaded from: classes2.dex */
public final class C5799gg {

    /* renamed from: L */
    public boolean f24043L;

    /* renamed from: O */
    public InterfaceC6464yf f24046O;

    /* renamed from: P */
    public int f24047P;

    /* renamed from: a */
    public String f24048a;

    /* renamed from: b */
    public int f24049b;

    /* renamed from: c */
    public int f24050c;

    /* renamed from: d */
    public int f24051d;

    /* renamed from: e */
    public boolean f24052e;

    /* renamed from: f */
    public byte[] f24053f;

    /* renamed from: g */
    public C6427xf f24054g;

    /* renamed from: h */
    public byte[] f24055h;

    /* renamed from: i */
    public C5982lf f24056i;

    /* renamed from: j */
    public int f24057j = -1;

    /* renamed from: k */
    public int f24058k = -1;

    /* renamed from: l */
    public int f24059l = -1;

    /* renamed from: m */
    public int f24060m = -1;

    /* renamed from: n */
    public int f24061n = 0;

    /* renamed from: o */
    public byte[] f24062o = null;

    /* renamed from: p */
    public int f24063p = -1;

    /* renamed from: q */
    public boolean f24064q = false;

    /* renamed from: r */
    public int f24065r = -1;

    /* renamed from: s */
    public int f24066s = -1;

    /* renamed from: t */
    public int f24067t = -1;

    /* renamed from: u */
    public int f24068u = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;

    /* renamed from: v */
    public int f24069v = HttpStatus.SC_OK;

    /* renamed from: w */
    public float f24070w = -1.0f;

    /* renamed from: x */
    public float f24071x = -1.0f;

    /* renamed from: y */
    public float f24072y = -1.0f;

    /* renamed from: z */
    public float f24073z = -1.0f;

    /* renamed from: A */
    public float f24032A = -1.0f;

    /* renamed from: B */
    public float f24033B = -1.0f;

    /* renamed from: C */
    public float f24034C = -1.0f;

    /* renamed from: D */
    public float f24035D = -1.0f;

    /* renamed from: E */
    public float f24036E = -1.0f;

    /* renamed from: F */
    public float f24037F = -1.0f;

    /* renamed from: G */
    public int f24038G = 1;

    /* renamed from: H */
    public int f24039H = -1;

    /* renamed from: I */
    public int f24040I = 8000;

    /* renamed from: J */
    public long f24041J = 0;

    /* renamed from: K */
    public long f24042K = 0;

    /* renamed from: M */
    public boolean f24044M = true;

    /* renamed from: N */
    public String f24045N = "eng";

    public C5799gg() {
    }

    public /* synthetic */ C5799gg(C5762fg c5762fg) {
    }

    /* renamed from: c */
    public static List<byte[]> m11172c(C5692dl c5692dl) {
        try {
            c5692dl.m12113j(16);
            if (c5692dl.m12106q() != 826496599) {
                return null;
            }
            int m12116g = c5692dl.m12116g() + 20;
            byte[] bArr = c5692dl.f22312a;
            while (true) {
                int length = bArr.length;
                if (m12116g < length - 4) {
                    if (bArr[m12116g] == 0 && bArr[m12116g + 1] == 0 && bArr[m12116g + 2] == 1 && bArr[m12116g + 3] == 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, m12116g, length));
                    }
                    m12116g++;
                } else {
                    throw new C5980ld("Failed to find FourCC VC1 initialization data");
                }
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C5980ld("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: d */
    public static List<byte[]> m11171d(byte[] bArr) {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 1;
                int i4 = 0;
                while (true) {
                    i = bArr[i3];
                    if (i != -1) {
                        break;
                    }
                    i4 += 255;
                    i3++;
                }
                int i5 = i3 + 1;
                int i6 = i4 + i;
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if (i2 != -1) {
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
                        throw new C5980ld("Error parsing vorbis codec private");
                    }
                    throw new C5980ld("Error parsing vorbis codec private");
                }
                throw new C5980ld("Error parsing vorbis codec private");
            }
            throw new C5980ld("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C5980ld("Error parsing vorbis codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public final void m11173b(InterfaceC6168qf interfaceC6168qf, int i) {
        char c;
        List<byte[]> singletonList;
        List<byte[]> list;
        int i2;
        int i3;
        int m9639o;
        int i4;
        C5870id m10681n;
        int i5;
        int i6;
        float f;
        C6100ol c6100ol;
        byte[] bArr;
        int i7;
        String str = this.f24048a;
        int i8 = 2;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "audio/raw";
        switch (c) {
            case 0:
                str2 = "video/x-vnd.on2.vp8";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 1:
                str2 = "video/x-vnd.on2.vp9";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 2:
                str2 = "video/mpeg2";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 3:
            case 4:
            case 5:
                byte[] bArr2 = this.f24055h;
                if (bArr2 == null) {
                    singletonList = null;
                } else {
                    singletonList = Collections.singletonList(bArr2);
                }
                str2 = "video/mp4v-es";
                i2 = -1;
                i3 = -1;
                break;
            case 6:
                C6025ml m9347a = C6025ml.m9347a(new C5692dl(this.f24055h));
                list = m9347a.f27757a;
                this.f24047P = m9347a.f27758b;
                str2 = "video/avc";
                singletonList = list;
                i2 = -1;
                i3 = -1;
                break;
            case 7:
                C6248sl m7146a = C6248sl.m7146a(new C5692dl(this.f24055h));
                list = m7146a.f31391a;
                this.f24047P = m7146a.f31392b;
                str2 = "video/hevc";
                singletonList = list;
                i2 = -1;
                i3 = -1;
                break;
            case '\b':
                singletonList = m11172c(new C5692dl(this.f24055h));
                if (singletonList != null) {
                    str2 = "video/wvc1";
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str2 = "video/x-unknown";
                }
                i2 = -1;
                i3 = -1;
                break;
            case '\t':
                str2 = "video/x-unknown";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case '\n':
                singletonList = m11171d(this.f24055h);
                str2 = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case 11:
                singletonList = new ArrayList<>(3);
                singletonList.add(this.f24055h);
                singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f24041J).array());
                singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f24042K).array());
                str2 = "audio/opus";
                i2 = -1;
                i3 = 5760;
                break;
            case '\f':
                singletonList = Collections.singletonList(this.f24055h);
                str2 = "audio/mp4a-latm";
                i2 = -1;
                i3 = -1;
                break;
            case '\r':
                str2 = "audio/mpeg-L2";
                singletonList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 14:
                str2 = "audio/mpeg";
                singletonList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 15:
                str2 = "audio/ac3";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 16:
                str2 = "audio/eac3";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 17:
                str2 = "audio/true-hd";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 18:
            case 19:
                str2 = "audio/vnd.dts";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 20:
                str2 = "audio/vnd.dts.hd";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 21:
                singletonList = Collections.singletonList(this.f24055h);
                str2 = "audio/x-flac";
                i2 = -1;
                i3 = -1;
                break;
            case 22:
                if (m11170e(new C5692dl(this.f24055h))) {
                    m9639o = C5988ll.m9639o(this.f24039H);
                    if (m9639o == 0) {
                        int i9 = this.f24039H;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i9);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    i2 = m9639o;
                    singletonList = null;
                    i3 = -1;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                str2 = "audio/x-unknown";
                singletonList = null;
                i2 = -1;
                i3 = -1;
            case 23:
                m9639o = C5988ll.m9639o(this.f24039H);
                if (m9639o == 0) {
                    int i10 = this.f24039H;
                    StringBuilder sb2 = new StringBuilder(75);
                    sb2.append("Unsupported PCM bit depth: ");
                    sb2.append(i10);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str2 = "audio/x-unknown";
                    singletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                }
                i2 = m9639o;
                singletonList = null;
                i3 = -1;
            case 24:
                str2 = "application/x-subrip";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 25:
                singletonList = Collections.singletonList(this.f24055h);
                str2 = "application/vobsub";
                i2 = -1;
                i3 = -1;
                break;
            case 26:
                str2 = "application/pgs";
                singletonList = null;
                i2 = -1;
                i3 = -1;
                break;
            case 27:
                byte[] bArr3 = this.f24055h;
                singletonList = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str2 = "application/dvbsubs";
                i2 = -1;
                i3 = -1;
                break;
            default:
                throw new C5980ld("Unrecognized codec identifier.");
        }
        boolean z = this.f24044M;
        if (true != this.f24043L) {
            i4 = 0;
        } else {
            i4 = 2;
        }
        int i11 = (z ? 1 : 0) | i4;
        if (C5582al.m13004a(str2)) {
            m10681n = C5870id.m10683j(Integer.toString(i), str2, null, -1, i3, this.f24038G, this.f24040I, i2, -1, -1, singletonList, this.f24056i, i11, this.f24045N, null);
            i8 = 1;
        } else if (C5582al.m13003b(str2)) {
            if (this.f24061n == 0) {
                int i12 = this.f24059l;
                i5 = -1;
                if (i12 == -1) {
                    i12 = this.f24057j;
                }
                this.f24059l = i12;
                int i13 = this.f24060m;
                if (i13 == -1) {
                    i13 = this.f24058k;
                }
                this.f24060m = i13;
            } else {
                i5 = -1;
            }
            if (this.f24059l != i5 && (i7 = this.f24060m) != i5) {
                f = (this.f24058k * i6) / (this.f24057j * i7);
            } else {
                f = -1.0f;
            }
            if (this.f24064q) {
                if (this.f24070w != -1.0f && this.f24071x != -1.0f && this.f24072y != -1.0f && this.f24073z != -1.0f && this.f24032A != -1.0f && this.f24033B != -1.0f && this.f24034C != -1.0f && this.f24035D != -1.0f && this.f24036E != -1.0f && this.f24037F != -1.0f) {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.f24070w * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24071x * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24072y * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24073z * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24032A * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24033B * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24034C * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f24035D * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.f24036E + 0.5f));
                    wrap.putShort((short) (this.f24037F + 0.5f));
                    wrap.putShort((short) this.f24068u);
                    wrap.putShort((short) this.f24069v);
                } else {
                    bArr = null;
                }
                c6100ol = new C6100ol(this.f24065r, this.f24067t, this.f24066s, bArr);
            } else {
                c6100ol = null;
            }
            m10681n = C5870id.m10685a(Integer.toString(i), str2, null, -1, i3, this.f24057j, this.f24058k, -1.0f, singletonList, -1, f, this.f24062o, this.f24063p, c6100ol, this.f24056i);
        } else {
            if ("application/x-subrip".equals(str2)) {
                m10681n = C5870id.m10682l(Integer.toString(i), str2, null, -1, i11, this.f24045N, -1, this.f24056i, Long.MAX_VALUE, Collections.emptyList());
            } else if (!"application/vobsub".equals(str2) && !"application/pgs".equals(str2) && !"application/dvbsubs".equals(str2)) {
                throw new C5980ld("Unexpected MIME type.");
            } else {
                m10681n = C5870id.m10681n(Integer.toString(i), str2, null, -1, singletonList, this.f24045N, this.f24056i);
            }
            i8 = 3;
        }
        InterfaceC6464yf mo7829n = interfaceC6168qf.mo7829n(this.f24049b, i8);
        this.f24046O = mo7829n;
        mo7829n.mo4739d(m10681n);
    }

    /* renamed from: e */
    public static boolean m11170e(C5692dl c5692dl) {
        UUID uuid;
        UUID uuid2;
        try {
            int m12109n = c5692dl.m12109n();
            if (m12109n == 1) {
                return true;
            }
            if (m12109n == 65534) {
                c5692dl.m12114i(24);
                long m12104s = c5692dl.m12104s();
                uuid = C5836hg.f24572c0;
                if (m12104s == uuid.getMostSignificantBits()) {
                    long m12104s2 = c5692dl.m12104s();
                    uuid2 = C5836hg.f24572c0;
                    if (m12104s2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new C5980ld("Error parsing MS/ACM codec private");
        }
    }
}
