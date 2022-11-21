package p018b5;
/* renamed from: b5.n2 */
/* loaded from: classes2.dex */
public abstract class AbstractRunnableC0779n2 implements Runnable {

    /* renamed from: a */
    public final long f2052a;

    /* renamed from: b */
    public final long f2053b;

    /* renamed from: d */
    public final boolean f2054d;

    /* renamed from: k */
    public final /* synthetic */ C0966y2 f2055k;

    /* renamed from: a */
    public abstract void mo24898a();

    /* renamed from: b */
    public void mo24897b() {
    }

    public AbstractRunnableC0779n2(C0966y2 c0966y2, boolean z) {
        this.f2055k = c0966y2;
        this.f2052a = c0966y2.f2427b.mo24763a();
        this.f2053b = c0966y2.f2427b.mo24762b();
        this.f2054d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.f2055k.f2432g;
        if (z) {
            mo24897b();
            return;
        }
        try {
            mo24898a();
        } catch (Exception e) {
            this.f2055k.m24939k(e, false, this.f2054d);
            mo24897b();
        }
    }
}
