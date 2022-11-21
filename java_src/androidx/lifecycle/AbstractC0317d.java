package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: androidx.lifecycle.d */
/* loaded from: classes.dex */
public abstract class AbstractC0317d {

    /* renamed from: a */
    public AtomicReference<Object> f1219a = new AtomicReference<>();

    /* renamed from: androidx.lifecycle.d$a */
    /* loaded from: classes.dex */
    public enum EnumC0318a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY
    }

    /* renamed from: androidx.lifecycle.d$b */
    /* loaded from: classes.dex */
    public enum EnumC0319b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        /* renamed from: c */
        public boolean m26796c(EnumC0319b enumC0319b) {
            return compareTo(enumC0319b) >= 0;
        }
    }

    /* renamed from: a */
    public abstract void mo26795a(InterfaceC0321f interfaceC0321f);

    /* renamed from: b */
    public abstract EnumC0319b mo26794b();

    /* renamed from: c */
    public abstract void mo26793c(InterfaceC0321f interfaceC0321f);
}
