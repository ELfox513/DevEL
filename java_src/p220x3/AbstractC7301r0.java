package p220x3;

import android.app.PendingIntent;
import android.os.Bundle;
import p185t3.C6734b;
/* renamed from: x3.r0 */
/* loaded from: classes.dex */
public abstract class AbstractC7301r0 extends AbstractC7245b1<Boolean> {

    /* renamed from: d */
    public final int f36786d;

    /* renamed from: e */
    public final Bundle f36787e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC7246c f36788f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC7301r0(AbstractC7246c abstractC7246c, int i, Bundle bundle) {
        super(abstractC7246c, Boolean.TRUE);
        this.f36788f = abstractC7246c;
        this.f36786d = i;
        this.f36787e = bundle;
    }

    @Override // p220x3.AbstractC7245b1
    /* renamed from: a */
    public final void mo1875a() {
    }

    @Override // p220x3.AbstractC7245b1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo1874b(Boolean bool) {
        C6734b c6734b;
        if (this.f36786d != 0) {
            this.f36788f.m1992g0(1, null);
            Bundle bundle = this.f36787e;
            c6734b = new C6734b(this.f36786d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null);
        } else if (mo1873f()) {
            return;
        } else {
            this.f36788f.m1992g0(1, null);
            c6734b = new C6734b(8, null);
        }
        mo1872g(c6734b);
    }

    /* renamed from: f */
    public abstract boolean mo1873f();

    /* renamed from: g */
    public abstract void mo1872g(C6734b c6734b);
}
