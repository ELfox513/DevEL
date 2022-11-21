package p168r4;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.ug2 */
/* loaded from: classes2.dex */
public final class ug2 implements eg2<vg2> {

    /* renamed from: a */
    public final Context f32279a;

    /* renamed from: b */
    public final ScheduledExecutorService f32280b;

    /* renamed from: c */
    public final Executor f32281c;

    /* renamed from: d */
    public final int f32282d;

    /* renamed from: e */
    public final el0 f32283e;

    public ug2(el0 el0Var, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, byte[] bArr) {
        this.f32283e = el0Var;
        this.f32279a = context;
        this.f32280b = scheduledExecutorService;
        this.f32281c = executor;
        this.f32282d = i;
    }

    @Override // p168r4.eg2
    public final h83<vg2> zza() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30799F0)).booleanValue()) {
            return y73.m4809f((o73) y73.m4807h(y73.m4805j(o73.m8869E(this.f32283e.m11710a(this.f32279a, this.f32282d)), sg2.f31358a, this.f32281c), ((Long) C5592av.m12935c().m8098c(C6225rz.f30807G0)).longValue(), TimeUnit.MILLISECONDS, this.f32280b), Throwable.class, new p03(this) { // from class: r4.tg2

                /* renamed from: a */
                public final ug2 f31859a;

                {
                    this.f31859a = this;
                }

                @Override // p168r4.p03
                public final Object apply(Object obj) {
                    return this.f31859a.m6519a((Throwable) obj);
                }
            }, this.f32281c);
        }
        return y73.m4812c(new Exception("Did not ad Ad ID into query param."));
    }

    /* renamed from: a */
    public final /* synthetic */ vg2 m6519a(Throwable th) {
        String string;
        C6479yu.m4568a();
        ContentResolver contentResolver = this.f32279a.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, "android_id");
        }
        return new vg2(null, string);
    }
}
