package p168r4;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.iy1 */
/* loaded from: classes2.dex */
public final class iy1 {

    /* renamed from: a */
    public final i83 f25637a;

    /* renamed from: b */
    public final px1 f25638b;

    /* renamed from: c */
    public final or3<az1> f25639c;

    public iy1(i83 i83Var, px1 px1Var, or3<az1> or3Var) {
        this.f25637a = i83Var;
        this.f25638b = px1Var;
        this.f25639c = or3Var;
    }

    /* renamed from: e */
    public final /* synthetic */ h83 m10460e(og0 og0Var) {
        return this.f25639c.m8710a().m12912g7(og0Var, Binder.getCallingUid());
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m10459f(hy1 hy1Var, og0 og0Var, e73 e73Var, yx1 yx1Var) {
        return y73.m4806i(hy1Var.mo10759a(og0Var), e73Var, this.f25637a);
    }

    /* renamed from: a */
    public final h83<og0> m10464a(final og0 og0Var) {
        return m10458g(og0Var, cy1.m12279b(this.f25638b), new hy1(this) { // from class: r4.dy1

            /* renamed from: a */
            public final iy1 f22686a;

            {
                this.f22686a = this;
            }

            @Override // p168r4.hy1
            /* renamed from: a */
            public final h83 mo10759a(og0 og0Var2) {
                return this.f22686a.m10460e(og0Var2);
            }
        }, new e73(og0Var) { // from class: r4.by1

            /* renamed from: a */
            public final og0 f21263a;

            {
                this.f21263a = og0Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                og0 og0Var2 = this.f21263a;
                og0Var2.f28987u = new String(u53.m6636a((InputStream) obj), n03.f28056c);
                return y73.m4814a(og0Var2);
            }
        });
    }

    /* renamed from: b */
    public final h83<Void> m10463b(og0 og0Var) {
        if (C6449y0.m4940e(og0Var.f28987u)) {
            return y73.m4812c(new sv1(2, "Pool key missing from removeUrl call."));
        }
        return m10458g(og0Var, new hy1(this) { // from class: r4.fy1

            /* renamed from: a */
            public final iy1 f23797a;

            {
                this.f23797a = this;
            }

            @Override // p168r4.hy1
            /* renamed from: a */
            public final h83 mo10759a(og0 og0Var2) {
                return this.f23797a.m10461d(og0Var2);
            }
        }, new hy1(this) { // from class: r4.gy1

            /* renamed from: a */
            public final iy1 f24372a;

            {
                this.f24372a = this;
            }

            @Override // p168r4.hy1
            /* renamed from: a */
            public final h83 mo10759a(og0 og0Var2) {
                return this.f24372a.m10462c(og0Var2);
            }
        }, ey1.f23211a);
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m10462c(og0 og0Var) {
        String str;
        az1 m8710a = this.f25639c.m8710a();
        if (l10.f27016d.m6673e().booleanValue()) {
            str = og0Var.f28985s;
        } else {
            str = og0Var.f28987u;
        }
        return m8710a.m12911h7(str);
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m10461d(og0 og0Var) {
        String str;
        px1 px1Var = this.f25638b;
        if (l10.f27016d.m6673e().booleanValue()) {
            str = og0Var.f28985s;
        } else {
            str = og0Var.f28987u;
        }
        return px1Var.m8103c(str);
    }

    /* renamed from: g */
    public final <RetT> h83<RetT> m10458g(final og0 og0Var, hy1<InputStream> hy1Var, final hy1<InputStream> hy1Var2, final e73<InputStream, RetT> e73Var) {
        h83 m4808g;
        String str = og0Var.f28981k;
        C7601t.m939d();
        if (C0497k2.m26318f(str)) {
            m4808g = y73.m4812c(new yx1(1));
        } else {
            m4808g = y73.m4808g(hy1Var.mo10759a(og0Var), ExecutionException.class, zx1.f34772a, this.f25637a);
        }
        return y73.m4808g(y73.m4806i(o73.m8869E(m4808g), e73Var, this.f25637a), yx1.class, new e73(this, hy1Var2, og0Var, e73Var) { // from class: r4.ay1

            /* renamed from: a */
            public final iy1 f20767a;

            /* renamed from: b */
            public final hy1 f20768b;

            /* renamed from: c */
            public final og0 f20769c;

            /* renamed from: d */
            public final e73 f20770d;

            {
                this.f20767a = this;
                this.f20768b = hy1Var2;
                this.f20769c = og0Var;
                this.f20770d = e73Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f20767a.m10459f(this.f20768b, this.f20769c, this.f20770d, (yx1) obj);
            }
        }, this.f25637a);
    }
}
