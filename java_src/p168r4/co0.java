package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.prineside.tdi2.Config;
import java.util.HashMap;
import net.bytebuddy.jar.asm.Opcodes;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.co0 */
/* loaded from: classes2.dex */
public final class co0 extends FrameLayout implements un0 {

    /* renamed from: A */
    public Bitmap f21623A;

    /* renamed from: B */
    public final ImageView f21624B;

    /* renamed from: C */
    public boolean f21625C;

    /* renamed from: a */
    public final po0 f21626a;

    /* renamed from: b */
    public final FrameLayout f21627b;

    /* renamed from: d */
    public final View f21628d;

    /* renamed from: k */
    public final h00 f21629k;

    /* renamed from: p */
    public final ro0 f21630p;

    /* renamed from: q */
    public final long f21631q;

    /* renamed from: r */
    public final vn0 f21632r;

    /* renamed from: s */
    public boolean f21633s;

    /* renamed from: t */
    public boolean f21634t;

    /* renamed from: u */
    public boolean f21635u;

    /* renamed from: v */
    public boolean f21636v;

    /* renamed from: w */
    public long f21637w;

    /* renamed from: x */
    public long f21638x;

    /* renamed from: y */
    public String f21639y;

    /* renamed from: z */
    public String[] f21640z;

    public co0(Context context, po0 po0Var, int i, boolean z, h00 h00Var, oo0 oo0Var) {
        super(context);
        vn0 tn0Var;
        String str;
        this.f21626a = po0Var;
        this.f21629k = h00Var;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f21627b = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        C7297q.m1883j(po0Var.mo5075i());
        wn0 wn0Var = po0Var.mo5075i().f37535a;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null && applicationInfo.targetSdkVersion < 11) {
            tn0Var = null;
        } else {
            qo0 qo0Var = new qo0(context, po0Var.mo5061n(), po0Var.mo5067l(), h00Var, po0Var.mo5073j());
            if (i == 2) {
                tn0Var = new gp0(context, qo0Var, po0Var, z, wn0.m5637a(po0Var), oo0Var);
            } else {
                tn0Var = new tn0(context, po0Var, z, wn0.m5637a(po0Var), oo0Var, new qo0(context, po0Var.mo5061n(), po0Var.mo5067l(), h00Var, po0Var.mo5073j()));
            }
        }
        this.f21632r = tn0Var;
        View view = new View(context);
        this.f21628d = view;
        view.setBackgroundColor(0);
        if (tn0Var != null) {
            frameLayout.addView(tn0Var, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30758A)).booleanValue()) {
                frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.bringChildToFront(view);
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31153x)).booleanValue()) {
                m12394m();
            }
        }
        this.f21624B = new ImageView(context);
        this.f21631q = ((Long) C5592av.m12935c().m8098c(C6225rz.f30774C)).longValue();
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31169z)).booleanValue();
        this.f21636v = booleanValue;
        if (h00Var != null) {
            if (true != booleanValue) {
                str = "0";
            } else {
                str = Config.SITE_API_VERSION;
            }
            h00Var.m11024d("spinner_used", str);
        }
        this.f21630p = new ro0(this);
        if (tn0Var != null) {
            tn0Var.mo6076h(this);
        }
        if (tn0Var == null) {
            mo6475h("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* renamed from: A */
    public final void m12405A() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.mo6073k();
    }

    /* renamed from: B */
    public final void m12404B(int i) {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.mo6068p(i);
    }

    /* renamed from: F */
    public final void m12400F(int i) {
        this.f21632r.mo6082A(i);
    }

    /* renamed from: G */
    public final void m12399G(int i) {
        this.f21632r.mo6081B(i);
    }

    /* renamed from: H */
    public final void m12398H(int i) {
        this.f21632r.mo6080C(i);
    }

    /* renamed from: I */
    public final void m12397I(int i) {
        this.f21632r.mo6079e(i);
    }

    @Override // p168r4.un0
    /* renamed from: c */
    public final void mo6480c() {
        m12388s("ended", new String[0]);
        m12387t();
    }

    @Override // p168r4.un0
    /* renamed from: e */
    public final void mo6478e() {
        m12388s("pause", new String[0]);
        m12387t();
        this.f21633s = false;
    }

    @Override // p168r4.un0
    /* renamed from: g */
    public final void mo6476g(String str, String str2) {
        m12388s("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // p168r4.un0
    /* renamed from: h */
    public final void mo6475h(String str, String str2) {
        m12388s("error", "what", str, "extra", str2);
    }

    @Override // p168r4.un0
    /* renamed from: i */
    public final void mo6474i() {
        this.f21628d.setVisibility(4);
    }

    /* renamed from: k */
    public final void m12396k(int i) {
        this.f21632r.mo6078f(i);
    }

    @TargetApi(14)
    /* renamed from: l */
    public final void m12395l(MotionEvent motionEvent) {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: q */
    public final /* synthetic */ void m12390q(boolean z) {
        m12388s("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    /* renamed from: r */
    public final boolean m12389r() {
        return this.f21624B.getParent() != null;
    }

    /* renamed from: w */
    public final void m12384w(String str, String[] strArr) {
        this.f21639y = str;
        this.f21640z = strArr;
    }

    /* renamed from: x */
    public final void m12383x(float f, float f2) {
        vn0 vn0Var = this.f21632r;
        if (vn0Var != null) {
            vn0Var.mo6067q(f, f2);
        }
    }

    /* renamed from: z */
    public final void m12381z() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.mo6072l();
    }

    /* renamed from: C */
    public final void m12403C() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.f32765b.m6774a(true);
        vn0Var.mo6070n();
    }

    /* renamed from: D */
    public final void m12402D() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.f32765b.m6774a(false);
        vn0Var.mo6070n();
    }

    /* renamed from: E */
    public final void m12401E(float f) {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        vn0Var.f32765b.m6773b(f);
        vn0Var.mo6070n();
    }

    @Override // p168r4.un0
    /* renamed from: a */
    public final void mo6482a() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var != null && this.f21638x == 0) {
            m12388s("canplaythrough", "duration", String.valueOf(vn0Var.mo6071m() / 1000.0f), "videoWidth", String.valueOf(this.f21632r.mo6066r()), "videoHeight", String.valueOf(this.f21632r.mo6065s()));
        }
    }

    @Override // p168r4.un0
    /* renamed from: b */
    public final void mo6481b() {
        boolean z;
        if (this.f21626a.mo5078h() != null && !this.f21634t) {
            if ((this.f21626a.mo5078h().getWindow().getAttributes().flags & 128) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.f21635u = z;
            if (!z) {
                this.f21626a.mo5078h().getWindow().addFlags(128);
                this.f21634t = true;
            }
        }
        this.f21633s = true;
    }

    @Override // p168r4.un0
    /* renamed from: d */
    public final void mo6479d(int i, int i2) {
        if (this.f21636v) {
            AbstractC5928jz<Integer> abstractC5928jz = C6225rz.f30766B;
            int max = Math.max(i / ((Integer) C5592av.m12935c().m8098c(abstractC5928jz)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) C5592av.m12935c().m8098c(abstractC5928jz)).intValue(), 1);
            Bitmap bitmap = this.f21623A;
            if (bitmap != null && bitmap.getWidth() == max && this.f21623A.getHeight() == max2) {
                return;
            }
            this.f21623A = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.f21625C = false;
        }
    }

    @Override // p168r4.un0
    /* renamed from: f */
    public final void mo6477f() {
        if (this.f21625C && this.f21623A != null && !m12389r()) {
            this.f21624B.setImageBitmap(this.f21623A);
            this.f21624B.invalidate();
            this.f21627b.addView(this.f21624B, new FrameLayout.LayoutParams(-1, -1));
            this.f21627b.bringChildToFront(this.f21624B);
        }
        this.f21630p.m7418a();
        this.f21638x = this.f21637w;
        C0497k2.f1630i.post(new ao0(this));
    }

    public final void finalize() {
        try {
            this.f21630p.m7418a();
            vn0 vn0Var = this.f21632r;
            if (vn0Var != null) {
                qm0.f30194e.execute(xn0.m5240a(vn0Var));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // p168r4.un0
    /* renamed from: j */
    public final void mo6473j() {
        if (this.f21633s && m12389r()) {
            this.f21627b.removeView(this.f21624B);
        }
        if (this.f21623A != null) {
            long mo24762b = C7601t.m932k().mo24762b();
            if (this.f21632r.getBitmap(this.f21623A) != null) {
                this.f21625C = true;
            }
            long mo24762b2 = C7601t.m932k().mo24762b() - mo24762b;
            if (C0543w1.m26249m()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(mo24762b2);
                sb.append("ms");
                C0543w1.m26251k(sb.toString());
            }
            if (mo24762b2 > this.f21631q) {
                cm0.m12437f("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.f21636v = false;
                this.f21623A = null;
                h00 h00Var = this.f21629k;
                if (h00Var != null) {
                    h00Var.m11024d("spinner_jank", Long.toString(mo24762b2));
                }
            }
        }
    }

    @TargetApi(14)
    /* renamed from: m */
    public final void m12394m() {
        String str;
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        TextView textView = new TextView(vn0Var.getContext());
        String valueOf = String.valueOf(this.f21632r.mo6077g());
        if (valueOf.length() != 0) {
            str = "AdMob - ".concat(valueOf);
        } else {
            str = new String("AdMob - ");
        }
        textView.setText(str);
        textView.setTextColor(Opcodes.V_PREVIEW);
        textView.setBackgroundColor(-256);
        this.f21627b.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f21627b.bringChildToFront(textView);
    }

    /* renamed from: n */
    public final void m12393n() {
        this.f21630p.m7418a();
        vn0 vn0Var = this.f21632r;
        if (vn0Var != null) {
            vn0Var.mo6074j();
        }
        m12387t();
    }

    /* renamed from: o */
    public final void m12392o() {
        vn0 vn0Var = this.f21632r;
        if (vn0Var == null) {
            return;
        }
        long mo6069o = vn0Var.mo6069o();
        if (this.f21637w != mo6069o && mo6069o > 0) {
            float f = ((float) mo6069o) / 1000.0f;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue()) {
                m12388s("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.f21632r.mo6062v()), "qoeCachedBytes", String.valueOf(this.f21632r.mo6063u()), "qoeLoadedBytes", String.valueOf(this.f21632r.mo6064t()), "droppedFrames", String.valueOf(this.f21632r.mo6061w()), "reportTime", String.valueOf(C7601t.m932k().mo24763a()));
            } else {
                m12388s("timeupdate", "time", String.valueOf(f));
            }
            this.f21637w = mo6069o;
        }
    }

    /* renamed from: s */
    public final void m12388s(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.f21626a.mo5125H0("onVideoEvent", hashMap);
    }

    /* renamed from: t */
    public final void m12387t() {
        if (this.f21626a.mo5078h() != null && this.f21634t && !this.f21635u) {
            this.f21626a.mo5078h().getWindow().clearFlags(128);
            this.f21634t = false;
        }
    }

    /* renamed from: u */
    public final void m12386u(int i) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30758A)).booleanValue()) {
            this.f21627b.setBackgroundColor(i);
            this.f21628d.setBackgroundColor(i);
        }
    }

    /* renamed from: y */
    public final void m12382y() {
        if (this.f21632r == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f21639y)) {
            this.f21632r.mo6060z(this.f21639y, this.f21640z);
        } else {
            m12388s("no_src", new String[0]);
        }
    }

    @Override // p168r4.un0
    public final void zza() {
        this.f21630p.m7417b();
        C0497k2.f1630i.post(new zn0(this));
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f21630p.m7417b();
        } else {
            this.f21630p.m7418a();
            this.f21638x = this.f21637w;
        }
        C0497k2.f1630i.post(new Runnable(this, z) { // from class: r4.yn0

            /* renamed from: a */
            public final co0 f34149a;

            /* renamed from: b */
            public final boolean f34150b;

            {
                this.f34149a = this;
                this.f34150b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f34149a.m12390q(this.f34150b);
            }
        });
    }

    @Override // android.view.View, p168r4.un0
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f21630p.m7417b();
            z = true;
        } else {
            this.f21630p.m7418a();
            this.f21638x = this.f21637w;
            z = false;
        }
        C0497k2.f1630i.post(new bo0(this, z));
    }

    /* renamed from: v */
    public final void m12385v(int i, int i2, int i3, int i4) {
        if (C0543w1.m26249m()) {
            StringBuilder sb = new StringBuilder(75);
            sb.append("Set video bounds to x:");
            sb.append(i);
            sb.append(";y:");
            sb.append(i2);
            sb.append(";w:");
            sb.append(i3);
            sb.append(";h:");
            sb.append(i4);
            C0543w1.m26251k(sb.toString());
        }
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.f21627b.setLayoutParams(layoutParams);
            requestLayout();
        }
    }
}
