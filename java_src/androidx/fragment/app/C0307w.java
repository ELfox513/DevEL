package androidx.fragment.app;

import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0323h;
import androidx.lifecycle.InterfaceC0322g;
/* renamed from: androidx.fragment.app.w */
/* loaded from: classes.dex */
public class C0307w implements InterfaceC0322g {

    /* renamed from: a */
    public C0323h f1186a = null;

    /* renamed from: a */
    public void m26824a(AbstractC0317d.EnumC0318a enumC0318a) {
        this.f1186a.m26787i(enumC0318a);
    }

    /* renamed from: d */
    public boolean m26822d() {
        return this.f1186a != null;
    }

    /* renamed from: c */
    public void m26823c() {
        if (this.f1186a == null) {
            this.f1186a = new C0323h(this);
        }
    }

    @Override // androidx.lifecycle.InterfaceC0322g
    public AbstractC0317d getLifecycle() {
        m26823c();
        return this.f1186a;
    }
}
