package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
import p235z2.C7601t;
import p235z2.RunnableC7590i;
/* renamed from: r4.eu0 */
/* loaded from: classes2.dex */
public final class eu0 {

    /* renamed from: a */
    public final im0 f23141a;

    /* renamed from: b */
    public final Context f23142b;

    /* renamed from: c */
    public final WeakReference<Context> f23143c;

    public /* synthetic */ eu0(cu0 cu0Var, du0 du0Var) {
        im0 im0Var;
        Context context;
        WeakReference<Context> weakReference;
        im0Var = cu0Var.f21679a;
        this.f23141a = im0Var;
        context = cu0Var.f21680b;
        this.f23142b = context;
        weakReference = cu0Var.f21681c;
        this.f23143c = weakReference;
    }

    /* renamed from: a */
    public final Context m11680a() {
        return this.f23142b;
    }

    /* renamed from: b */
    public final WeakReference<Context> m11679b() {
        return this.f23143c;
    }

    /* renamed from: c */
    public final im0 m11678c() {
        return this.f23141a;
    }

    /* renamed from: d */
    public final String m11677d() {
        return C7601t.m939d().m26339P(this.f23142b, this.f23141a.f25171a);
    }

    /* renamed from: e */
    public final C6300u m11676e() {
        return new C6300u(new RunnableC7590i(this.f23142b, this.f23141a));
    }
}
