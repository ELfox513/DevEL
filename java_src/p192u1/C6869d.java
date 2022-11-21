package p192u1;

import p102k1.C4422i;
import p174s1.C6570a;
import p183t1.AbstractC6650f;
import p183t1.C6697q;
/* renamed from: u1.d */
/* loaded from: classes.dex */
public final class C6869d {

    /* renamed from: a */
    public final C6570a f35731a;

    /* renamed from: b */
    public AbstractC6650f[] f35732b;

    /* renamed from: c */
    public int f35733c;

    /* renamed from: d */
    public C6867c f35734d;

    /* renamed from: u1.d$d */
    /* loaded from: classes.dex */
    public class C6873d implements C6570a.InterfaceC6572b {
        public C6873d() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m3084c(C6869d c6869d) {
        int i = c6869d.f35733c;
        c6869d.f35733c = i + 1;
        return i;
    }

    /* renamed from: e */
    public static void m3082e(boolean z, int i) {
        if (z || i <= 65535) {
            return;
        }
        throw new C4422i("Cannot merge new index " + i + " into a non-jumbo instruction!");
    }

    /* renamed from: u1.d$b */
    /* loaded from: classes.dex */
    public class C6871b implements C6570a.InterfaceC6572b {
        public C6871b() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3615C(C6869d.this.f35734d.m3106m(abstractC6650f.m3696m()));
        }
    }

    /* renamed from: u1.d$c */
    /* loaded from: classes.dex */
    public class C6872c implements C6570a.InterfaceC6572b {
        public C6872c() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            boolean z;
            int m3103p = C6869d.this.f35734d.m3103p(abstractC6650f.m3696m());
            if (abstractC6650f.m3688u() == 27) {
                z = true;
            } else {
                z = false;
            }
            C6869d.m3082e(z, m3103p);
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3615C(m3103p);
        }
    }

    /* renamed from: u1.d$e */
    /* loaded from: classes.dex */
    public class C6874e implements C6570a.InterfaceC6572b {
        public C6874e() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3635D(C6869d.this.f35734d.m3102q(abstractC6650f.m3696m()), C6869d.this.f35734d.m3100s(abstractC6650f.mo3634w()));
        }
    }

    /* renamed from: u1.d$f */
    /* loaded from: classes.dex */
    public class C6875f implements C6570a.InterfaceC6572b {
        public C6875f() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            boolean z;
            int m3102q = C6869d.this.f35734d.m3102q(abstractC6650f.m3696m());
            if (abstractC6650f.m3688u() == 27) {
                z = true;
            } else {
                z = false;
            }
            C6869d.m3082e(z, m3102q);
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3615C(m3102q);
        }
    }

    /* renamed from: u1.d$g */
    /* loaded from: classes.dex */
    public class C6876g implements C6570a.InterfaceC6572b {
        public C6876g() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            boolean z;
            int m3099t = C6869d.this.f35734d.m3099t(abstractC6650f.m3696m());
            if (abstractC6650f.m3688u() == 27) {
                z = true;
            } else {
                z = false;
            }
            C6869d.m3082e(z, m3099t);
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3615C(m3099t);
        }
    }

    /* renamed from: u1.d$h */
    /* loaded from: classes.dex */
    public class C6877h implements C6570a.InterfaceC6572b {
        public C6877h() {
        }

        @Override // p174s1.C6570a.InterfaceC6572b
        /* renamed from: a */
        public void mo3080a(AbstractC6650f[] abstractC6650fArr, AbstractC6650f abstractC6650f) {
            boolean z;
            int m3098u = C6869d.this.f35734d.m3098u(abstractC6650f.m3696m());
            if (abstractC6650f.m3688u() == 27) {
                z = true;
            } else {
                z = false;
            }
            C6869d.m3082e(z, m3098u);
            C6869d.this.f35732b[C6869d.m3084c(C6869d.this)] = abstractC6650f.mo3615C(m3098u);
        }
    }

    public C6869d() {
        C6570a c6570a = new C6570a();
        this.f35731a = c6570a;
        c6570a.m3901b(new C6873d());
        c6570a.m3896g(new C6876g());
        c6570a.m3895h(new C6877h());
        c6570a.m3899d(new C6872c());
        c6570a.m3897f(new C6875f());
        c6570a.m3898e(new C6874e());
        c6570a.m3900c(new C6871b());
    }

    /* renamed from: f */
    public short[] m3081f(C6867c c6867c, short[] sArr) {
        AbstractC6650f[] abstractC6650fArr;
        AbstractC6650f[] m3702b = AbstractC6650f.m3702b(sArr);
        int length = m3702b.length;
        this.f35734d = c6867c;
        this.f35732b = new AbstractC6650f[length];
        this.f35733c = 0;
        this.f35731a.m3894i(m3702b);
        C6697q c6697q = new C6697q(length);
        for (AbstractC6650f abstractC6650f : this.f35732b) {
            if (abstractC6650f != null) {
                abstractC6650f.m3701c(c6697q);
            }
        }
        this.f35734d = null;
        return c6697q.m3622m();
    }
}
