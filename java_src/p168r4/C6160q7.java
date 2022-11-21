package p168r4;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* renamed from: r4.q7 */
/* loaded from: classes2.dex */
public final class C6160q7 extends AbstractC5601b3 {

    /* renamed from: A */
    public float f29996A;

    /* renamed from: B */
    public boolean f29997B;

    /* renamed from: C */
    public List f29998C;

    /* renamed from: D */
    public boolean f29999D;

    /* renamed from: E */
    public boolean f30000E;

    /* renamed from: F */
    public C6007m3 f30001F;

    /* renamed from: G */
    public pa4 f30002G;

    /* renamed from: b */
    public final InterfaceC5790g7[] f30003b;

    /* renamed from: c */
    public final C6014ma f30004c;

    /* renamed from: d */
    public final Context f30005d;

    /* renamed from: e */
    public final C6045n4 f30006e;

    /* renamed from: f */
    public final SurfaceHolder$CallbackC6049n7 f30007f;

    /* renamed from: g */
    public final C6086o7 f30008g;

    /* renamed from: h */
    public final CopyOnWriteArraySet<InterfaceC6381w6> f30009h;

    /* renamed from: i */
    public final c41 f30010i;

    /* renamed from: j */
    public final C6377w2 f30011j;

    /* renamed from: k */
    public final C5564a3 f30012k;

    /* renamed from: l */
    public final C6419x7 f30013l;

    /* renamed from: m */
    public final C5754f8 f30014m;

    /* renamed from: n */
    public final C5791g8 f30015n;

    /* renamed from: o */
    public C5713e5 f30016o;

    /* renamed from: p */
    public C5713e5 f30017p;

    /* renamed from: q */
    public AudioTrack f30018q;

    /* renamed from: r */
    public Object f30019r;

    /* renamed from: s */
    public Surface f30020s;

    /* renamed from: t */
    public int f30021t;

    /* renamed from: u */
    public int f30022u;

    /* renamed from: v */
    public int f30023v;

    /* renamed from: w */
    public C5808gp f30024w;

    /* renamed from: x */
    public C5808gp f30025x;

    /* renamed from: y */
    public int f30026y;

    /* renamed from: z */
    public dg3 f30027z;

    /* renamed from: I */
    public static /* synthetic */ C6007m3 m8005I(C6419x7 c6419x7) {
        return m7994T(c6419x7);
    }

