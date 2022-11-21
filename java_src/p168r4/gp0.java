package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p235z2.C7601t;
@TargetApi(16)
/* renamed from: r4.gp0 */
/* loaded from: classes2.dex */
public final class gp0 extends vn0 implements TextureView.SurfaceTextureListener, eo0 {

    /* renamed from: A */
    public boolean f24170A;

    /* renamed from: B */
    public boolean f24171B;

    /* renamed from: C */
    public int f24172C;

    /* renamed from: D */
    public int f24173D;

    /* renamed from: E */
    public int f24174E;

    /* renamed from: F */
    public int f24175F;

    /* renamed from: G */
    public float f24176G;

    /* renamed from: d */
    public final po0 f24177d;

    /* renamed from: k */
    public final qo0 f24178k;

    /* renamed from: p */
    public final boolean f24179p;

    /* renamed from: q */
    public final oo0 f24180q;

    /* renamed from: r */
    public un0 f24181r;

    /* renamed from: s */
    public Surface f24182s;

    /* renamed from: t */
    public fo0 f24183t;

    /* renamed from: u */
    public String f24184u;

    /* renamed from: v */
    public String[] f24185v;

    /* renamed from: w */
    public boolean f24186w;

    /* renamed from: x */
    public int f24187x;

    /* renamed from: y */
    public mo0 f24188y;

    /* renamed from: z */
    public final boolean f24189z;

