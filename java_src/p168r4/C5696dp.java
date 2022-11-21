package p168r4;

import android.content.Context;
import android.os.Binder;
import java.util.concurrent.Future;
import p235z2.C7601t;
/* renamed from: r4.dp */
/* loaded from: classes2.dex */
public final class C5696dp {

    /* renamed from: a */
    public C6251so f22392a;

    /* renamed from: b */
    public boolean f22393b;

    /* renamed from: c */
    public final Context f22394c;

    /* renamed from: d */
    public final Object f22395d = new Object();

    public C5696dp(Context context) {
        this.f22394c = context;
    }

    /* renamed from: f */
    public static /* synthetic */ void m12013f(C5696dp c5696dp) {
        synchronized (c5696dp.f22395d) {
            C6251so c6251so = c5696dp.f22392a;
            if (c6251so == null) {
                return;
            }
            c6251so.mo1996e();
            c5696dp.f22392a = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: e */
    public final Future<C5771fp> m12014e(C6288to c6288to) {
        C6436xo c6436xo = new C6436xo(this);
        C5623bp c5623bp = new C5623bp(this, c6288to, c6436xo);
        C5659cp c5659cp = new C5659cp(this, c6436xo);
        synchronized (this.f22395d) {
            C6251so c6251so = new C6251so(this.f22394c, C7601t.m925r().m26396a(), c5623bp, c5659cp);
            this.f22392a = c6251so;
            c6251so.m1985p();
        }
        return c6436xo;
    }
}
