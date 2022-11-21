package p073h;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p038d0.C3208p1;
import p038d0.C3216r1;
import p038d0.InterfaceC3213q1;
/* renamed from: h.h */
/* loaded from: classes.dex */
public class C3921h {

    /* renamed from: c */
    public Interpolator f17216c;

    /* renamed from: d */
    public InterfaceC3213q1 f17217d;

    /* renamed from: e */
    public boolean f17218e;

    /* renamed from: b */
    public long f17215b = -1;

    /* renamed from: f */
    public final C3216r1 f17219f = new C3922a();

    /* renamed from: a */
    public final ArrayList<C3208p1> f17214a = new ArrayList<>();

    /* renamed from: h.h$a */
    /* loaded from: classes.dex */
    public class C3922a extends C3216r1 {

        /* renamed from: a */
        public boolean f17220a = false;

        /* renamed from: b */
        public int f17221b = 0;

        /* renamed from: d */
        public void m17727d() {
            this.f17221b = 0;
            this.f17220a = false;
            C3921h.this.m17734b();
        }

        public C3922a() {
        }

        @Override // p038d0.InterfaceC3213q1
        /* renamed from: b */
        public void mo17260b(View view) {
            int i = this.f17221b + 1;
            this.f17221b = i;
            if (i == C3921h.this.f17214a.size()) {
                InterfaceC3213q1 interfaceC3213q1 = C3921h.this.f17217d;
                if (interfaceC3213q1 != null) {
                    interfaceC3213q1.mo17260b(null);
                }
                m17727d();
            }
        }

        @Override // p038d0.C3216r1, p038d0.InterfaceC3213q1
        /* renamed from: c */
        public void mo17259c(View view) {
            if (this.f17220a) {
                return;
            }
            this.f17220a = true;
            InterfaceC3213q1 interfaceC3213q1 = C3921h.this.f17217d;
            if (interfaceC3213q1 != null) {
                interfaceC3213q1.mo17259c(null);
            }
        }
    }

    /* renamed from: b */
    public void m17734b() {
        this.f17218e = false;
    }

    /* renamed from: a */
    public void m17735a() {
        if (!this.f17218e) {
            return;
        }
        Iterator<C3208p1> it = this.f17214a.iterator();
        while (it.hasNext()) {
            it.next().m19401b();
        }
        this.f17218e = false;
    }

    /* renamed from: c */
    public C3921h m17733c(C3208p1 c3208p1) {
        if (!this.f17218e) {
            this.f17214a.add(c3208p1);
        }
        return this;
    }

    /* renamed from: d */
    public C3921h m17732d(C3208p1 c3208p1, C3208p1 c3208p12) {
        this.f17214a.add(c3208p1);
        c3208p12.m19395h(c3208p1.m19400c());
        this.f17214a.add(c3208p12);
        return this;
    }

    /* renamed from: e */
    public C3921h m17731e(long j) {
        if (!this.f17218e) {
            this.f17215b = j;
        }
        return this;
    }

    /* renamed from: f */
    public C3921h m17730f(Interpolator interpolator) {
        if (!this.f17218e) {
            this.f17216c = interpolator;
        }
        return this;
    }

    /* renamed from: g */
    public C3921h m17729g(InterfaceC3213q1 interfaceC3213q1) {
        if (!this.f17218e) {
            this.f17217d = interfaceC3213q1;
        }
        return this;
    }

    /* renamed from: h */
    public void m17728h() {
        if (this.f17218e) {
            return;
        }
        Iterator<C3208p1> it = this.f17214a.iterator();
        while (it.hasNext()) {
            C3208p1 next = it.next();
            long j = this.f17215b;
            if (j >= 0) {
                next.m19399d(j);
            }
            Interpolator interpolator = this.f17216c;
            if (interpolator != null) {
                next.m19398e(interpolator);
            }
            if (this.f17217d != null) {
                next.m19397f(this.f17219f);
            }
            next.m19393j();
        }
        this.f17218e = true;
    }
}
