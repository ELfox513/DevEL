package p057f1;

import androidx.work.C0380b;
import p128n0.AbstractC4673b;
import p128n0.AbstractC4676e;
import p128n0.AbstractC4689l;
import p155q0.InterfaceC5390f;
/* renamed from: f1.o */
/* loaded from: classes.dex */
public final class C3478o implements InterfaceC3477n {

    /* renamed from: a */
    public final AbstractC4676e f15912a;

    /* renamed from: b */
    public final AbstractC4673b<C3476m> f15913b;

    /* renamed from: c */
    public final AbstractC4689l f15914c;

    /* renamed from: d */
    public final AbstractC4689l f15915d;

    /* renamed from: f1.o$a */
    /* loaded from: classes.dex */
    public class C3479a extends AbstractC4673b<C3476m> {
        public C3479a(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // p128n0.AbstractC4673b
        /* renamed from: i */
        public void mo15835g(InterfaceC5390f interfaceC5390f, C3476m c3476m) {
            String str = c3476m.f15910a;
            if (str == null) {
                interfaceC5390f.mo13122A0(1);
            } else {
                interfaceC5390f.mo13121E(1, str);
            }
            byte[] m26656l = C0380b.m26656l(c3476m.f15911b);
            if (m26656l == null) {
                interfaceC5390f.mo13122A0(2);
            } else {
                interfaceC5390f.mo13118k0(2, m26656l);
            }
        }
    }

    /* renamed from: f1.o$b */
    /* loaded from: classes.dex */
    public class C3480b extends AbstractC4689l {
        public C3480b(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* renamed from: f1.o$c */
    /* loaded from: classes.dex */
    public class C3481c extends AbstractC4689l {
        public C3481c(AbstractC4676e abstractC4676e) {
            super(abstractC4676e);
        }

        @Override // p128n0.AbstractC4689l
        /* renamed from: d */
        public String mo15772d() {
            return "DELETE FROM WorkProgress";
        }
    }

    @Override // p057f1.InterfaceC3477n
    /* renamed from: a */
    public void mo18792a(String str) {
        this.f15912a.m15829b();
        InterfaceC5390f m15775a = this.f15914c.m15775a();
        if (str == null) {
            m15775a.mo13122A0(1);
        } else {
            m15775a.mo13121E(1, str);
        }
        this.f15912a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15912a.m15813r();
        } finally {
            this.f15912a.m15824g();
            this.f15914c.m15770f(m15775a);
        }
    }

    @Override // p057f1.InterfaceC3477n
    /* renamed from: b */
    public void mo18791b(C3476m c3476m) {
        this.f15912a.m15829b();
        this.f15912a.m15828c();
        try {
            this.f15913b.m15834h(c3476m);
            this.f15912a.m15813r();
        } finally {
            this.f15912a.m15824g();
        }
    }

    @Override // p057f1.InterfaceC3477n
    /* renamed from: c */
    public void mo18790c() {
        this.f15912a.m15829b();
        InterfaceC5390f m15775a = this.f15915d.m15775a();
        this.f15912a.m15828c();
        try {
            m15775a.mo13117I();
            this.f15912a.m15813r();
        } finally {
            this.f15912a.m15824g();
            this.f15915d.m15770f(m15775a);
        }
    }

    public C3478o(AbstractC4676e abstractC4676e) {
        this.f15912a = abstractC4676e;
        this.f15913b = new C3479a(abstractC4676e);
        this.f15914c = new C3480b(abstractC4676e);
        this.f15915d = new C3481c(abstractC4676e);
    }
}