    /* renamed from: U */
    public static int m7993U(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    /* renamed from: V */
    public static /* synthetic */ CopyOnWriteArraySet m7992V(C6160q7 c6160q7) {
        return c6160q7.f30009h;
    }

    /* renamed from: X */
    public static /* synthetic */ C6419x7 m7990X(C6160q7 c6160q7) {
        return c6160q7.f30013l;
    }

    /* renamed from: f0 */
    public static /* synthetic */ C6007m3 m7980f0(C6160q7 c6160q7) {
        return c6160q7.f30001F;
    }

    /* renamed from: g0 */
    public static /* synthetic */ C6007m3 m7978g0(C6160q7 c6160q7, C6007m3 c6007m3) {
        c6160q7.f30001F = c6007m3;
        return c6007m3;
    }

    /* renamed from: Q */
    public final void m7997Q(boolean z, int i, int i2) {
        int i3 = 1;
        boolean z2 = z && i != -1;
        this.f30006e.m9180I(z2, (!z2 || i == 1) ? 0 : 0, i2);
    }

    /* renamed from: h */
    public final void m7977h(f61 f61Var) {
        this.f30010i.m12628H(f61Var);
    }

    /* renamed from: i */
    public final void m7975i(f61 f61Var) {
        this.f30010i.m12621O(f61Var);
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: p */
    public final int mo7967p() {
        m7996R();
        return 0;
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: q */
    public final boolean mo7966q() {
        m7996R();
        return false;
    }

    @Deprecated
    /* renamed from: w */
    public final void m7960w(boolean z) {
        this.f29999D = false;
    }

    public C6160q7(C6011m7 c6011m7) {
        C6160q7 c6160q7;
        Context context;
        c41 c41Var;
        dg3 dg3Var;
        Looper looper;
        InterfaceC5900j7 interfaceC5900j7;
        aw3 aw3Var;
        qt3 qt3Var;
        InterfaceC5825h5 interfaceC5825h5;
        kw3 kw3Var;
        C5937k7 c5937k7;
        C5786g3 c5786g3;
        InterfaceC5940ka interfaceC5940ka;
        Looper looper2;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        C6014ma c6014ma = new C6014ma(InterfaceC5940ka.f26353a);
        this.f30004c = c6014ma;
        try {
            context = c6011m7.f27513a;
            Context applicationContext = context.getApplicationContext();
            this.f30005d = applicationContext;
            c41Var = c6011m7.f27520h;
            this.f30010i = c41Var;
            dg3Var = c6011m7.f27522j;
            this.f30027z = dg3Var;
            this.f30021t = 1;
            this.f29997B = false;
            SurfaceHolder$CallbackC6049n7 surfaceHolder$CallbackC6049n7 = new SurfaceHolder$CallbackC6049n7(this, null);
            this.f30007f = surfaceHolder$CallbackC6049n7;
            C6086o7 c6086o7 = new C6086o7(null);
            this.f30008g = c6086o7;
            this.f30009h = new CopyOnWriteArraySet<>();
            looper = c6011m7.f27521i;
            Handler handler = new Handler(looper);
            interfaceC5900j7 = c6011m7.f27514b;
            InterfaceC5790g7[] mo9003a = interfaceC5900j7.mo9003a(handler, surfaceHolder$CallbackC6049n7, surfaceHolder$CallbackC6049n7, surfaceHolder$CallbackC6049n7, surfaceHolder$CallbackC6049n7);
            this.f30003b = mo9003a;
            this.f29996A = 1.0f;
            if (C5979lc.f27164a < 21) {
                AudioTrack audioTrack = this.f30018q;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.f30018q.release();
                    this.f30018q = null;
                }
                if (this.f30018q == null) {
                    this.f30018q = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.f30026y = this.f30018q.getAudioSessionId();
            } else {
                this.f30026y = C5711e3.m11870c(applicationContext);
            }
            this.f29998C = Collections.emptyList();
            this.f29999D = true;
            C6233s6 c6233s6 = new C6233s6();
            int[] iArr = new int[8];
            iArr[0] = 20;
            iArr[1] = 21;
            iArr[2] = 22;
            iArr[3] = 23;
            try {
                iArr[4] = 24;
                iArr[5] = 25;
                iArr[6] = 26;
                iArr[7] = 27;
                c6233s6.m7204c(iArr);
                C6270t6 m7202e = c6233s6.m7202e();
                aw3Var = c6011m7.f27516d;
                qt3Var = c6011m7.f27517e;
                interfaceC5825h5 = c6011m7.f27518f;
                kw3Var = c6011m7.f27519g;
                c5937k7 = c6011m7.f27523k;
                c5786g3 = c6011m7.f27525m;
                interfaceC5940ka = c6011m7.f27515c;
                looper2 = c6011m7.f27521i;
                C6045n4 c6045n4 = new C6045n4(mo9003a, aw3Var, qt3Var, interfaceC5825h5, kw3Var, c41Var, true, c5937k7, 5000L, 15000L, c5786g3, 500L, false, interfaceC5940ka, looper2, this, m7202e, null);
                c6160q7 = this;
                try {
                    c6160q7.f30006e = c6045n4;
                    c6045n4.m9185B(surfaceHolder$CallbackC6049n7);
                    c6045n4.m9184C(surfaceHolder$CallbackC6049n7);
                    context2 = c6011m7.f27513a;
                    c6160q7.f30011j = new C6377w2(context2, handler, surfaceHolder$CallbackC6049n7);
                    context3 = c6011m7.f27513a;
                    c6160q7.f30012k = new C5564a3(context3, handler, surfaceHolder$CallbackC6049n7);
                    C5979lc.m9729H(null, null);
                    context4 = c6011m7.f27513a;
                    C6419x7 c6419x7 = new C6419x7(context4, handler, surfaceHolder$CallbackC6049n7);
                    c6160q7.f30013l = c6419x7;
                    int i = c6160q7.f30027z.f22253a;
                    c6419x7.m5459b(3);
                    context5 = c6011m7.f27513a;
                    c6160q7.f30014m = new C5754f8(context5);
                    context6 = c6011m7.f27513a;
                    c6160q7.f30015n = new C5791g8(context6);
                    c6160q7.f30001F = m7994T(c6419x7);
                    c6160q7.f30002G = pa4.f29409e;
                    c6160q7.m7995S(1, 10, Integer.valueOf(c6160q7.f30026y));
                    c6160q7.m7995S(2, 10, Integer.valueOf(c6160q7.f30026y));
                    c6160q7.m7995S(1, 3, c6160q7.f30027z);
                    c6160q7.m7995S(2, 4, Integer.valueOf(c6160q7.f30021t));
                    c6160q7.m7995S(2, 5, 0);
                    c6160q7.m7995S(1, 9, Boolean.valueOf(c6160q7.f29997B));
                    c6160q7.m7995S(2, 7, c6086o7);
                    c6160q7.m7995S(6, 8, c6086o7);
                    c6014ma.m9444a();
                } catch (Throwable th) {
                    th = th;
                    c6160q7.f30004c.m9444a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                c6160q7 = this;
            }
        } catch (Throwable th3) {
            th = th3;
            c6160q7 = this;
        }
    }

    /* renamed from: D */
    public static /* synthetic */ void m8010D(C6160q7 c6160q7) {
        c6160q7.f30010i.mo5641p(c6160q7.f29997B);
        Iterator<InterfaceC6381w6> it = c6160q7.f30009h.iterator();
        while (it.hasNext()) {
            it.next().mo5641p(c6160q7.f29997B);
        }
    }

    /* renamed from: T */
    public static C6007m3 m7994T(C6419x7 c6419x7) {
        return new C6007m3(0, c6419x7.m5458c(), c6419x7.m5457d());
    }

    /* renamed from: x */
    public static /* synthetic */ void m7959x(C6160q7 c6160q7, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        c6160q7.m8003K(surface);
        c6160q7.f30020s = surface;
    }

    /* renamed from: K */
    public final void m8003K(Object obj) {
        boolean z;
        ArrayList<C5678d7> arrayList = new ArrayList();
        InterfaceC5790g7[] interfaceC5790g7Arr = this.f30003b;
        int length = interfaceC5790g7Arr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= 2) {
                break;
            }
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i];
            if (interfaceC5790g7.mo10965G() == 2) {
                C5678d7 m9176N = this.f30006e.m9176N(interfaceC5790g7);
                m9176N.m12218b(1);
                m9176N.m12216d(obj);
                m9176N.m12213g();
                arrayList.add(m9176N);
            }
            i++;
        }
        Object obj2 = this.f30019r;
        if (obj2 != null && obj2 != obj) {
            try {
                for (C5678d7 c5678d7 : arrayList) {
                    c5678d7.m12210j(2000L);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.f30019r;
            Surface surface = this.f30020s;
            if (obj3 == surface) {
                surface.release();
                this.f30020s = null;
            }
        } else {
            z = false;
        }
        this.f30019r = obj;
        if (z) {
            this.f30006e.m9178K(false, C6082o3.m8908c(new C5566a5(3), 1003));
        }
    }

    /* renamed from: M */
    public final void m8001M(int i, int i2) {
        if (i != this.f30022u || i2 != this.f30023v) {
            this.f30022u = i;
            this.f30023v = i2;
            this.f30010i.mo5830r(i, i2);
            Iterator<InterfaceC6381w6> it = this.f30009h.iterator();
            while (it.hasNext()) {
                it.next().mo5830r(i, i2);
            }
        }
    }

    /* renamed from: N */
    public final void m8000N() {
        m7995S(1, 2, Float.valueOf(this.f29996A * this.f30012k.m13056a()));
    }

    /* renamed from: R */
    public final void m7996R() {
        IllegalStateException illegalStateException;
        this.f30004c.m9441d();
        if (Thread.currentThread() != this.f30006e.m9186A().getThread()) {
            String m9709a0 = C5979lc.m9709a0("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.f30006e.m9186A().getThread().getName());
            if (!this.f29999D) {
                if (this.f30000E) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                C5720eb.m11833a("SimpleExoPlayer", m9709a0, illegalStateException);
                this.f30000E = true;
                return;
            }
            throw new IllegalStateException(m9709a0);
        }
    }

    /* renamed from: S */
    public final void m7995S(int i, int i2, Object obj) {
        InterfaceC5790g7[] interfaceC5790g7Arr = this.f30003b;
        int length = interfaceC5790g7Arr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            InterfaceC5790g7 interfaceC5790g7 = interfaceC5790g7Arr[i3];
            if (interfaceC5790g7.mo10965G() == i) {
                C5678d7 m9176N = this.f30006e.m9176N(interfaceC5790g7);
                m9176N.m12218b(i2);
                m9176N.m12216d(obj);
                m9176N.m12213g();
            }
        }
    }

    /* renamed from: H */
    public static /* synthetic */ void m8006H(C6160q7 c6160q7) {
        int m7973j = c6160q7.m7973j();
        if (m7973j != 2 && m7973j != 3) {
            return;
        }
        c6160q7.m7996R();
        c6160q7.f30006e.m9160x();
        c6160q7.m7969n();
        c6160q7.m7969n();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: E */
    public final int mo8009E() {
        m7996R();
        return this.f30006e.mo8009E();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: G */
    public final AbstractC5717e8 mo8007G() {
        m7996R();
        return this.f30006e.mo8007G();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: L */
    public final long mo8002L() {
        m7996R();
        return this.f30006e.mo8002L();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: O */
    public final long mo7999O() {
        m7996R();
        return this.f30006e.mo7999O();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: P */
    public final int mo7998P() {
        m7996R();
        return this.f30006e.mo7998P();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: a */
    public final void mo7987a(int i, long j) {
        m7996R();
        this.f30010i.m12617S();
        this.f30006e.mo7987a(i, j);
    }

    @Override // p168r4.InterfaceC5568a7
    @Deprecated
    /* renamed from: b */
    public final void mo7985b(boolean z) {
        m7996R();
        this.f30012k.m13055b(m7969n(), 1);
        this.f30006e.m9178K(false, null);
        this.f29998C = Collections.emptyList();
    }

    /* renamed from: g */
    public final void m7979g(float f) {
        m7996R();
        float m9701e0 = C5979lc.m9701e0(f, 0.0f, 1.0f);
        if (this.f29996A == m9701e0) {
            return;
        }
        this.f29996A = m9701e0;
        m8000N();
        this.f30010i.mo5827u(m9701e0);
        Iterator<InterfaceC6381w6> it = this.f30009h.iterator();
        while (it.hasNext()) {
            it.next().mo5827u(m9701e0);
        }
    }

    /* renamed from: i0 */
    public final void m7974i0(Surface surface) {
        int i;
        m7996R();
        m8003K(surface);
        if (surface == null) {
            i = 0;
        } else {
            i = -1;
        }
        m8001M(i, i);
    }

    /* renamed from: j */
    public final int m7973j() {
        m7996R();
        return this.f30006e.m9183D();
    }

    /* renamed from: k */
    public final void m7972k() {
        m7996R();
        boolean m7969n = m7969n();
        int m13055b = this.f30012k.m13055b(m7969n, 2);
        m7997Q(m7969n, m13055b, m7993U(m7969n, m13055b));
        this.f30006e.m9182F();
    }

    /* renamed from: l */
    public final void m7971l(ht3 ht3Var) {
        m7996R();
        this.f30006e.m9181H(Collections.singletonList(ht3Var), true);
    }

    /* renamed from: m */
    public final void m7970m(boolean z) {
        m7996R();
        int m13055b = this.f30012k.m13055b(z, m7973j());
        m7997Q(z, m13055b, m7993U(z, m13055b));
    }

    /* renamed from: n */
    public final boolean m7969n() {
        m7996R();
        return this.f30006e.m9179J();
    }

    /* renamed from: o */
    public final void m7968o() {
        AudioTrack audioTrack;
        m7996R();
        if (C5979lc.f27164a < 21 && (audioTrack = this.f30018q) != null) {
            audioTrack.release();
            this.f30018q = null;
        }
        this.f30013l.m5456e();
        this.f30012k.m13054c();
        this.f30006e.m9177M();
        this.f30010i.m12619Q();
        Surface surface = this.f30020s;
        if (surface != null) {
            surface.release();
            this.f30020s = null;
        }
        this.f29998C = Collections.emptyList();
    }

    /* renamed from: r */
    public final int m7965r() {
        m7996R();
        this.f30006e.m9173g();
        return 2;
    }

    /* renamed from: s */
    public final long m7964s() {
        m7996R();
        return this.f30006e.m9175Q();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: t */
    public final int mo7963t() {
        m7996R();
        return this.f30006e.mo7963t();
    }

    /* renamed from: u */
    public final long m7962u() {
        m7996R();
        return this.f30006e.m9174R();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: v */
    public final long mo7961v() {
        m7996R();
        return this.f30006e.mo7961v();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: y */
    public final int mo7958y() {
        m7996R();
        return this.f30006e.mo7958y();
    }

    @Override // p168r4.InterfaceC5568a7
    /* renamed from: z */
    public final boolean mo7957z() {
        m7996R();
        return this.f30006e.mo7957z();
    }
}
