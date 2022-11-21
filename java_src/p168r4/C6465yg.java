package p168r4;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
/* renamed from: r4.yg */
/* loaded from: classes2.dex */
public final class C6465yg implements InterfaceC6131pf {

    /* renamed from: w */
    public static final InterfaceC6205rf f34045w = new C6354vg();

    /* renamed from: x */
    public static final int f34046x = C5988ll.m9642l("seig");

    /* renamed from: y */
    public static final byte[] f34047y = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: j */
    public int f34057j;

    /* renamed from: k */
    public int f34058k;

    /* renamed from: l */
    public long f34059l;

    /* renamed from: m */
    public int f34060m;

    /* renamed from: n */
    public C5692dl f34061n;

    /* renamed from: o */
    public long f34062o;

    /* renamed from: q */
    public C6428xg f34064q;

    /* renamed from: r */
    public int f34065r;

    /* renamed from: s */
    public int f34066s;

    /* renamed from: t */
    public int f34067t;

    /* renamed from: u */
    public InterfaceC6168qf f34068u;

    /* renamed from: v */
    public boolean f34069v;

    /* renamed from: f */
    public final C5692dl f34053f = new C5692dl(16);

    /* renamed from: b */
    public final C5692dl f34049b = new C5692dl(C5619bl.f21092a);

    /* renamed from: c */
    public final C5692dl f34050c = new C5692dl(5);

    /* renamed from: d */
    public final C5692dl f34051d = new C5692dl();

    /* renamed from: e */
    public final C5692dl f34052e = new C5692dl(1);

    /* renamed from: g */
    public final byte[] f34054g = new byte[16];

    /* renamed from: h */
    public final Stack<C5946kg> f34055h = new Stack<>();

    /* renamed from: i */
    public final LinkedList<C6391wg> f34056i = new LinkedList<>();

    /* renamed from: a */
    public final SparseArray<C6428xg> f34048a = new SparseArray<>();

    /* renamed from: p */
    public long f34063p = -9223372036854775807L;

