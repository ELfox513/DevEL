package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.activity.d */
/* loaded from: classes.dex */
public abstract class AbstractC0133d {

    /* renamed from: a */
    public boolean f209a;

    /* renamed from: b */
    public CopyOnWriteArrayList<InterfaceC0130a> f210b = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public void m27621a(InterfaceC0130a interfaceC0130a) {
        this.f210b.add(interfaceC0130a);
    }

    /* renamed from: b */
    public abstract void mo26913b();

    /* renamed from: c */
    public final boolean m27620c() {
        return this.f209a;
    }

    /* renamed from: e */
    public void m27618e(InterfaceC0130a interfaceC0130a) {
        this.f210b.remove(interfaceC0130a);
    }

    /* renamed from: f */
    public final void m27617f(boolean z) {
        this.f209a = z;
    }

    /* renamed from: d */
    public final void m27619d() {
        Iterator<InterfaceC0130a> it = this.f210b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    public AbstractC0133d(boolean z) {
        this.f209a = z;
    }
}
