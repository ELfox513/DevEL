package com.android.billingclient.api;

import android.text.TextUtils;
/* renamed from: com.android.billingclient.api.m */
/* loaded from: classes.dex */
public class C1099m {

    /* renamed from: a */
    public final String f3068a;

    /* renamed from: b */
    public final String f3069b;

    /* renamed from: com.android.billingclient.api.m$a */
    /* loaded from: classes.dex */
    public static class C1100a {

        /* renamed from: a */
        public String f3070a;

        public C1100a() {
        }

        /* renamed from: a */
        public final C1100a m24528a(String str) {
            this.f3070a = str;
            return this;
        }

        /* renamed from: b */
        public final C1099m m24527b() {
            if (!TextUtils.isEmpty(this.f3070a)) {
                return new C1099m(this.f3070a);
            }
            throw new IllegalArgumentException("SKU must be set.");
        }
    }

    public C1099m(String str, String str2) {
        this.f3068a = str;
        this.f3069b = null;
    }

    /* renamed from: a */
    public final String m24530a() {
        return this.f3068a;
    }

    /* renamed from: b */
    public final String m24529b() {
        return this.f3069b;
    }
}
