package p168r4;

import android.content.Context;
import android.net.Uri;
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
/* renamed from: r4.xp0 */
/* loaded from: classes2.dex */
public final class xp0 extends fo0 implements InterfaceC6321uk, InterfaceC6208ri, InterfaceC5842hm, InterfaceC5797ge, InterfaceC6313uc {

    /* renamed from: H */
    public static final /* synthetic */ int f33650H = 0;

    /* renamed from: A */
    public long f33651A;

    /* renamed from: B */
    public final String f33652B;

    /* renamed from: C */
    public final int f33653C;

    /* renamed from: E */
    public final ArrayList<InterfaceC6099ok> f33655E;

    /* renamed from: F */
    public volatile lp0 f33656F;

    /* renamed from: d */
    public final Context f33658d;

    /* renamed from: k */
    public final mp0 f33659k;

    /* renamed from: p */
    public final InterfaceC6055nd f33660p;

    /* renamed from: q */
    public final InterfaceC6055nd f33661q;

    /* renamed from: r */
    public final AbstractC6394wj f33662r;

    /* renamed from: s */
    public final oo0 f33663s;

    /* renamed from: t */
    public InterfaceC6461yc f33664t;

    /* renamed from: u */
    public ByteBuffer f33665u;

    /* renamed from: v */
    public boolean f33666v;

    /* renamed from: w */
    public final WeakReference<po0> f33667w;

    /* renamed from: x */
    public eo0 f33668x;

    /* renamed from: y */
    public int f33669y;

    /* renamed from: z */
    public int f33670z;

    /* renamed from: D */
    public final Object f33654D = new Object();

    /* renamed from: G */
    public final Set<WeakReference<ip0>> f33657G = new HashSet();

    @Override // p168r4.fo0
    /* renamed from: A */
    public final boolean mo5234A() {
        return this.f33664t != null;
    }

    @Override // p168r4.fo0
    /* renamed from: B */
    public final int mo5233B() {
        return this.f33664t.mo4779b();
    }

    @Override // p168r4.fo0
    /* renamed from: C */
    public final long mo5232C() {
        return this.f33664t.mo4769l();
    }

    @Override // p168r4.fo0
    /* renamed from: D */
    public final boolean mo5231D() {
        return this.f33664t.mo4777d();
    }

    @Override // p168r4.fo0
    /* renamed from: E */
    public final void mo5230E(boolean z) {
        this.f33664t.mo4778c(z);
    }

    @Override // p168r4.fo0
    /* renamed from: F */
    public final void mo5229F(int i) {
        this.f33659k.m9295g(i);
    }

    @Override // p168r4.fo0
    /* renamed from: G */
    public final void mo5228G(int i) {
        this.f33659k.m9294h(i);
    }

    @Override // p168r4.fo0
    /* renamed from: H */
    public final long mo5227H() {
        return this.f33664t.mo4770k();
    }

    @Override // p168r4.fo0
    /* renamed from: I */
    public final long mo5226I() {
        if (m5196j0()) {
            return 0L;
        }
        return this.f33669y;
    }

    @Override // p168r4.fo0
    /* renamed from: L */
    public final int mo5223L() {
        return this.f33670z;
    }

    @Override // p168r4.fo0
    /* renamed from: M */
    public final void mo5222M(boolean z) {
        if (this.f33664t != null) {
            for (int i = 0; i < 2; i++) {
                this.f33662r.m5708f(i, !z);
            }
        }
    }

    @Override // p168r4.fo0
    /* renamed from: N */
    public final long mo5221N() {
        return this.f33664t.mo4765p();
    }

    @Override // p168r4.fo0
    /* renamed from: O */
    public final long mo5220O() {
        return this.f33669y;
    }

