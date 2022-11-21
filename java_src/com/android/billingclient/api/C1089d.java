package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.android.billingclient.api.d */
/* loaded from: classes.dex */
public class C1089d {

    /* renamed from: a */
    public String f3027a;

    /* renamed from: b */
    public String f3028b;

    /* renamed from: c */
    public List<String> f3029c;

    /* renamed from: d */
    public List<C1099m> f3030d;

    /* renamed from: com.android.billingclient.api.d$a */
    /* loaded from: classes.dex */
    public static class C1090a {

        /* renamed from: a */
        public String f3031a;

        /* renamed from: b */
        public List<String> f3032b;

        public C1090a() {
        }

        /* renamed from: b */
        public C1090a m24534b(List<String> list) {
            this.f3032b = new ArrayList(list);
            return this;
        }

        /* renamed from: c */
        public C1090a m24533c(String str) {
            this.f3031a = str;
            return this;
        }

        /* renamed from: a */
        public C1089d m24535a() {
            if (this.f3031a != null) {
                if (this.f3032b != null) {
                    C1089d c1089d = new C1089d();
                    c1089d.f3027a = this.f3031a;
                    c1089d.f3029c = this.f3032b;
                    c1089d.f3030d = null;
                    c1089d.f3028b = null;
                    return c1089d;
                }
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
            throw new IllegalArgumentException("SKU type must be set");
        }
    }

    /* renamed from: c */
    public static C1090a m24540c() {
        return new C1090a();
    }

    /* renamed from: a */
    public String m24542a() {
        return this.f3027a;
    }

    /* renamed from: b */
    public List<String> m24541b() {
        return this.f3029c;
    }
}