    /* renamed from: Y */
    public static String m11070Y(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    @Override // p168r4.vn0
    /* renamed from: A */
    public final void mo6082A(int i) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5229F(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: B */
    public final void mo6081B(int i) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5228G(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: C */
    public final void mo6080C(int i) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5211Z(i);
        }
    }

    /* renamed from: F */
    public final /* synthetic */ void m11089F() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6474i();
        }
    }

    /* renamed from: G */
    public final /* synthetic */ void m11088G(String str) {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6476g("ExoPlayerAdapter exception", str);
        }
    }

    /* renamed from: H */
    public final /* synthetic */ void m11087H(boolean z, long j) {
        this.f24177d.mo5085e1(z, j);
    }

    /* renamed from: I */
    public final /* synthetic */ void m11086I(int i) {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: J */
    public final /* synthetic */ void m11085J() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6477f();
        }
    }

    /* renamed from: K */
    public final /* synthetic */ void m11084K(int i, int i2) {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6479d(i, i2);
        }
    }

    /* renamed from: L */
    public final /* synthetic */ void m11083L() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.zza();
        }
    }

    /* renamed from: M */
    public final /* synthetic */ void m11082M() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6478e();
        }
    }

    /* renamed from: N */
    public final /* synthetic */ void m11081N() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6481b();
        }
    }

    /* renamed from: O */
    public final /* synthetic */ void m11080O(String str) {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6475h("ExoPlayerAdapter error", str);
        }
    }

    /* renamed from: P */
    public final /* synthetic */ void m11079P() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6480c();
        }
    }

    /* renamed from: Q */
    public final /* synthetic */ void m11078Q() {
        un0 un0Var = this.f24181r;
        if (un0Var != null) {
            un0Var.mo6482a();
        }
    }

    /* renamed from: R */
    public final boolean m11077R() {
        fo0 fo0Var = this.f24183t;
        return (fo0Var == null || !fo0Var.mo5234A() || this.f24186w) ? false : true;
    }

    /* renamed from: S */
    public final boolean m11076S() {
        return m11077R() && this.f24187x != 1;
    }

    /* renamed from: Z */
    public final void m11069Z() {
        m11068a0(this.f24172C, this.f24173D);
    }

    @Override // p168r4.eo0
    /* renamed from: a */
    public final void mo4116a(final boolean z, final long j) {
        if (this.f24177d != null) {
            qm0.f30194e.execute(new Runnable(this, z, j) { // from class: r4.fp0

                /* renamed from: a */
                public final gp0 f23606a;

                /* renamed from: b */
                public final boolean f23607b;

                /* renamed from: d */
                public final long f23608d;

                {
                    this.f23606a = this;
                    this.f23607b = z;
                    this.f23608d = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23606a.m11087H(this.f23607b, this.f23608d);
                }
            });
        }
    }

    /* renamed from: a0 */
    public final void m11068a0(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f24176G != f) {
            this.f24176G = f;
            requestLayout();
        }
    }

    @Override // p168r4.eo0
    /* renamed from: b */
    public final void mo4115b(int i, int i2) {
        this.f24172C = i;
        this.f24173D = i2;
        m11069Z();
    }

    /* renamed from: b0 */
    public final void m11067b0() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5222M(true);
        }
    }

    /* renamed from: c0 */
    public final void m11066c0() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5222M(false);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: e */
    public final void mo6079e(int i) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5210a0(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: f */
    public final void mo6078f(int i) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            fo0Var.mo5209b0(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: g */
    public final String mo6077g() {
        String str = true != this.f24189z ? "" : " spherical";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // p168r4.vn0
    /* renamed from: h */
    public final void mo6076h(un0 un0Var) {
        this.f24181r = un0Var;
    }

    @Override // p168r4.vn0
    /* renamed from: i */
    public final void mo6075i(String str) {
        if (str != null) {
            mo6060z(str, null);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: m */
    public final int mo6071m() {
        if (m11076S()) {
            return (int) this.f24183t.mo5227H();
        }
        return 0;
    }

    @Override // p168r4.vn0, p168r4.so0
    /* renamed from: n */
    public final void mo6070n() {
        m11072W(this.f32765b.m6772c(), false);
    }

    @Override // p168r4.vn0
    /* renamed from: o */
    public final int mo6069o() {
        if (m11076S()) {
            return (int) this.f24183t.mo5232C();
        }
        return 0;
    }

    @Override // p168r4.vn0
    /* renamed from: p */
    public final void mo6068p(int i) {
        if (m11076S()) {
            this.f24183t.mo5212Y(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: q */
    public final void mo6067q(float f, float f2) {
        mo0 mo0Var = this.f24188y;
        if (mo0Var != null) {
            mo0Var.m9315e(f, f2);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: r */
    public final int mo6066r() {
        return this.f24172C;
    }

    @Override // p168r4.vn0
    /* renamed from: s */
    public final int mo6065s() {
        return this.f24173D;
    }

    @Override // p168r4.vn0
    /* renamed from: t */
    public final long mo6064t() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            return fo0Var.mo5226I();
        }
        return -1L;
    }

    @Override // p168r4.vn0
    /* renamed from: u */
    public final long mo6063u() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            return fo0Var.mo5225J();
        }
        return -1L;
    }

    @Override // p168r4.vn0
    /* renamed from: v */
    public final long mo6062v() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            return fo0Var.mo5224K();
        }
        return -1L;
    }

    @Override // p168r4.vn0
    /* renamed from: w */
    public final int mo6061w() {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            return fo0Var.mo5223L();
        }
        return -1;
    }

    @Override // p168r4.eo0
    /* renamed from: y */
    public final void mo4100y() {
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.wo0

            /* renamed from: a */
            public final gp0 f33270a;

            {
                this.f33270a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33270a.m11089F();
            }
        });
    }

    /* renamed from: D */
    public final fo0 m11091D() {
        if (this.f24180q.f29097m) {
            return new sr0(this.f24177d.getContext(), this.f24180q, this.f24177d);
        }
        return new xp0(this.f24177d.getContext(), this.f24180q, this.f24177d);
    }

    /* renamed from: T */
    public final void m11075T(boolean z) {
        String str;
        if ((this.f24183t == null || z) && this.f24184u != null && this.f24182s != null) {
            if (z) {
                if (m11077R()) {
                    this.f24183t.mo5213X();
                    m11074U();
                } else {
                    cm0.m12437f("No valid ExoPlayerAdapter exists when switch source.");
                    return;
                }
            }
            if (this.f24184u.startsWith("cache:")) {
                qq0 mo5090c0 = this.f24177d.mo5090c0(this.f24184u);
                if (mo5090c0 instanceof zq0) {
                    fo0 m4104t = ((zq0) mo5090c0).m4104t();
                    this.f24183t = m4104t;
                    if (!m4104t.mo5234A()) {
                        cm0.m12437f("Precached video player has been released.");
                        return;
                    }
                } else if (mo5090c0 instanceof wq0) {
                    wq0 wq0Var = (wq0) mo5090c0;
                    String m11090E = m11090E();
                    ByteBuffer m5614v = wq0Var.m5614v();
                    boolean m5615u = wq0Var.m5615u();
                    String m5616t = wq0Var.m5616t();
                    if (m5616t == null) {
                        cm0.m12437f("Stream cache URL is null.");
                        return;
                    }
                    fo0 m11091D = m11091D();
                    this.f24183t = m11091D;
                    m11091D.mo5218S(new Uri[]{Uri.parse(m5616t)}, m11090E, m5614v, m5615u);
                } else {
                    String valueOf = String.valueOf(this.f24184u);
                    if (valueOf.length() != 0) {
                        str = "Stream cache miss: ".concat(valueOf);
                    } else {
                        str = new String("Stream cache miss: ");
                    }
                    cm0.m12437f(str);
                    return;
                }
            } else {
                this.f24183t = m11091D();
                String m11090E2 = m11090E();
                Uri[] uriArr = new Uri[this.f24185v.length];
                int i = 0;
                while (true) {
                    String[] strArr = this.f24185v;
                    if (i >= strArr.length) {
                        break;
                    }
                    uriArr[i] = Uri.parse(strArr[i]);
                    i++;
                }
                this.f24183t.mo5219R(uriArr, m11090E2);
            }
            this.f24183t.mo5217T(this);
            m11073V(this.f24182s, false);
            if (this.f24183t.mo5234A()) {
                int mo5233B = this.f24183t.mo5233B();
                this.f24187x = mo5233B;
                if (mo5233B == 3) {
                    m11071X();
                }
            }
        }
    }

    /* renamed from: U */
    public final void m11074U() {
        if (this.f24183t != null) {
            m11073V(null, true);
            fo0 fo0Var = this.f24183t;
            if (fo0Var != null) {
                fo0Var.mo5217T(null);
                this.f24183t.mo5216U();
                this.f24183t = null;
            }
            this.f24187x = 1;
            this.f24186w = false;
            this.f24170A = false;
            this.f24171B = false;
        }
    }

    /* renamed from: V */
    public final void m11073V(Surface surface, boolean z) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            try {
                fo0Var.mo5215V(surface, z);
                return;
            } catch (IOException e) {
                cm0.m12436g("", e);
                return;
            }
        }
        cm0.m12437f("Trying to set surface before player is initialized.");
    }

    /* renamed from: W */
    public final void m11072W(float f, boolean z) {
        fo0 fo0Var = this.f24183t;
        if (fo0Var != null) {
            try {
                fo0Var.mo5214W(f, z);
                return;
            } catch (IOException e) {
                cm0.m12436g("", e);
                return;
            }
        }
        cm0.m12437f("Trying to set volume before player is initialized.");
    }

    /* renamed from: X */
    public final void m11071X() {
        if (this.f24170A) {
            return;
        }
        this.f24170A = true;
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.uo0

            /* renamed from: a */
            public final gp0 f32331a;

            {
                this.f32331a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32331a.m11078Q();
            }
        });
        mo6070n();
        this.f24178k.m7764b();
        if (this.f24171B) {
            mo6073k();
        }
    }

    @Override // p168r4.eo0
    /* renamed from: c */
    public final void mo4114c(String str, Exception exc) {
        String str2;
        final String m11070Y = m11070Y("onLoadException", exc);
        if (m11070Y.length() != 0) {
            str2 = "ExoPlayerAdapter exception: ".concat(m11070Y);
        } else {
            str2 = new String("ExoPlayerAdapter exception: ");
        }
        cm0.m12437f(str2);
        C7601t.m935h().m9055l(exc, "AdExoPlayerView.onException");
        C0497k2.f1630i.post(new Runnable(this, m11070Y) { // from class: r4.vo0

            /* renamed from: a */
            public final gp0 f32769a;

            /* renamed from: b */
            public final String f32770b;

            {
                this.f32769a = this;
                this.f32770b = m11070Y;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32769a.m11088G(this.f32770b);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.f24189z) {
            mo0 mo0Var = new mo0(getContext());
            this.f24188y = mo0Var;
            mo0Var.m9319a(surfaceTexture, i, i2);
            this.f24188y.start();
            SurfaceTexture m9316d = this.f24188y.m9316d();
            if (m9316d != null) {
                surfaceTexture = m9316d;
            } else {
                this.f24188y.m9317c();
                this.f24188y = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.f24182s = surface;
        if (this.f24183t == null) {
            m11075T(false);
        } else {
            m11073V(surface, true);
            if (!this.f24180q.f29085a) {
                m11067b0();
            }
        }
        if (this.f24172C != 0 && this.f24173D != 0) {
            m11069Z();
        } else {
            m11068a0(i, i2);
        }
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.bp0

            /* renamed from: a */
            public final gp0 f21149a;

            {
                this.f21149a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21149a.m11083L();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        mo0 mo0Var = this.f24188y;
        if (mo0Var != null) {
            mo0Var.m9318b(i, i2);
        }
        C0497k2.f1630i.post(new Runnable(this, i, i2) { // from class: r4.cp0

            /* renamed from: a */
            public final gp0 f21645a;

            /* renamed from: b */
            public final int f21646b;

            /* renamed from: d */
            public final int f21647d;

            {
                this.f21645a = this;
                this.f21646b = i;
                this.f21647d = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f21645a.m11084K(this.f21646b, this.f21647d);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f24178k.m7762d(this);
        this.f32764a.m10588b(surfaceTexture, this.f24181r);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        C0543w1.m26251k(sb.toString());
        C0497k2.f1630i.post(new Runnable(this, i) { // from class: r4.ep0

            /* renamed from: a */
            public final gp0 f23109a;

            /* renamed from: b */
            public final int f23110b;

            {
                this.f23109a = this;
                this.f23110b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23109a.m11086I(this.f23110b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // p168r4.eo0
    /* renamed from: x */
    public final void mo4101x(int i) {
        if (this.f24187x != i) {
            this.f24187x = i;
            if (i != 3) {
                if (i == 4) {
                    if (this.f24180q.f29085a) {
                        m11066c0();
                    }
                    this.f24178k.m7760f();
                    this.f32765b.m6770e();
                    C0497k2.f1630i.post(new Runnable(this) { // from class: r4.xo0

                        /* renamed from: a */
                        public final gp0 f33648a;

                        {
                            this.f33648a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f33648a.m11079P();
                        }
                    });
                    return;
                }
                return;
            }
            m11071X();
        }
    }

    @Override // p168r4.vn0
    /* renamed from: z */
    public final void mo6060z(String str, String[] strArr) {
        if (str == null) {
            return;
        }
        boolean z = true;
        if (strArr == null) {
            this.f24185v = new String[]{str};
        } else {
            this.f24185v = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.f24184u;
        z = (!this.f24180q.f29098n || str2 == null || str.equals(str2) || this.f24187x != 4) ? false : false;
        this.f24184u = str;
        m11075T(z);
    }

    public gp0(Context context, qo0 qo0Var, po0 po0Var, boolean z, boolean z2, oo0 oo0Var) {
        super(context);
        this.f24187x = 1;
        this.f24179p = z2;
        this.f24177d = po0Var;
        this.f24178k = qo0Var;
        this.f24189z = z;
        this.f24180q = oo0Var;
        setSurfaceTextureListener(this);
        qo0Var.m7765a(this);
    }

    /* renamed from: E */
    public final String m11090E() {
        return C7601t.m939d().m26339P(this.f24177d.getContext(), this.f24177d.mo5061n().f25171a);
    }

    @Override // p168r4.eo0
    /* renamed from: d */
    public final void mo4113d(String str, Exception exc) {
        String str2;
        final String m11070Y = m11070Y(str, exc);
        if (m11070Y.length() != 0) {
            str2 = "ExoPlayerAdapter error: ".concat(m11070Y);
        } else {
            str2 = new String("ExoPlayerAdapter error: ");
        }
        cm0.m12437f(str2);
        this.f24186w = true;
        if (this.f24180q.f29085a) {
            m11066c0();
        }
        C0497k2.f1630i.post(new Runnable(this, m11070Y) { // from class: r4.yo0

            /* renamed from: a */
            public final gp0 f34157a;

            /* renamed from: b */
            public final String f34158b;

            {
                this.f34157a = this;
                this.f34158b = m11070Y;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34157a.m11080O(this.f34158b);
            }
        });
        C7601t.m935h().m9055l(exc, "AdExoPlayerView.onError");
    }

    @Override // p168r4.vn0
    /* renamed from: j */
    public final void mo6074j() {
        if (m11077R()) {
            this.f24183t.mo5213X();
            m11074U();
        }
        this.f24178k.m7760f();
        this.f32765b.m6770e();
        this.f24178k.m7763c();
    }

    @Override // p168r4.vn0
    /* renamed from: k */
    public final void mo6073k() {
        if (m11076S()) {
            if (this.f24180q.f29085a) {
                m11067b0();
            }
            this.f24183t.mo5230E(true);
            this.f24178k.m7761e();
            this.f32765b.m6771d();
            this.f32764a.m10589a();
            C0497k2.f1630i.post(new Runnable(this) { // from class: r4.zo0

                /* renamed from: a */
                public final gp0 f34695a;

                {
                    this.f34695a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f34695a.m11081N();
                }
            });
            return;
        }
        this.f24171B = true;
    }

    @Override // p168r4.vn0
    /* renamed from: l */
    public final void mo6072l() {
        if (m11076S()) {
            if (this.f24180q.f29085a) {
                m11066c0();
            }
            this.f24183t.mo5230E(false);
            this.f24178k.m7760f();
            this.f32765b.m6770e();
            C0497k2.f1630i.post(new Runnable(this) { // from class: r4.ap0

                /* renamed from: a */
                public final gp0 f20572a;

                {
                    this.f20572a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f20572a.m11082M();
                }
            });
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.f24176G;
        if (f != 0.0f && this.f24188y == null) {
            float f2 = measuredWidth;
            float f3 = f2 / measuredHeight;
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            if (f < f3) {
                measuredWidth = (int) (measuredHeight * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        mo0 mo0Var = this.f24188y;
        if (mo0Var != null) {
            mo0Var.m9318b(measuredWidth, measuredHeight);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i4 = this.f24174E;
            if (((i4 > 0 && i4 != measuredWidth) || ((i3 = this.f24175F) > 0 && i3 != measuredHeight)) && this.f24179p && m11077R() && this.f24183t.mo5232C() > 0 && !this.f24183t.mo5231D()) {
                m11072W(0.0f, true);
                this.f24183t.mo5230E(true);
                long mo5232C = this.f24183t.mo5232C();
                long mo24763a = C7601t.m932k().mo24763a();
                while (m11077R() && this.f24183t.mo5232C() == mo5232C && C7601t.m932k().mo24763a() - mo24763a <= 250) {
                }
                this.f24183t.mo5230E(false);
                mo6070n();
            }
            this.f24174E = measuredWidth;
            this.f24175F = measuredHeight;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        mo6072l();
        mo0 mo0Var = this.f24188y;
        if (mo0Var != null) {
            mo0Var.m9317c();
            this.f24188y = null;
        }
        if (this.f24183t != null) {
            m11066c0();
            Surface surface = this.f24182s;
            if (surface != null) {
                surface.release();
            }
            this.f24182s = null;
            m11073V(null, true);
        }
        C0497k2.f1630i.post(new Runnable(this) { // from class: r4.dp0

            /* renamed from: a */
            public final gp0 f22396a;

            {
                this.f22396a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22396a.m11085J();
            }
        });
        return true;
    }
}
