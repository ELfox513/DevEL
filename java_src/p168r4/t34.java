package p168r4;

import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: r4.t34 */
/* loaded from: classes2.dex */
public final class t34 implements a04 {

    /* renamed from: E */
    public static final g04 f31643E = q34.f29963a;

    /* renamed from: F */
    public static final byte[] f31644F = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: G */
    public static final C5713e5 f31645G;

    /* renamed from: D */
    public boolean f31649D;

    /* renamed from: f */
    public final byte[] f31655f;

    /* renamed from: g */
    public final C6423xb f31656g;

    /* renamed from: l */
    public int f31661l;

    /* renamed from: m */
    public int f31662m;

    /* renamed from: n */
    public long f31663n;

    /* renamed from: o */
    public int f31664o;

    /* renamed from: p */
    public C6423xb f31665p;

    /* renamed from: q */
    public long f31666q;

    /* renamed from: r */
    public int f31667r;

    /* renamed from: v */
    public s34 f31671v;

    /* renamed from: w */
    public int f31672w;

    /* renamed from: x */
    public int f31673x;

    /* renamed from: y */
    public int f31674y;

    /* renamed from: z */
    public boolean f31675z;

    /* renamed from: a */
    public final List<C5713e5> f31650a = Collections.unmodifiableList(Collections.emptyList());

    /* renamed from: h */
    public final C6124p8 f31657h = new C6124p8();

    /* renamed from: i */
    public final C6423xb f31658i = new C6423xb(16);

    /* renamed from: c */
    public final C6423xb f31652c = new C6423xb(C6053nb.f28240a);

    /* renamed from: d */
    public final C6423xb f31653d = new C6423xb(5);

    /* renamed from: e */
    public final C6423xb f31654e = new C6423xb();

    /* renamed from: j */
    public final ArrayDeque<d34> f31659j = new ArrayDeque<>();

    /* renamed from: k */
    public final ArrayDeque<r34> f31660k = new ArrayDeque<>();

    /* renamed from: b */
    public final SparseArray<s34> f31651b = new SparseArray<>();

    /* renamed from: t */
    public long f31669t = -9223372036854775807L;

    /* renamed from: s */
    public long f31668s = -9223372036854775807L;

    /* renamed from: u */
    public long f31670u = -9223372036854775807L;

    /* renamed from: A */
    public d04 f31646A = d04.f22017n;

    /* renamed from: B */
    public d14[] f31647B = new d14[0];

    /* renamed from: C */
    public d14[] f31648C = new d14[0];