    @Override // p168r4.fo0
    /* renamed from: R */
    public final void mo5219R(Uri[] uriArr, String str) {
        mo5218S(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // p168r4.fo0
    /* renamed from: T */
    public final void mo5217T(eo0 eo0Var) {
        this.f33668x = eo0Var;
    }

    @Override // p168r4.fo0
    /* renamed from: X */
    public final void mo5213X() {
        this.f33664t.mo4775f();
    }

    @Override // p168r4.fo0
    /* renamed from: Y */
    public final void mo5212Y(long j) {
        this.f33664t.mo4768m(j);
    }

    @Override // p168r4.fo0
    /* renamed from: Z */
    public final void mo5211Z(int i) {
        this.f33659k.m9293i(i);
    }

    @Override // p168r4.fo0
    /* renamed from: a0 */
    public final void mo5210a0(int i) {
        this.f33659k.m9292j(i);
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: d */
    public final void mo5206d() {
    }

    /* renamed from: d0 */
    public final void m5205d0(InterfaceC5766fk interfaceC5766fk, int i) {
        this.f33669y += i;
    }

    /* renamed from: f0 */
    public final /* synthetic */ InterfaceC5766fk m5202f0(InterfaceC5729ek interfaceC5729ek) {
        return new lp0(this.f33658d, interfaceC5729ek.zza(), this.f33652B, this.f33653C, this, new kp0(this) { // from class: r4.wp0

            /* renamed from: a */
            public final xp0 f33272a;

            {
                this.f33272a = this;
            }

            @Override // p168r4.kp0
            /* renamed from: a */
            public final void mo5634a(boolean z, long j) {
                this.f33272a.m5200g0(z, j);
            }
        });
    }

    @Override // p168r4.InterfaceC5842hm
    /* renamed from: g */
    public final void mo5201g(Surface surface) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            eo0Var.mo4100y();
        }
    }

    /* renamed from: g0 */
    public final /* synthetic */ void m5200g0(boolean z, long j) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            eo0Var.mo4116a(z, j);
        }
    }

    /* renamed from: h0 */
    public final /* synthetic */ InterfaceC5766fk m5199h0(String str, boolean z) {
        xp0 xp0Var;
        if (true != z) {
            xp0Var = null;
        } else {
            xp0Var = this;
        }
        oo0 oo0Var = this.f33663s;
        return new C5950kk(str, null, xp0Var, oo0Var.f29088d, oo0Var.f29090f, true, null);
    }

    /* renamed from: i0 */
    public final /* synthetic */ InterfaceC5766fk m5198i0(String str, boolean z) {
        xp0 xp0Var;
        if (true != z) {
            xp0Var = null;
        } else {
            xp0Var = this;
        }
        oo0 oo0Var = this.f33663s;
        ip0 ip0Var = new ip0(str, xp0Var, oo0Var.f29088d, oo0Var.f29090f, oo0Var.f29093i);
        this.f33657G.add(new WeakReference<>(ip0Var));
        return ip0Var;
    }

    @Override // p168r4.InterfaceC5842hm
    /* renamed from: j */
    public final void mo5197j(int i, int i2, int i3, float f) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            eo0Var.mo4115b(i, i2);
        }
    }

    /* renamed from: j0 */
    public final boolean m5196j0() {
        return this.f33656F != null && this.f33656F.m9596g();
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: m */
    public final void mo5194m(C6276tc c6276tc) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            eo0Var.mo4113d("onPlayerError", c6276tc);
        }
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: o0 */
    public final void mo5192o0(boolean z) {
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: r */
    public final void mo5191r(C6023mj c6023mj, C6468yj c6468yj) {
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: t */
    public final void mo5190t(boolean z, int i) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            eo0Var.mo4101x(i);
        }
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: v */
    public final void mo5189v(AbstractC6277td abstractC6277td, Object obj) {
    }

    @Override // p168r4.InterfaceC6321uk
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ void mo5188w(Object obj, int i) {
        this.f33669y += i;
    }

    @Override // p168r4.InterfaceC5842hm
    /* renamed from: x */
    public final void mo5187x(int i, long j) {
        this.f33670z += i;
    }

    @Override // p168r4.InterfaceC6313uc
    /* renamed from: z */
    public final void mo5186z(C6017md c6017md) {
    }

    @Override // p168r4.fo0
    /* renamed from: S */
    public final void mo5218S(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        InterfaceC6393wi c5580aj;
        if (this.f33664t == null) {
            return;
        }
        this.f33665u = byteBuffer;
        this.f33666v = z;
        int length = uriArr.length;
        if (length == 1) {
            c5580aj = m5203e0(uriArr[0], str);
        } else {
            InterfaceC6393wi[] interfaceC6393wiArr = new InterfaceC6393wi[length];
            for (int i = 0; i < uriArr.length; i++) {
                interfaceC6393wiArr[i] = m5203e0(uriArr[i], str);
            }
            c5580aj = new C5580aj(interfaceC6393wiArr);
        }
        this.f33664t.mo4767n(c5580aj);
        fo0.f23582b.incrementAndGet();
    }

    @Override // p168r4.fo0
    /* renamed from: U */
    public final void mo5216U() {
        InterfaceC6461yc interfaceC6461yc = this.f33664t;
        if (interfaceC6461yc != null) {
            interfaceC6461yc.mo4772i(this);
            this.f33664t.mo4771j();
            this.f33664t = null;
            fo0.f23582b.decrementAndGet();
        }
    }

    @Override // p168r4.fo0
    /* renamed from: V */
    public final void mo5215V(Surface surface, boolean z) {
        if (this.f33664t == null) {
            return;
        }
        C6424xc c6424xc = new C6424xc(this.f33660p, 1, surface);
        if (z) {
            this.f33664t.mo4773h(c6424xc);
        } else {
            this.f33664t.mo4766o(c6424xc);
        }
    }

    @Override // p168r4.fo0
    /* renamed from: W */
    public final void mo5214W(float f, boolean z) {
        if (this.f33664t == null) {
            return;
        }
        C6424xc c6424xc = new C6424xc(this.f33661q, 2, Float.valueOf(f));
        if (z) {
            this.f33664t.mo4773h(c6424xc);
        } else {
            this.f33664t.mo4766o(c6424xc);
        }
    }

    @Override // p168r4.fo0
    /* renamed from: b0 */
    public final void mo5209b0(int i) {
        for (WeakReference<ip0> weakReference : this.f33657G) {
            ip0 ip0Var = weakReference.get();
            if (ip0Var != null) {
                ip0Var.m10576g(i);
            }
        }
    }

    @Override // p168r4.InterfaceC6208ri
    /* renamed from: c */
    public final void mo5208c(IOException iOException) {
        eo0 eo0Var = this.f33668x;
        if (eo0Var != null) {
            if (this.f33663s.f29096l) {
                eo0Var.mo4114c("onLoadException", iOException);
            } else {
                eo0Var.mo4113d("onLoadError", iOException);
            }
        }
    }

    @Override // p168r4.InterfaceC6321uk
    /* renamed from: c0 */
    public final void mo5195l(InterfaceC5766fk interfaceC5766fk, C5877ik c5877ik) {
        if (interfaceC5766fk instanceof InterfaceC6099ok) {
            synchronized (this.f33654D) {
                this.f33655E.add((InterfaceC6099ok) interfaceC5766fk);
            }
        } else if (interfaceC5766fk instanceof lp0) {
            this.f33656F = (lp0) interfaceC5766fk;
            final po0 po0Var = this.f33667w.get();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && this.f33656F.m9597f()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.f33656F.m9595h()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.f33656F.m9594i()));
                C0497k2.f1630i.post(new Runnable(po0Var, hashMap) { // from class: r4.np0

                    /* renamed from: a */
                    public final po0 f28441a;

                    /* renamed from: b */
                    public final Map f28442b;

                    {
                        this.f28441a = po0Var;
                        this.f28442b = hashMap;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        po0 po0Var2 = this.f28441a;
                        Map<String, ?> map = this.f28442b;
                        int i = xp0.f33650H;
                        po0Var2.mo5125H0("onGcacheInfoEvent", map);
                    }
                });
            }
        }
    }

    @Override // p168r4.InterfaceC5797ge
    /* renamed from: e */
    public final void mo5204e(C5870id c5870id) {
        po0 po0Var = this.f33667w.get();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && c5870id != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("audioMime", c5870id.f25059p);
            hashMap.put("audioSampleMime", c5870id.f25060q);
            hashMap.put("audioCodec", c5870id.f25057d);
            po0Var.mo5125H0("onMetadataEvent", hashMap);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
        if (((java.lang.Boolean) p168r4.C5592av.m12935c().m8098c(p168r4.C6225rz.f31059l1)).booleanValue() == false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p168r4.InterfaceC6393wi m5203e0(android.net.Uri r11, final java.lang.String r12) {
        /*
            r10 = this;
            r4.si r9 = new r4.si
            boolean r0 = r10.f33666v
            if (r0 == 0) goto L22
            java.nio.ByteBuffer r0 = r10.f33665u
            int r0 = r0.limit()
            if (r0 <= 0) goto L22
            java.nio.ByteBuffer r12 = r10.f33665u
            int r12 = r12.limit()
            byte[] r12 = new byte[r12]
            java.nio.ByteBuffer r0 = r10.f33665u
            r0.get(r12)
            r4.pp0 r0 = new r4.pp0
            r0.<init>(r12)
        L20:
            r2 = r0
            goto L89
        L22:
            r4.jz<java.lang.Boolean> r0 = p168r4.C6225rz.f31099q1
            r4.pz r1 = p168r4.C5592av.m12935c()
            java.lang.Object r0 = r1.m8098c(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 1
            if (r0 == 0) goto L47
            r4.jz<java.lang.Boolean> r0 = p168r4.C6225rz.f31059l1
            r4.pz r2 = p168r4.C5592av.m12935c()
            java.lang.Object r0 = r2.m8098c(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L4f
        L47:
            r4.oo0 r0 = r10.f33663s
            boolean r0 = r0.f29094j
            if (r0 != 0) goto L4e
            goto L4f
        L4e:
            r1 = 0
        L4f:
            r4.oo0 r0 = r10.f33663s
            int r0 = r0.f29093i
            if (r0 <= 0) goto L5b
            r4.qp0 r0 = new r4.qp0
            r0.<init>(r10, r12, r1)
            goto L60
        L5b:
            r4.rp0 r0 = new r4.rp0
            r0.<init>(r10, r12, r1)
        L60:
            r4.oo0 r12 = r10.f33663s
            boolean r12 = r12.f29094j
            if (r12 == 0) goto L6c
            r4.sp0 r12 = new r4.sp0
            r12.<init>(r10, r0)
            r0 = r12
        L6c:
            java.nio.ByteBuffer r12 = r10.f33665u
            if (r12 == 0) goto L20
            int r12 = r12.limit()
            if (r12 <= 0) goto L20
            java.nio.ByteBuffer r12 = r10.f33665u
            int r12 = r12.limit()
            byte[] r12 = new byte[r12]
            java.nio.ByteBuffer r1 = r10.f33665u
            r1.get(r12)
            r4.tp0 r1 = new r4.tp0
            r1.<init>(r0, r12)
            r2 = r1
        L89:
            r4.jz<java.lang.Boolean> r12 = p168r4.C6225rz.f31065m
            r4.pz r0 = p168r4.C5592av.m12935c()
            java.lang.Object r12 = r0.m8098c(r12)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L9e
            r4.rf r12 = p168r4.up0.f32350a
            goto La0
        L9e:
            r4.rf r12 = p168r4.vp0.f32772a
        La0:
            r3 = r12
            r4.oo0 r12 = r10.f33663s
            int r4 = r12.f29095k
            r4.c03 r5 = p016b3.C0497k2.f1630i
            r7 = 0
            int r8 = r12.f29091g
            r0 = r9
            r1 = r11
            r6 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.xp0.m5203e0(android.net.Uri, java.lang.String):r4.wi");
    }

    public final void finalize() {
        fo0.f23581a.decrementAndGet();
        if (C0543w1.m26249m()) {
            C0543w1.m26251k("ForkedExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // p168r4.InterfaceC5842hm
    /* renamed from: o */
    public final void mo5193o(C5870id c5870id) {
        po0 po0Var = this.f33667w.get();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && po0Var != null && c5870id != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(c5870id.f25066w));
            hashMap.put("bitRate", String.valueOf(c5870id.f25056b));
            int i = c5870id.f25064u;
            int i2 = c5870id.f25065v;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            hashMap.put("resolution", sb.toString());
            hashMap.put("videoMime", c5870id.f25059p);
            hashMap.put("videoSampleMime", c5870id.f25060q);
            hashMap.put("videoCodec", c5870id.f25057d);
            po0Var.mo5125H0("onMetadataEvent", hashMap);
        }
    }

    public xp0(Context context, oo0 oo0Var, po0 po0Var) {
        String str;
        this.f33658d = context;
        this.f33663s = oo0Var;
        this.f33667w = new WeakReference<>(po0Var);
        mp0 mp0Var = new mp0();
        this.f33659k = mp0Var;
        InterfaceC6096oh interfaceC6096oh = InterfaceC6096oh.f28995a;
        c03 c03Var = C0497k2.f1630i;
        C6396wl c6396wl = new C6396wl(context, interfaceC6096oh, 0L, c03Var, this, -1);
        this.f33660p = c6396wl;
        C6426xe c6426xe = new C6426xe(interfaceC6096oh, null, true, c03Var, this);
        this.f33661q = c6426xe;
        C6246sj c6246sj = new C6246sj(null);
        this.f33662r = c6246sj;
        if (C0543w1.m26249m()) {
            C0543w1.m26251k("ForkedExoPlayerAdapter initialize ".concat(toString()));
        }
        fo0.f23581a.incrementAndGet();
        InterfaceC6461yc m4330a = C6498zc.m4330a(new InterfaceC6055nd[]{c6426xe, c6396wl}, c6246sj, mp0Var);
        this.f33664t = m4330a;
        m4330a.mo4776e(this);
        this.f33669y = 0;
        this.f33651A = 0L;
        this.f33670z = 0;
        this.f33655E = new ArrayList<>();
        this.f33656F = null;
        if (po0Var != null && po0Var.mo5055p() != null) {
            str = po0Var.mo5055p();
        } else {
            str = "";
        }
        this.f33652B = str;
        this.f33653C = po0Var != null ? po0Var.mo5058o() : 0;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31073n)).booleanValue()) {
            this.f33664t.mo4764q();
        }
        if (po0Var != null && po0Var.mo5119L() > 0) {
            this.f33664t.mo4780a(po0Var.mo5119L());
        }
        if (po0Var != null && po0Var.mo5116N() > 0) {
            this.f33664t.mo4774g(po0Var.mo5116N());
        }
    }

    @Override // p168r4.fo0
    /* renamed from: J */
    public final long mo5225J() {
        if (!m5196j0() || !this.f33656F.m9595h()) {
            return 0L;
        }
        return Math.min(this.f33669y, this.f33656F.m9593j());
    }

    @Override // p168r4.fo0
    /* renamed from: K */
    public final long mo5224K() {
        if (!m5196j0()) {
            synchronized (this.f33654D) {
                while (!this.f33655E.isEmpty()) {
                    long j = this.f33651A;
                    Map<String, List<String>> mo8788c = this.f33655E.remove(0).mo8788c();
                    long j2 = 0;
                    if (mo8788c != null) {
                        Iterator<Map.Entry<String, List<String>>> it = mo8788c.entrySet().iterator();
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
                    this.f33651A = j + j2;
                }
            }
            return this.f33651A;
        }
        return this.f33656F.m9592k();
    }
}
