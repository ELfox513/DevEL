package p231y6;

import java.lang.ref.WeakReference;
import p108k7.EnumC4488d;
import p231y6.C7515a;
/* renamed from: y6.b */
/* loaded from: classes2.dex */
public abstract class AbstractC7518b implements C7515a.InterfaceC7517b {
    private final WeakReference<C7515a.InterfaceC7517b> appStateCallback;
    private final C7515a appStateMonitor;
    private EnumC4488d currentAppState;
    private boolean isRegisteredForAppState;

    public AbstractC7518b() {
        this(C7515a.m1326b());
    }

    public EnumC4488d getAppState() {
        return this.currentAppState;
    }

    public void incrementTsnsCount(int i) {
        this.appStateMonitor.m1322f(i);
    }

    public AbstractC7518b(C7515a c7515a) {
        this.isRegisteredForAppState = false;
        this.currentAppState = EnumC4488d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.appStateMonitor = c7515a;
        this.appStateCallback = new WeakReference<>(this);
    }

    @Override // p231y6.C7515a.InterfaceC7517b
    public void onUpdateAppState(EnumC4488d enumC4488d) {
        EnumC4488d enumC4488d2 = this.currentAppState;
        EnumC4488d enumC4488d3 = EnumC4488d.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (enumC4488d2 == enumC4488d3) {
            this.currentAppState = enumC4488d;
        } else if (enumC4488d2 != enumC4488d && enumC4488d != enumC4488d3) {
            this.currentAppState = EnumC4488d.FOREGROUND_BACKGROUND;
        }
    }

    public void registerForAppState() {
        if (this.isRegisteredForAppState) {
            return;
        }
        this.currentAppState = this.appStateMonitor.m1327a();
        this.appStateMonitor.m1317k(this.appStateCallback);
        this.isRegisteredForAppState = true;
    }

    public void unregisterForAppState() {
        if (!this.isRegisteredForAppState) {
            return;
        }
        this.appStateMonitor.m1313o(this.appStateCallback);
        this.isRegisteredForAppState = false;
    }
}
