package p168r4;
/* renamed from: r4.m83 */
/* loaded from: classes2.dex */
public final class m83 extends l63<Void> implements Runnable {

    /* renamed from: s */
    public final Runnable f27540s;

    public m83(Runnable runnable) {
        runnable.getClass();
        this.f27540s = runnable;
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        String valueOf = String.valueOf(this.f27540s);
        StringBuilder sb = new StringBuilder(valueOf.length() + 7);
        sb.append("task=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f27540s.run();
        } catch (Throwable th) {
            mo8449v(th);
            n13.m9209a(th);
            throw new RuntimeException(th);
        }
    }
}
