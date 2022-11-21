package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements InterfaceC0320e {

    /* renamed from: a */
    public final InterfaceC0315b f1188a;

    /* renamed from: b */
    public final InterfaceC0320e f1189b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0309a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1190a;

        static {
            int[] iArr = new int[AbstractC0317d.EnumC0318a.values().length];
            f1190a = iArr;
            try {
                iArr[AbstractC0317d.EnumC0318a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1190a[AbstractC0317d.EnumC0318a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // androidx.lifecycle.InterfaceC0320e
    /* renamed from: c */
    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
        switch (C0309a.f1190a[enumC0318a.ordinal()]) {
            case 1:
                this.f1188a.m26802b(interfaceC0322g);
                break;
            case 2:
                this.f1188a.m26798g(interfaceC0322g);
                break;
            case 3:
                this.f1188a.m26803a(interfaceC0322g);
                break;
            case 4:
                this.f1188a.m26801d(interfaceC0322g);
                break;
            case 5:
                this.f1188a.m26800e(interfaceC0322g);
                break;
            case 6:
                this.f1188a.m26799f(interfaceC0322g);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        InterfaceC0320e interfaceC0320e = this.f1189b;
        if (interfaceC0320e != null) {
            interfaceC0320e.mo26714c(interfaceC0322g, enumC0318a);
        }
    }

    public FullLifecycleObserverAdapter(InterfaceC0315b interfaceC0315b, InterfaceC0320e interfaceC0320e) {
        this.f1188a = interfaceC0315b;
        this.f1189b = interfaceC0320e;
    }
}
