package androidx.activity;

import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    public final Runnable f201a;

    /* renamed from: b */
    public final ArrayDeque<AbstractC0133d> f202b = new ArrayDeque<>();

    /* loaded from: classes.dex */
    public class LifecycleOnBackPressedCancellable implements InterfaceC0320e, InterfaceC0130a {

        /* renamed from: a */
        public final AbstractC0317d f203a;

        /* renamed from: b */
        public final AbstractC0133d f204b;

        /* renamed from: c */
        public InterfaceC0130a f205c;

        public LifecycleOnBackPressedCancellable(AbstractC0317d abstractC0317d, AbstractC0133d abstractC0133d) {
            this.f203a = abstractC0317d;
            this.f204b = abstractC0133d;
            abstractC0317d.mo26795a(this);
        }

        @Override // androidx.lifecycle.InterfaceC0320e
        /* renamed from: c */
        public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
            if (enumC0318a == AbstractC0317d.EnumC0318a.ON_START) {
                this.f205c = OnBackPressedDispatcher.this.m27625b(this.f204b);
            } else if (enumC0318a == AbstractC0317d.EnumC0318a.ON_STOP) {
                InterfaceC0130a interfaceC0130a = this.f205c;
                if (interfaceC0130a != null) {
                    interfaceC0130a.cancel();
                }
            } else if (enumC0318a == AbstractC0317d.EnumC0318a.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.InterfaceC0130a
        public void cancel() {
            this.f203a.mo26793c(this);
            this.f204b.m27618e(this);
            InterfaceC0130a interfaceC0130a = this.f205c;
            if (interfaceC0130a != null) {
                interfaceC0130a.cancel();
                this.f205c = null;
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes.dex */
    public class C0129a implements InterfaceC0130a {

        /* renamed from: a */
        public final AbstractC0133d f207a;

        public C0129a(AbstractC0133d abstractC0133d) {
            this.f207a = abstractC0133d;
        }

        @Override // androidx.activity.InterfaceC0130a
        public void cancel() {
            OnBackPressedDispatcher.this.f202b.remove(this.f207a);
            this.f207a.m27618e(this);
        }
    }

    /* renamed from: b */
    public InterfaceC0130a m27625b(AbstractC0133d abstractC0133d) {
        this.f202b.add(abstractC0133d);
        C0129a c0129a = new C0129a(abstractC0133d);
        abstractC0133d.m27621a(c0129a);
        return c0129a;
    }

    /* renamed from: c */
    public void m27624c() {
        Iterator<AbstractC0133d> descendingIterator = this.f202b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0133d next = descendingIterator.next();
            if (next.m27620c()) {
                next.mo26913b();
                return;
            }
        }
        Runnable runnable = this.f201a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f201a = runnable;
    }

    /* renamed from: a */
    public void m27626a(InterfaceC0322g interfaceC0322g, AbstractC0133d abstractC0133d) {
        AbstractC0317d lifecycle = interfaceC0322g.getLifecycle();
        if (lifecycle.mo26794b() == AbstractC0317d.EnumC0319b.DESTROYED) {
            return;
        }
        abstractC0133d.m27621a(new LifecycleOnBackPressedCancellable(lifecycle, abstractC0133d));
    }
}
