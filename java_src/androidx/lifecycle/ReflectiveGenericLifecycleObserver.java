package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.C0312a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements InterfaceC0320e {

    /* renamed from: a */
    public final Object f1209a;

    /* renamed from: b */
    public final C0312a.C0313a f1210b;

    @Override // androidx.lifecycle.InterfaceC0320e
    /* renamed from: c */
    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
        this.f1210b.m26806a(interfaceC0322g, enumC0318a, this.f1209a);
    }

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f1209a = obj;
        this.f1210b = C0312a.f1212c.m26809c(obj.getClass());
    }
}
