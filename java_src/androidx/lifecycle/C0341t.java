package androidx.lifecycle;

import java.util.HashMap;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes.dex */
public class C0341t {

    /* renamed from: a */
    public final HashMap<String, AbstractC0337r> f1252a = new HashMap<>();

    /* renamed from: b */
    public final AbstractC0337r m26749b(String str) {
        return this.f1252a.get(str);
    }

    /* renamed from: a */
    public final void m26750a() {
        for (AbstractC0337r abstractC0337r : this.f1252a.values()) {
            abstractC0337r.m26755a();
        }
        this.f1252a.clear();
    }

    /* renamed from: c */
    public final void m26748c(String str, AbstractC0337r abstractC0337r) {
        AbstractC0337r put = this.f1252a.put(str, abstractC0337r);
        if (put != null) {
            put.mo16691c();
        }
    }
}
