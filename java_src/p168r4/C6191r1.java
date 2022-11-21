package p168r4;
/* renamed from: r4.r1 */
/* loaded from: classes2.dex */
public final class C6191r1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public static volatile String f30401i;

    /* renamed from: j */
    public static final Object f30402j = new Object();

    public C6191r1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "FIES3RTkQwHbrKX6yNHRLvjdTy/vAwaHt4NSjNSY8AdC8m3WKKtOY2UmKZKAKB0T", "2LDOSJy2Fx9VBMC+bm+0OJly9nmnJoeXDwyJmbeZyYc=", za4Var, i, 1);
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        this.f22747e.m4371e0("E");
        if (f30401i == null) {
            synchronized (f30402j) {
                if (f30401i == null) {
                    f30401i = (String) this.f22748f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f22747e) {
            this.f22747e.m4371e0(f30401i);
        }
    }
}
