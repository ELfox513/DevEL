package p168r4;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
/* renamed from: r4.ah2 */
/* loaded from: classes2.dex */
public final class ah2 implements eg2<bh2> {

    /* renamed from: a */
    public final Executor f20480a;

    /* renamed from: b */
    public final String f20481b;

    /* renamed from: c */
    public final PackageInfo f20482c;

    /* renamed from: d */
    public final el0 f20483d;

    public ah2(el0 el0Var, Executor executor, String str, PackageInfo packageInfo, int i, byte[] bArr) {
        this.f20483d = el0Var;
        this.f20480a = executor;
        this.f20481b = str;
        this.f20482c = packageInfo;
    }

    /* renamed from: a */
    public final /* synthetic */ h83 m13017a(Throwable th) {
        return y73.m4814a(new bh2(this.f20481b));
    }

    @Override // p168r4.eg2
    public final h83<bh2> zza() {
        return y73.m4808g(y73.m4805j(y73.m4814a(this.f20481b), yg2.f34074a, this.f20480a), Throwable.class, new e73(this) { // from class: r4.zg2

            /* renamed from: a */
            public final ah2 f34613a;

            {
                this.f34613a = this;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f34613a.m13017a((Throwable) obj);
            }
        }, this.f20480a);
    }
}
