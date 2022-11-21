package p018b5;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: b5.c */
/* loaded from: classes2.dex */
public final class C0589c {

    /* renamed from: a */
    public C0572b f1752a;

    /* renamed from: b */
    public C0572b f1753b;

    /* renamed from: c */
    public final List<C0572b> f1754c;

    public C0589c() {
        this.f1752a = new C0572b("", 0L, null);
        this.f1753b = new C0572b("", 0L, null);
        this.f1754c = new ArrayList();
    }

    /* renamed from: a */
    public final C0572b m26127a() {
        return this.f1752a;
    }

    /* renamed from: b */
    public final C0572b m26126b() {
        return this.f1753b;
    }

    /* renamed from: c */
    public final List<C0572b> m26125c() {
        return this.f1754c;
    }

    /* renamed from: e */
    public final void m26123e(String str, long j, Map<String, Object> map) {
        this.f1754c.add(new C0572b(str, j, map));
    }

    /* renamed from: f */
    public final void m26122f(C0572b c0572b) {
        this.f1753b = c0572b;
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        C0589c c0589c = new C0589c(this.f1752a.clone());
        for (C0572b c0572b : this.f1754c) {
            c0589c.f1754c.add(c0572b.clone());
        }
        return c0589c;
    }

    /* renamed from: d */
    public final void m26124d(C0572b c0572b) {
        this.f1752a = c0572b;
        this.f1753b = c0572b.clone();
        this.f1754c.clear();
    }

    public C0589c(C0572b c0572b) {
        this.f1752a = c0572b;
        this.f1753b = c0572b.clone();
        this.f1754c = new ArrayList();
    }
}
