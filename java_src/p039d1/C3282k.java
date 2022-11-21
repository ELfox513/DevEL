package p039d1;

import android.content.Context;
import p084i1.InterfaceC4086a;
/* renamed from: d1.k */
/* loaded from: classes.dex */
public class C3282k {

    /* renamed from: e */
    public static C3282k f15593e;

    /* renamed from: a */
    public C3268a f15594a;

    /* renamed from: b */
    public C3269b f15595b;

    /* renamed from: c */
    public C3278i f15596c;

    /* renamed from: d */
    public C3281j f15597d;

    /* renamed from: a */
    public C3268a m19201a() {
        return this.f15594a;
    }

    /* renamed from: b */
    public C3269b m19200b() {
        return this.f15595b;
    }

    /* renamed from: d */
    public C3278i m19198d() {
        return this.f15596c;
    }

    /* renamed from: e */
    public C3281j m19197e() {
        return this.f15597d;
    }

    /* renamed from: c */
    public static synchronized C3282k m19199c(Context context, InterfaceC4086a interfaceC4086a) {
        C3282k c3282k;
        synchronized (C3282k.class) {
            if (f15593e == null) {
                f15593e = new C3282k(context, interfaceC4086a);
            }
            c3282k = f15593e;
        }
        return c3282k;
    }

    public C3282k(Context context, InterfaceC4086a interfaceC4086a) {
        Context applicationContext = context.getApplicationContext();
        this.f15594a = new C3268a(applicationContext, interfaceC4086a);
        this.f15595b = new C3269b(applicationContext, interfaceC4086a);
        this.f15596c = new C3278i(applicationContext, interfaceC4086a);
        this.f15597d = new C3281j(applicationContext, interfaceC4086a);
    }
}
