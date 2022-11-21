package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.Purchase;
import p093j1.C4272a;
import p093j1.C4279d;
import p093j1.C4282e;
import p093j1.InterfaceC4275b;
import p093j1.InterfaceC4277c;
import p093j1.InterfaceC4285f;
import p093j1.InterfaceC4287g;
import p093j1.InterfaceC4289h;
/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes.dex */
public abstract class AbstractC1083a {

    /* renamed from: com.android.billingclient.api.a$a */
    /* loaded from: classes.dex */
    public static final class C1084a {

        /* renamed from: a */
        public boolean f2995a;

        /* renamed from: b */
        public final Context f2996b;

        /* renamed from: c */
        public InterfaceC4287g f2997c;

        public C1084a(Context context) {
            this.f2996b = context;
        }

        /* renamed from: b */
        public final C1084a m24596b() {
            this.f2995a = true;
            return this;
        }

        /* renamed from: c */
        public final C1084a m24595c(InterfaceC4287g interfaceC4287g) {
            this.f2997c = interfaceC4287g;
            return this;
        }

        /* renamed from: a */
        public final AbstractC1083a m24597a() {
            Context context = this.f2996b;
            if (context != null) {
                InterfaceC4287g interfaceC4287g = this.f2997c;
                if (interfaceC4287g != null) {
                    boolean z = this.f2995a;
                    if (z) {
                        return new C1085b(null, z, context, interfaceC4287g);
                    }
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    /* renamed from: f */
    public static C1084a m24598f(Context context) {
        return new C1084a(context);
    }

    /* renamed from: a */
    public abstract void mo24580a(C4272a c4272a, InterfaceC4275b interfaceC4275b);

    /* renamed from: b */
    public abstract void mo24579b(C4282e c4282e, InterfaceC4285f interfaceC4285f);

    /* renamed from: c */
    public abstract void mo24578c();

    /* renamed from: d */
    public abstract boolean mo24577d();

    /* renamed from: e */
    public abstract C1087c mo24576e(Activity activity, C4279d c4279d);

    /* renamed from: g */
    public abstract Purchase.C1081a mo24575g(String str);

    /* renamed from: h */
    public abstract void mo24574h(C1089d c1089d, InterfaceC4289h interfaceC4289h);

    /* renamed from: i */
    public abstract void mo24573i(InterfaceC4277c interfaceC4277c);
}
