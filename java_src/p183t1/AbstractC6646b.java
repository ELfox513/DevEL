package p183t1;
/* renamed from: t1.b */
/* loaded from: classes.dex */
public abstract class AbstractC6646b implements InterfaceC6647c {

    /* renamed from: a */
    public final C6645a f35240a = new C6645a();

    /* renamed from: b */
    public int f35241b = 0;

    @Override // p183t1.InterfaceC6647c
    /* renamed from: g */
    public final void mo3707g(int i, int i2) {
        this.f35240a.m3710b(i, i2);
    }

    @Override // p183t1.InterfaceC6647c
    /* renamed from: k */
    public final int mo3706k() {
        return this.f35241b;
    }

    /* renamed from: l */
    public final void m3709l(int i) {
        this.f35241b += i;
    }

    @Override // p183t1.InterfaceC6647c
    /* renamed from: b */
    public final int mo3708b() {
        int m3711a = this.f35240a.m3711a(this.f35241b);
        if (m3711a < 0) {
            return this.f35241b;
        }
        return m3711a;
    }
}