    /* renamed from: a */
    public final void m4732a() {
        this.f34057j = 0;
        this.f34060m = 0;
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: n */
    public final boolean mo4726n(C6094of c6094of) {
        return C5688dh.m12137a(c6094of);
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: o */
    public final void mo4725o(InterfaceC6168qf interfaceC6168qf) {
        this.f34068u = interfaceC6168qf;
    }

    /* renamed from: c */
    public static void m4730c(C5692dl c5692dl, int i, C5800gh c5800gh) {
        boolean z;
        c5692dl.m12114i(i + 8);
        int m9400b = C6020mg.m9400b(c5692dl.m12105r());
        if ((m9400b & 1) == 0) {
            if ((m9400b & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            int m12102u = c5692dl.m12102u();
            int i2 = c5800gh.f24080e;
            if (m12102u == i2) {
                Arrays.fill(c5800gh.f24088m, 0, m12102u, z);
                c5800gh.m11156a(c5692dl.m12119d());
                c5692dl.m12112k(c5800gh.f24091p.f22312a, 0, c5800gh.f24090o);
                c5800gh.f24091p.m12114i(0);
                c5800gh.f24092q = false;
                return;
            }
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(m12102u);
            sb.append(", ");
            sb.append(i2);
            throw new C5980ld(sb.toString());
        }
        throw new C5980ld("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:241:0x0631, code lost:
        m4732a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0635, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0599  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4731b(long r50) {
        /*
            Method dump skipped, instructions count: 1590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6465yg.m4731b(long):void");
    }

    @Override // p168r4.InterfaceC6131pf
    /* renamed from: l */
    public final void mo4728l(long j, long j2) {
        int size = this.f34048a.size();
        for (int i = 0; i < size; i++) {
            this.f34048a.valueAt(i).m5319b();
        }
        this.f34056i.clear();
        this.f34055h.clear();
        m4732a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        r2 = r24.f34064q;
        r3 = r2.f33590a;
        r5 = r3.f24083h;
        r9 = r2.f33594e;
        r5 = r5[r9];
        r24.f34065r = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if (r3.f24087l == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
        r5 = r3.f24091p;
        r10 = r3.f24076a.f32273a;
        r11 = r3.f24089n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        if (r11 == null) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        r11 = r2.f33592c.f22980h[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        r10 = r11.f23493a;
        r3 = r3.f24088m[r9];
        r9 = r24.f34052e;
        r11 = r9.f22312a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
        if (true == r3) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ae, code lost:
        r12 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
        r11[0] = (byte) (r12 | r10);
        r9.m12114i(0);
        r2 = r2.f33591b;
        r2.mo4740c(r24.f34052e, 1);
        r2.mo4740c(r5, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
        if (r3 != false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c3, code lost:
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c5, code lost:
        r3 = r5.m12110m();
        r5.m12113j(-2);
        r3 = (r3 * 6) + 2;
        r2.mo4740c(r5, r3);
        r10 = (r10 + 1) + r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
        r24.f34066s = r10;
        r5 = r24.f34065r + r10;
        r24.f34065r = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
        r24.f34066s = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e6, code lost:
        if (r24.f34064q.f33592c.f22979g != 1) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
        r24.f34065r = r5 - 8;
        r1.m8815d(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ef, code lost:
        r24.f34057j = 4;
        r24.f34067t = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f4, code lost:
        r2 = r24.f34064q;
        r3 = r2.f33590a;
        r5 = r2.f33592c;
        r9 = r2.f33591b;
        r2 = r2.f33594e;
        r6 = r5.f22983k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0100, code lost:
        if (r6 != 0) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0102, code lost:
        r4 = r24.f34066s;
        r6 = r24.f34065r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0106, code lost:
        if (r4 >= r6) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0108, code lost:
        r24.f34066s += r9.mo4741b(r1, r6 - r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0113, code lost:
        r10 = r24.f34050c.f22312a;
        r10[0] = 0;
        r10[1] = 0;
        r10[2] = 0;
        r4 = r6 + 1;
        r6 = 4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0126, code lost:
        if (r24.f34066s >= r24.f34065r) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0128, code lost:
        r11 = r24.f34067t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012a, code lost:
        if (r11 != 0) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012c, code lost:
        r1.m8817b(r10, r6, r4, false);
        r24.f34050c.m12114i(0);
        r24.f34067t = r24.f34050c.m12102u() - 1;
        r24.f34049b.m12114i(0);
        r9.mo4740c(r24.f34049b, 4);
        r9.mo4740c(r24.f34050c, 1);
        r24.f34066s += 5;
        r24.f34065r += r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x015a, code lost:
        r11 = r9.mo4741b(r1, r11, false);
        r24.f34066s += r11;
        r24.f34067t -= r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0169, code lost:
        r10 = (r3.f24085j[r2] + r3.f24084i[r2]) * 1000;
        r1 = r3.f24087l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0179, code lost:
        if (true == r1) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017b, code lost:
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x017d, code lost:
        r4 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017f, code lost:
        r12 = r4 | (r3.f24086k[r2] ? 1 : 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0185, code lost:
        if (r1 == false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0187, code lost:
        r1 = r3.f24089n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0189, code lost:
        if (r1 != null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018b, code lost:
        r1 = r5.f22980h[r3.f24076a.f32273a];
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0193, code lost:
        r2 = r24.f34064q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0197, code lost:
        if (r1 == r2.f33598i) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0199, code lost:
        r2 = new p168r4.C6427xf(1, r1.f23494b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a1, code lost:
        r2 = r2.f33597h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a3, code lost:
        r15 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a5, code lost:
        r1 = null;
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a7, code lost:
        r2 = r24.f34064q;
        r2.f33597h = r15;
        r2.f33598i = r1;
        r9.mo4742a(r10, r12, r24.f34065r, 0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b9, code lost:
        if (r24.f34056i.isEmpty() == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01bb, code lost:
        r1 = r24.f34064q;
        r1.f33594e++;
        r2 = r1.f33595f + 1;
        r1.f33595f = r2;
        r3 = r3.f24082g;
        r4 = r1.f33596g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cd, code lost:
        if (r2 != r3[r4]) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01cf, code lost:
        r1.f33596g = r4 + 1;
        r1.f33595f = 0;
        r24.f34064q = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d7, code lost:
        r24.f34057j = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01da, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01db, code lost:
        r2 = r24.f34056i.removeFirst().f33185a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01e6, code lost:
        throw null;
     */
    @Override // p168r4.InterfaceC6131pf
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4727m(p168r4.C6094of r25, p168r4.C6316uf r26) {
        /*
            Method dump skipped, instructions count: 1225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6465yg.mo4727m(r4.of, r4.uf):int");
    }

    public C6465yg(int i, C5878il c5878il, C5726eh c5726eh) {
        m4732a();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a9  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p168r4.C5982lf m4729d(java.util.List<p168r4.C5983lg> r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r2
            r3 = 0
        L8:
            if (r3 >= r0) goto Lb7
            java.lang.Object r5 = r14.get(r3)
            r4.lg r5 = (p168r4.C5983lg) r5
            int r6 = r5.f27683a
            int r7 = p168r4.C6020mg.f27627V
            if (r6 != r7) goto Lb3
            if (r4 != 0) goto L1d
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1d:
            r4.dl r5 = r5.f27207P0
            byte[] r5 = r5.f22312a
            r4.dl r6 = new r4.dl
            r6.<init>(r5)
            int r8 = r6.m12118e()
            r9 = 32
            if (r8 >= r9) goto L30
        L2e:
            r6 = r2
            goto L97
        L30:
            r6.m12114i(r1)
            int r8 = r6.m12105r()
            int r9 = r6.m12119d()
            int r9 = r9 + 4
            if (r8 == r9) goto L40
            goto L2e
        L40:
            int r8 = r6.m12105r()
            if (r8 == r7) goto L47
            goto L2e
        L47:
            int r7 = r6.m12105r()
            int r7 = p168r4.C6020mg.m9401a(r7)
            r8 = 1
            if (r7 <= r8) goto L6b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r8 = 37
            r6.<init>(r8)
            java.lang.String r8 = "Unsupported pssh version: "
            r6.append(r8)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.String r7 = "PsshAtomUtil"
            android.util.Log.w(r7, r6)
            goto L2e
        L6b:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.m12104s()
            long r12 = r6.m12104s()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L83
            int r7 = r6.m12102u()
            int r7 = r7 * 16
            r6.m12113j(r7)
        L83:
            int r7 = r6.m12102u()
            int r8 = r6.m12119d()
            if (r7 == r8) goto L8e
            goto L2e
        L8e:
            byte[] r8 = new byte[r7]
            r6.m12112k(r8, r1, r7)
            android.util.Pair r6 = android.util.Pair.create(r9, r8)
        L97:
            if (r6 != 0) goto L9b
            r6 = r2
            goto L9f
        L9b:
            java.lang.Object r6 = r6.first
            java.util.UUID r6 = (java.util.UUID) r6
        L9f:
            if (r6 != 0) goto La9
            java.lang.String r5 = "FragmentedMp4Extractor"
            java.lang.String r6 = "Skipped pssh atom (failed to extract uuid)"
            android.util.Log.w(r5, r6)
            goto Lb3
        La9:
            r4.kf r7 = new r4.kf
            java.lang.String r8 = "video/mp4"
            r7.<init>(r6, r8, r5, r1)
            r4.add(r7)
        Lb3:
            int r3 = r3 + 1
            goto L8
        Lb7:
            if (r4 != 0) goto Lba
            return r2
        Lba:
            r4.lf r14 = new r4.lf
            r14.<init>(r4)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6465yg.m4729d(java.util.List):r4.lf");
    }
}
