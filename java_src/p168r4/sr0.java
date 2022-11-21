package p168r4;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p016b3.C0497k2;
import p016b3.C0543w1;
/* renamed from: r4.sr0 */
/* loaded from: classes2.dex */
public final class sr0 extends fo0 implements InterfaceC5844ho, f61 {

    /* renamed from: G */
    public static final /* synthetic */ int f31467G = 0;

    /* renamed from: A */
    public final String f31468A;

    /* renamed from: B */
    public final int f31469B;

    /* renamed from: D */
    public final ArrayList<InterfaceC5915jm> f31471D;

    /* renamed from: E */
    public volatile fr0 f31472E;

    /* renamed from: d */
    public final Context f31474d;

    /* renamed from: k */
    public final cr0 f31475k;

    /* renamed from: p */
    public final uv3 f31476p;

    /* renamed from: q */
    public final oo0 f31477q;

    /* renamed from: r */
    public final WeakReference<po0> f31478r;

    /* renamed from: s */
    public final ku3 f31479s;

    /* renamed from: t */
    public C6160q7 f31480t;

    /* renamed from: u */
    public ByteBuffer f31481u;

    /* renamed from: v */
    public boolean f31482v;

    /* renamed from: w */
    public eo0 f31483w;

    /* renamed from: x */
    public int f31484x;

    /* renamed from: y */
    public int f31485y;

    /* renamed from: z */
    public long f31486z;

    /* renamed from: C */
    public final Object f31470C = new Object();

    /* renamed from: F */
    public final Set<WeakReference<br0>> f31473F = new HashSet();

    @Override // p168r4.fo0
    /* renamed from: A */
    public final boolean mo5234A() {
        return this.f31480t != null;
    }

    @Override // p168r4.fo0
    /* renamed from: B */
    public final int mo5233B() {
        return this.f31480t.m7973j();
    }

    @Override // p168r4.fo0
    /* renamed from: C */
    public final long mo5232C() {
        return this.f31480t.mo7999O();
    }

    @Override // p168r4.fo0
    /* renamed from: D */
    public final boolean mo5231D() {
        return this.f31480t.m7969n();
    }

    @Override // p168r4.fo0
    /* renamed from: E */
    public final void mo5230E(boolean z) {
        this.f31480t.m7970m(z);
    }

    @Override // p168r4.fo0
    /* renamed from: F */
    public final void mo5229F(int i) {
        this.f31475k.m12372i(i);
    }

    @Override // p168r4.fo0
    /* renamed from: G */
    public final void mo5228G(int i) {
        this.f31475k.m12371j(i);
    }

    @Override // p168r4.fo0
    /* renamed from: H */
    public final long mo5227H() {
        return this.f31480t.m7964s();
    }

    @Override // p168r4.fo0
    /* renamed from: I */
    public final long mo5226I() {
        if (m7028f0()) {
            return 0L;
        }
        return this.f31484x;
    }

    @Override // p168r4.fo0
    /* renamed from: L */
    public final int mo5223L() {
        return this.f31485y;
    }

    @Override // p168r4.fo0
    /* renamed from: N */
    public final long mo5221N() {
        return this.f31480t.m7962u();
    }

    @Override // p168r4.fo0
    /* renamed from: O */
    public final long mo5220O() {
        return this.f31484x;
    }

