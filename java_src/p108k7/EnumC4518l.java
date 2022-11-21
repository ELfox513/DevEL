package p108k7;

import p144o7.C5102a0;
/* renamed from: k7.l */
/* loaded from: classes2.dex */
public enum EnumC4518l implements C5102a0.InterfaceC5105c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);
    

    /* renamed from: k */
    public static final C5102a0.InterfaceC5106d<EnumC4518l> f18535k = new C5102a0.InterfaceC5106d<EnumC4518l>() { // from class: k7.l.a
        @Override // p144o7.C5102a0.InterfaceC5106d
        /* renamed from: b */
        public EnumC4518l mo14648a(int i) {
            return EnumC4518l.m16122c(i);
        }
    };

    /* renamed from: a */
    public final int f18537a;

    /* renamed from: k7.l$b */
    /* loaded from: classes2.dex */
    public static final class C4520b implements C5102a0.InterfaceC5107e {

        /* renamed from: a */
        public static final C5102a0.InterfaceC5107e f18538a = new C4520b();

        @Override // p144o7.C5102a0.InterfaceC5107e
        /* renamed from: a */
        public boolean mo14647a(int i) {
            return EnumC4518l.m16122c(i) != null;
        }
    }

    /* renamed from: d */
    public static C5102a0.InterfaceC5107e m16121d() {
        return C4520b.f18538a;
    }

    @Override // p144o7.C5102a0.InterfaceC5105c
    /* renamed from: e */
    public final int mo14649e() {
        return this.f18537a;
    }

    /* renamed from: c */
    public static EnumC4518l m16122c(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return GAUGES_AND_SYSTEM_EVENTS;
        }
        return SESSION_VERBOSITY_NONE;
    }

    EnumC4518l(int i) {
        this.f18537a = i;
    }
}
