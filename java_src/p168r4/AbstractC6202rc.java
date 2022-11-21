package p168r4;
/* renamed from: r4.rc */
/* loaded from: classes2.dex */
public abstract class AbstractC6202rc implements InterfaceC6055nd, InterfaceC6092od {

    /* renamed from: a */
    public final int f30522a;

    /* renamed from: b */
    public C6129pd f30523b;

    /* renamed from: c */
    public int f30524c;

    /* renamed from: d */
    public int f30525d;

    /* renamed from: e */
    public InterfaceC5839hj f30526e;

    /* renamed from: f */
    public long f30527f;

    /* renamed from: g */
    public boolean f30528g = true;

    /* renamed from: h */
    public boolean f30529h;

    public AbstractC6202rc(int i) {
        this.f30522a = i;
    }

    /* renamed from: A */
    public abstract void mo5354A();

    /* renamed from: B */
    public abstract void mo5353B();

    /* renamed from: C */
    public final C6129pd m7548C() {
        return this.f30523b;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: D */
    public final void mo7547D(int i) {
        this.f30524c = i;
    }

    /* renamed from: E */
    public final int m7546E() {
        return this.f30524c;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: a */
    public final InterfaceC6092od mo7545a() {
        return this;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: b */
    public final void mo7544b(long j) {
        this.f30529h = false;
        this.f30528g = false;
        mo5337y(j, false);
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: c */
    public final int mo7543c() {
        return this.f30525d;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: e */
    public InterfaceC6506zk mo5340e() {
        return null;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: h */
    public final boolean mo7540h() {
        return this.f30528g;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: i */
    public final void mo7539i() {
        this.f30529h = true;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: j */
    public final InterfaceC5839hj mo7538j() {
        return this.f30526e;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: k */
    public final boolean mo7537k() {
        return this.f30529h;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: l */
    public final void mo7536l() {
        this.f30526e.mo8324b();
    }

    /* renamed from: u */
    public final void m7531u(long j) {
        this.f30526e.mo8323c(j - this.f30527f);
    }

    /* renamed from: v */
    public final boolean m7530v() {
        return this.f30528g ? this.f30529h : this.f30526e.mo8325a();
    }

    /* renamed from: w */
    public abstract void mo5338w(boolean z);

    /* renamed from: x */
    public void mo5683x(C5870id[] c5870idArr, long j) {
    }

    /* renamed from: y */
    public abstract void mo5337y(long j, boolean z);

    /* renamed from: z */
    public abstract void mo5336z();

    @Override // p168r4.InterfaceC6055nd, p168r4.InterfaceC6092od
    public final int zza() {
        return this.f30522a;
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: d */
    public final void mo7542d(C6129pd c6129pd, C5870id[] c5870idArr, InterfaceC5839hj interfaceC5839hj, long j, boolean z, long j2) {
        boolean z2;
        if (this.f30525d == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C6358vk.m6137d(z2);
        this.f30523b = c6129pd;
        this.f30525d = 1;
        mo5338w(z);
        mo7533s(c5870idArr, interfaceC5839hj, j2);
        mo5337y(j, z);
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: g */
    public final void mo7541g() {
        boolean z = true;
        if (this.f30525d != 1) {
            z = false;
        }
        C6358vk.m6137d(z);
        this.f30525d = 2;
        mo5336z();
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: o */
    public final void mo7535o() {
        boolean z = true;
        if (this.f30525d != 1) {
            z = false;
        }
        C6358vk.m6137d(z);
        this.f30525d = 0;
        this.f30526e = null;
        this.f30529h = false;
        mo5353B();
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: q */
    public final void mo7534q() {
        boolean z;
        if (this.f30525d == 2) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6137d(z);
        this.f30525d = 1;
        mo5354A();
    }

    @Override // p168r4.InterfaceC6055nd
    /* renamed from: s */
    public final void mo7533s(C5870id[] c5870idArr, InterfaceC5839hj interfaceC5839hj, long j) {
        C6358vk.m6137d(!this.f30529h);
        this.f30526e = interfaceC5839hj;
        this.f30528g = false;
        this.f30527f = j;
        mo5683x(c5870idArr, j);
    }

    /* renamed from: t */
    public final int m7532t(C5906jd c5906jd, C5835hf c5835hf, boolean z) {
        int mo8322d = this.f30526e.mo8322d(c5906jd, c5835hf, z);
        if (mo8322d == -4) {
            if (c5835hf.m12481c()) {
                this.f30528g = true;
                if (this.f30529h) {
                    return -4;
                }
                return -3;
            }
            c5835hf.f24564d += this.f30527f;
        } else if (mo8322d == -5) {
            C5870id c5870id = c5906jd.f26005a;
            long j = c5870id.f25050H;
            if (j != Long.MAX_VALUE) {
                c5906jd.f26005a = new C5870id(c5870id.f25055a, c5870id.f25059p, c5870id.f25060q, c5870id.f25057d, c5870id.f25056b, c5870id.f25061r, c5870id.f25064u, c5870id.f25065v, c5870id.f25066w, c5870id.f25067x, c5870id.f25068y, c5870id.f25043A, c5870id.f25069z, c5870id.f25044B, c5870id.f25045C, c5870id.f25046D, c5870id.f25047E, c5870id.f25048F, c5870id.f25049G, c5870id.f25051I, c5870id.f25052J, c5870id.f25053K, j + this.f30527f, c5870id.f25062s, c5870id.f25063t, c5870id.f25058k);
                return -5;
            }
        }
        return mo8322d;
    }
}
