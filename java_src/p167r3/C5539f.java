package p167r3;

import android.content.Context;
import android.util.Log;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import p110l0.AbstractC4540a;
import p194u3.AbstractC6900f;
import p203v3.InterfaceC7032n;
/* renamed from: r3.f */
/* loaded from: classes.dex */
public final class C5539f extends AbstractC4540a<Void> implements InterfaceC7032n {

    /* renamed from: p */
    public Semaphore f20304p;

    /* renamed from: q */
    public Set<AbstractC6900f> f20305q;

    @Override // p110l0.AbstractC4540a
    /* renamed from: D */
    public final Void mo13092A() {
        int i = 0;
        for (AbstractC6900f abstractC6900f : this.f20305q) {
            if (abstractC6900f.m3039e(this)) {
                i++;
            }
        }
        try {
            this.f20304p.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // p110l0.C4542b
    /* renamed from: o */
    public final void mo13090o() {
        this.f20304p.drainPermits();
        m16042h();
    }

    public C5539f(Context context, Set<AbstractC6900f> set) {
        super(context);
        this.f20304p = new Semaphore(0);
        this.f20305q = set;
    }
}
