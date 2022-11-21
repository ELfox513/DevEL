package p168r4;

import android.content.Context;
/* renamed from: r4.u90 */
/* loaded from: classes2.dex */
public final class u90 {

    /* renamed from: a */
    public final Object f32227a = new Object();

    /* renamed from: b */
    public final Object f32228b = new Object();

    /* renamed from: c */
    public ea0 f32229c;

    /* renamed from: d */
    public ea0 f32230d;

    /* renamed from: c */
    public static final Context m6597c(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final ea0 m6599a(Context context, im0 im0Var) {
        ea0 ea0Var;
        synchronized (this.f32228b) {
            if (this.f32230d == null) {
                this.f32230d = new ea0(m6597c(context), im0Var, o10.f28764b.m6673e());
            }
            ea0Var = this.f32230d;
        }
        return ea0Var;
    }

    /* renamed from: b */
    public final ea0 m6598b(Context context, im0 im0Var) {
        ea0 ea0Var;
        synchronized (this.f32227a) {
            if (this.f32229c == null) {
                this.f32229c = new ea0(m6597c(context), im0Var, (String) C5592av.m12935c().m8098c(C6225rz.f30966a));
            }
            ea0Var = this.f32229c;
        }
        return ea0Var;
    }
}