    @Override // p168r4.fo0
    /* renamed from: R */
    public final void mo5219R(Uri[] uriArr, String str) {
        mo5218S(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // p168r4.fo0
    /* renamed from: T */
    public final void mo5217T(eo0 eo0Var) {
        this.f31483w = eo0Var;
    }

    @Override // p168r4.fo0
    /* renamed from: V */
    public final void mo5215V(Surface surface, boolean z) {
        C6160q7 c6160q7 = this.f31480t;
        if (c6160q7 == null) {
            return;
        }
        c6160q7.m7974i0(surface);
    }

    @Override // p168r4.fo0
    /* renamed from: W */
    public final void mo5214W(float f, boolean z) {
        C6160q7 c6160q7 = this.f31480t;
        if (c6160q7 == null) {
            return;
        }
        c6160q7.m7979g(f);
    }

    @Override // p168r4.fo0
    /* renamed from: X */
    public final void mo5213X() {
        this.f31480t.mo7985b(false);
    }

    @Override // p168r4.fo0
    /* renamed from: Y */
    public final void mo5212Y(long j) {
        C6160q7 c6160q7 = this.f31480t;
        c6160q7.mo7987a(c6160q7.mo8009E(), j);
    }

    @Override // p168r4.fo0
    /* renamed from: Z */
    public final void mo5211Z(int i) {
        this.f31475k.m12370k(i);
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: a */
    public final void mo6699a(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
    }

    @Override // p168r4.fo0
    /* renamed from: a0 */
    public final void mo5210a0(int i) {
        this.f31475k.m12369l(i);
    }

    @Override // p168r4.f61
    /* renamed from: b */
    public final void mo7032b(d51 d51Var, Object obj, long j) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            eo0Var.mo4100y();
        }
    }

    /* renamed from: c0 */
    public final /* synthetic */ void m7031c0(boolean z, long j) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            eo0Var.mo4116a(z, j);
        }
    }

    /* renamed from: e0 */
    public final /* synthetic */ InterfaceC6087o8 m7029e0(String str, boolean z) {
        sr0 sr0Var;
        if (true != z) {
            sr0Var = null;
        } else {
            sr0Var = this;
        }
        oo0 oo0Var = this.f31477q;
        br0 br0Var = new br0(str, sr0Var, oo0Var.f29088d, oo0Var.f29090f, oo0Var.f29093i);
        this.f31473F.add(new WeakReference<>(br0Var));
        return br0Var;
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: f */
    public final void mo6694f(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z, int i) {
        this.f31484x += i;
    }

    /* renamed from: f0 */
    public final boolean m7028f0() {
        return this.f31472E != null && this.f31472E.m11388u();
    }

    @Override // p168r4.f61
    /* renamed from: i */
    public final void mo7024i(d51 d51Var, int i, long j) {
        this.f31485y += i;
    }

    /* renamed from: i0 */
    public final /* synthetic */ InterfaceC6087o8 m7023i0(InterfaceC5974l7 interfaceC5974l7) {
        return new fr0(this.f31474d, interfaceC5974l7.zza(), this.f31468A, this.f31469B, this, new er0(this) { // from class: r4.rr0

            /* renamed from: a */
            public final sr0 f30669a;

            {
                this.f30669a = this;
            }

            @Override // p168r4.er0
            /* renamed from: a */
            public final void mo7350a(boolean z, long j) {
                this.f30669a.m7031c0(z, j);
            }
        });
    }

    @Override // p168r4.f61
    /* renamed from: n */
    public final void mo7021n(d51 d51Var, int i) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            eo0Var.mo4101x(i);
        }
    }

    @Override // p168r4.f61
    /* renamed from: q */
    public final void mo7019q(d51 d51Var, pa4 pa4Var) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            eo0Var.mo4115b(pa4Var.f29411a, pa4Var.f29412b);
        }
    }

    @Override // p168r4.f61
    /* renamed from: u */
    public final void mo7018u(d51 d51Var, C6047n6 c6047n6) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            eo0Var.mo4113d("onPlayerError", c6047n6);
        }
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: y */
    public final void mo6688y(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
    }

    @Override // p168r4.fo0
    /* renamed from: M */
    public final void mo5222M(boolean z) {
        if (this.f31480t != null) {
            int i = 0;
            while (true) {
                this.f31480t.m7965r();
                if (i < 2) {
                    uv3 uv3Var = this.f31476p;
                    pv3 m8651g = uv3Var.m6329i().m8651g();
                    m8651g.m8107s(i, !z);
                    uv3Var.m6328j(m8651g);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // p168r4.fo0
    /* renamed from: S */
    public final void mo5218S(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        ht3 vt3Var;
        if (this.f31480t == null) {
            return;
        }
        this.f31481u = byteBuffer;
        this.f31482v = z;
        int length = uriArr.length;
        if (length == 1) {
            vt3Var = m7027g0(uriArr[0]);
        } else {
            ht3[] ht3VarArr = new ht3[length];
            for (int i = 0; i < uriArr.length; i++) {
                ht3VarArr[i] = m7027g0(uriArr[i]);
            }
            vt3Var = new vt3(false, false, ht3VarArr);
        }
        this.f31480t.m7971l(vt3Var);
        this.f31480t.m7972k();
        fo0.f23582b.incrementAndGet();
    }

    @Override // p168r4.fo0
    /* renamed from: U */
    public final void mo5216U() {
        C6160q7 c6160q7 = this.f31480t;
        if (c6160q7 != null) {
            c6160q7.m7975i(this);
            this.f31480t.m7968o();
            this.f31480t = null;
            fo0.f23582b.decrementAndGet();
        }
    }

    @Override // p168r4.fo0
    /* renamed from: b0 */
    public final void mo5209b0(int i) {
        for (WeakReference<br0> weakReference : this.f31473F) {
            br0 br0Var = weakReference.get();
            if (br0Var != null) {
                br0Var.m12712u(i);
            }
        }
    }

    /* renamed from: d0 */
    public final /* synthetic */ InterfaceC6087o8 m7030d0(String str, boolean z) {
        sr0 sr0Var;
        C6388wd c6388wd = new C6388wd();
        c6388wd.m5767a(str);
        if (true != z) {
            sr0Var = null;
        } else {
            sr0Var = this;
        }
        c6388wd.m5763e(sr0Var);
        c6388wd.m5766b(this.f31477q.f29088d);
        c6388wd.m5765c(this.f31477q.f29090f);
        c6388wd.m5764d(true);
        return c6388wd.zza();
    }

    public final void finalize() {
        fo0.f23581a.decrementAndGet();
        if (C0543w1.m26249m()) {
            C0543w1.m26251k("OfficialSimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    /* renamed from: g0 */
    public final ht3 m7027g0(Uri uri) {
        C5972l5 c5972l5 = new C5972l5();
        c5972l5.m9792b(uri);
        C6306u5 m9791c = c5972l5.m9791c();
        ku3 ku3Var = this.f31479s;
        ku3Var.m9948a(this.f31477q.f29091g);
        return ku3Var.m9947b(m9791c);
    }

    @Override // p168r4.f61
    /* renamed from: h */
    public final void mo7026h(d51 d51Var, C5713e5 c5713e5, C5883iq c5883iq) {
        po0 po0Var = this.f31478r.get();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && c5713e5 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("audioMime", c5713e5.f22813k);
            hashMap.put("audioSampleMime", c5713e5.f22814l);
            hashMap.put("audioCodec", c5713e5.f22811i);
            po0Var.mo5125H0("onMetadataEvent", hashMap);
        }
    }

    /* renamed from: h0 */
    public final /* synthetic */ InterfaceC5790g7[] m7025h0(Handler handler, zy3 zy3Var, wm1 wm1Var, InterfaceC5830ha interfaceC5830ha, InterfaceC5938k8 interfaceC5938k8) {
        Context context = this.f31474d;
        u73 u73Var = u73.f32220a;
        bb2 bb2Var = new bb2(null, new ja1[0], false);
        c13 c13Var = c13.f21307a;
        return new InterfaceC5790g7[]{new ff2(context, c13Var, u73Var, false, handler, wm1Var, bb2Var), new cy3(this.f31474d, c13Var, u73Var, 0L, false, handler, zy3Var, -1)};
    }

    @Override // p168r4.f61
    /* renamed from: k */
    public final void mo7022k(d51 d51Var, C5713e5 c5713e5, C5883iq c5883iq) {
        po0 po0Var = this.f31478r.get();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && c5713e5 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(c5713e5.f22821s));
            hashMap.put("bitRate", String.valueOf(c5713e5.f22810h));
            int i = c5713e5.f22819q;
            int i2 = c5713e5.f22820r;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            hashMap.put("resolution", sb.toString());
            hashMap.put("videoMime", c5713e5.f22813k);
            hashMap.put("videoSampleMime", c5713e5.f22814l);
            hashMap.put("videoCodec", c5713e5.f22811i);
            po0Var.mo5125H0("onMetadataEvent", hashMap);
        }
    }

    @Override // p168r4.f61
    /* renamed from: p */
    public final void mo7020p(d51 d51Var, ws3 ws3Var, ct3 ct3Var, IOException iOException, boolean z) {
        eo0 eo0Var = this.f31483w;
        if (eo0Var != null) {
            if (this.f31477q.f29096l) {
                eo0Var.mo4114c("onLoadException", iOException);
            } else {
                eo0Var.mo4113d("onLoadError", iOException);
            }
        }
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: s */
    public final void mo6689s(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
        if (interfaceC6087o8 instanceof InterfaceC5915jm) {
            synchronized (this.f31470C) {
                this.f31471D.add((InterfaceC5915jm) interfaceC6087o8);
            }
        } else if (interfaceC6087o8 instanceof fr0) {
            this.f31472E = (fr0) interfaceC6087o8;
            final po0 po0Var = this.f31478r.get();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && this.f31472E.m11389t()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.f31472E.m11387v()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.f31472E.m11386w()));
                C0497k2.f1630i.post(new Runnable(po0Var, hashMap) { // from class: r4.hr0

                    /* renamed from: a */
                    public final po0 f24802a;

                    /* renamed from: b */
                    public final Map f24803b;

                    {
                        this.f24802a = po0Var;
                        this.f24803b = hashMap;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        po0 po0Var2 = this.f24802a;
                        Map<String, ?> map = this.f24803b;
                        int i = sr0.f31467G;
                        po0Var2.mo5125H0("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00f4, code lost:
        if (((java.lang.Boolean) p168r4.C5592av.m12935c().m8098c(p168r4.C6225rz.f31059l1)).booleanValue() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f8, code lost:
        if (r6.f29094j == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00fa, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fd, code lost:
        if (r6.f29093i <= 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        r7 = new p168r4.jr0(r4, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0105, code lost:
        r7 = new p168r4.kr0(r4, r5, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010c, code lost:
        if (r6.f29094j == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010e, code lost:
        r6 = new p168r4.lr0(r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0115, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0116, code lost:
        r5 = r4.f31481u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0118, code lost:
        if (r5 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x011e, code lost:
        if (r5.limit() <= 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0120, code lost:
        r5 = new byte[r4.f31481u.limit()];
        r4.f31481u.get(r5);
        r6 = new p168r4.mr0(r6, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sr0(android.content.Context r5, p168r4.oo0 r6, p168r4.po0 r7) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.sr0.<init>(android.content.Context, r4.oo0, r4.po0):void");
    }

    @Override // p168r4.fo0
    /* renamed from: J */
    public final long mo5225J() {
        if (!m7028f0() || !this.f31472E.m11387v()) {
            return 0L;
        }
        return Math.min(this.f31484x, this.f31472E.m11390q());
    }

    @Override // p168r4.fo0
    /* renamed from: K */
    public final long mo5224K() {
        if (!m7028f0()) {
            synchronized (this.f31470C) {
                while (!this.f31471D.isEmpty()) {
                    long j = this.f31486z;
                    Map<String, List<String>> mo5983d = this.f31471D.remove(0).mo5983d();
                    long j2 = 0;
                    if (mo5983d != null) {
                        Iterator<Map.Entry<String, List<String>>> it = mo5983d.entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry<String, List<String>> next = it.next();
                            if (next != null) {
                                try {
                                    if (next.getKey() != null && h03.m11014e("content-length", next.getKey()) && next.getValue() != null && next.getValue().get(0) != null) {
                                        j2 = Long.parseLong(next.getValue().get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.f31486z = j + j2;
                }
            }
            return this.f31486z;
        }
        return this.f31472E.m11385x();
    }
}