    /* renamed from: c */
    public static int m6916c(int i) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw C5973l6.m9787b(sb.toString(), null);
    }

    /* renamed from: a */
    public final void m6918a() {
        this.f31661l = 0;
        this.f31664o = 0;
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        return c44.m12614a(b04Var);
    }

    static {
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n("application/x-emsg");
        f31645G = c5639c5.m12603I();
    }

    /* renamed from: d */
    public static void m6915d(C6423xb c6423xb, int i, f44 f44Var) {
        boolean z;
        c6423xb.m5403p(i + 8);
        int m5423D = c6423xb.m5423D() & 16777215;
        if ((m5423D & 1) == 0) {
            if ((m5423D & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            int m5417b = c6423xb.m5417b();
            if (m5417b == 0) {
                Arrays.fill(f44Var.f23293m, 0, f44Var.f23285e, false);
                return;
            }
            int i2 = f44Var.f23285e;
            if (m5417b == i2) {
                Arrays.fill(f44Var.f23293m, 0, m5417b, z);
                f44Var.m11639a(c6423xb.m5407l());
                c6423xb.m5398u(f44Var.f23295o.m5402q(), 0, f44Var.f23295o.m5406m());
                f44Var.f23295o.m5403p(0);
                f44Var.f23296p = false;
                return;
            }
            StringBuilder sb = new StringBuilder(80);
            sb.append("Senc sample count ");
            sb.append(m5417b);
            sb.append(" is different from fragment sample count");
            sb.append(i2);
            throw C5973l6.m9787b(sb.toString(), null);
        }
        throw C5973l6.m9786c("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x032c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6917b(long r48) {
        /*
            Method dump skipped, instructions count: 1801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.t34.m6917b(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x024a, code lost:
        r23 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x024c, code lost:
        r5.mo4005e(r10, r20, r33.f31672w, 0, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025f, code lost:
        if (r33.f31660k.isEmpty() != false) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0261, code lost:
        r1 = r33.f31660k.removeFirst();
        r33.f31667r -= r1.f30437b;
        r3 = r1.f30436a + r10;
        r5 = r33.f31647B;
        r6 = r5.length;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0277, code lost:
        if (r8 >= r6) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0279, code lost:
        r5[r8].mo4005e(r3, 1, r1.f30437b, r33.f31667r, null);
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0291, code lost:
        if (r2.m7210i() != false) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0293, code lost:
        r33.f31671v = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0295, code lost:
        r33.f31661l = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
        r4 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
        if (r33.f31661l != 3) goto L329;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
        r3 = r2.m7212g();
        r33.f31672w = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
        if (r2.f31248f >= r2.f31251i) goto L321;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
        ((p168r4.vz3) r1).m5956n(r3, false);
        r1 = r2.m7208k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
        if (r1 != null) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b6, code lost:
        r3 = r2.f31244b.f23295o;
        r1 = r1.f22793d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bc, code lost:
        if (r1 == 0) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
        r3.m5400s(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
        if (r2.f31244b.m11637c(r2.f31248f) == false) goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
        r3.m5400s(r3.m5396w() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d8, code lost:
        if (r2.m7210i() != false) goto L319;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
        r33.f31671v = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00dc, code lost:
        r33.f31661l = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00de, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e7, code lost:
        if (r2.f31246d.f23876a.f22082g != 1) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e9, code lost:
        r33.f31672w = r3 - 8;
        ((p168r4.vz3) r1).m5956n(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0103, code lost:
        if ("audio/ac4".equals(r2.f31246d.f23876a.f22081f.f22814l) == false) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0105, code lost:
        r33.f31673x = r2.m7209j(r33.f31672w, 7);
        p168r4.jz3.m10127b(r33.f31672w, r33.f31656g);
        p168r4.b14.m12888b(r2.f31243a, r33.f31656g, 7);
        r3 = r33.f31673x + 7;
        r33.f31673x = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0122, code lost:
        r3 = r2.m7209j(r33.f31672w, 0);
        r33.f31673x = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
        r33.f31672w += r3;
        r33.f31661l = 4;
        r33.f31674y = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0134, code lost:
        r3 = r2.f31246d.f23876a;
        r5 = r2.f31243a;
        r10 = r2.m7214e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0140, code lost:
        if (r3.f22085j != 0) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0142, code lost:
        r3 = r33.f31673x;
        r4 = r33.f31672w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0146, code lost:
        if (r3 >= r4) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0148, code lost:
        r33.f31673x += p168r4.b14.m12889a(r5, r1, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0153, code lost:
        r6 = r33.f31653d.m5402q();
        r6[0] = 0;
        r6[1] = 0;
        r6[2] = 0;
        r13 = r3.f22085j;
        r14 = r13 + 1;
        r13 = 4 - r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016b, code lost:
        if (r33.f31673x >= r33.f31672w) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016d, code lost:
        r12 = r33.f31674y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0171, code lost:
        if (r12 != 0) goto L379;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0173, code lost:
        ((p168r4.vz3) r1).mo5961f(r6, r13, r14, r9);
        r33.f31653d.m5403p(r9);
        r12 = r33.f31653d.m5423D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0184, code lost:
        if (r12 <= 0) goto L376;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0186, code lost:
        r33.f31674y = r12 - 1;
        r33.f31652c.m5403p(r9);
        p168r4.b14.m12888b(r5, r33.f31652c, 4);
        p168r4.b14.m12888b(r5, r33.f31653d, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019d, code lost:
        if (r33.f31648C.length <= 0) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x019f, code lost:
        r12 = r3.f22081f.f22814l;
        r17 = r6[4];
        r9 = p168r4.C6053nb.f28240a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01ad, code lost:
        if ("video/avc".equals(r12) == false) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01b1, code lost:
        if ((r17 & 31) == r4) goto L367;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b4, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ba, code lost:
        if ("video/hevc".equals(r12) == false) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c1, code lost:
        if (((r17 & 126) >> r8) != 39) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c4, code lost:
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01c5, code lost:
        r33.f31675z = r9;
        r33.f31673x += 5;
        r33.f31672w += r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d9, code lost:
        throw p168r4.C5973l6.m9787b("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01dc, code lost:
        if (r33.f31675z == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01de, code lost:
        r33.f31654e.m5410i(r12);
        ((p168r4.vz3) r1).mo5961f(r33.f31654e.m5402q(), 0, r33.f31674y, false);
        p168r4.b14.m12888b(r5, r33.f31654e, r33.f31674y);
        r4 = r33.f31674y;
        r8 = p168r4.C6053nb.m9134a(r33.f31654e.m5402q(), r33.f31654e.m5406m());
        r33.f31654e.m5403p("video/hevc".equals(r3.f22081f.f22814l) ? 1 : 0);
        r33.f31654e.m5405n(r8);
        p168r4.sz3.m6945a(r10, r33.f31654e, r33.f31648C);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0225, code lost:
        r4 = p168r4.b14.m12889a(r5, r1, r12, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x022b, code lost:
        r33.f31673x += r4;
        r33.f31674y -= r4;
        r4 = 6;
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0237, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x023b, code lost:
        r20 = r2.m7211h();
        r1 = r2.m7208k();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0243, code lost:
        if (r1 == null) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0245, code lost:
        r23 = r1.f22792c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v11 */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r34, p168r4.w04 r35) {
        /*
            Method dump skipped, instructions count: 1849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.t34.mo4474f(r4.b04, r4.w04):int");
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f31646A = d04Var;
        m6918a();
        d14[] d14VarArr = new d14[2];
        this.f31647B = d14VarArr;
        int i = 0;
        d14[] d14VarArr2 = (d14[]) C5979lc.m9726K(d14VarArr, 0);
        this.f31647B = d14VarArr2;
        for (d14 d14Var : d14VarArr2) {
            d14Var.mo4004f(f31645G);
        }
        this.f31648C = new d14[this.f31650a.size()];
        int i2 = 100;
        while (i < this.f31648C.length) {
            int i3 = i2 + 1;
            d14 mo10795r = this.f31646A.mo10795r(i2, 3);
            mo10795r.mo4004f(this.f31650a.get(i));
            this.f31648C[i] = mo10795r;
            i++;
            i2 = i3;
        }
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        int size = this.f31651b.size();
        for (int i = 0; i < size; i++) {
            this.f31651b.valueAt(i).m7215d();
        }
        this.f31660k.clear();
        this.f31667r = 0;
        this.f31668s = j2;
        this.f31659j.clear();
        m6918a();
    }

    public t34(int i, C5758fc c5758fc) {
        byte[] bArr = new byte[16];
        this.f31655f = bArr;
        this.f31656g = new C6423xb(bArr);
    }

    /* renamed from: g */
    public static fz3 m6914g(List<e34> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            e34 e34Var = list.get(i);
            if (e34Var.f23269a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] m5402q = e34Var.f22784b.m5402q();
                UUID m13048a = a44.m13048a(m5402q);
                if (m13048a == null) {
                    Log.w("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new dy3(m13048a, null, "video/mp4", m5402q));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new fz3(arrayList);
    }

    /* renamed from: j */
    public static final o34 m6913j(SparseArray<o34> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        o34 o34Var = sparseArray.get(i);
        o34Var.getClass();
        return o34Var;
    }
}
