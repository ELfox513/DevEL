package p108k7;

import p144o7.C5102a0;
/* renamed from: k7.d */
/* loaded from: classes2.dex */
public enum EnumC4488d implements C5102a0.InterfaceC5105c {
    APPLICATION_PROCESS_STATE_UNKNOWN(0),
    FOREGROUND(1),
    BACKGROUND(2),
    FOREGROUND_BACKGROUND(3);
    

    /* renamed from: q */
    public static final C5102a0.InterfaceC5106d<EnumC4488d> f18502q = new C5102a0.InterfaceC5106d<EnumC4488d>() { // from class: k7.d.a
        @Override // p144o7.C5102a0.InterfaceC5106d
        /* renamed from: b */
        public EnumC4488d mo14648a(int i) {
            return EnumC4488d.m16280c(i);
        }
    };

    /* renamed from: a */
    public final int f18504a;

    /* renamed from: k7.d$b */
    /* loaded from: classes2.dex */
    public static final class C4490b implements C5102a0.InterfaceC5107e {

        /* renamed from: a */
        public static final C5102a0.InterfaceC5107e f18505a = new C4490b();

        @Override // p144o7.C5102a0.InterfaceC5107e
        /* renamed from: a */
        public boolean mo14647a(int i) {
            return EnumC4488d.m16280c(i) != null;
        }
    }

    /* renamed from: d */
    public static C5102a0.InterfaceC5107e m16279d() {
        return C4490b.f18505a;
    }

    @Override // p144o7.C5102a0.InterfaceC5105c
    /* renamed from: e */
    public final int mo14649e() {
        return this.f18504a;
    }

    /* renamed from: c */
    public static EnumC4488d m16280c(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return FOREGROUND_BACKGROUND;
                }
                return BACKGROUND;
            }
            return FOREGROUND;
        }
        return APPLICATION_PROCESS_STATE_UNKNOWN;
    }

    EnumC4488d(int i) {
        this.f18504a = i;
    }
}
