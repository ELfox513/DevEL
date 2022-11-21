package com.google.firebase.perf.session;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p072g7.C3907a;
import p072g7.InterfaceC3909b;
import p108k7.EnumC4488d;
import p231y6.AbstractC7518b;
import p231y6.C7515a;
@Keep
/* loaded from: classes2.dex */
public class SessionManager extends AbstractC7518b {
    @SuppressLint({"StaticFieldLeak"})
    private static final SessionManager instance = new SessionManager();
    private final C7515a appStateMonitor;
    private final Set<WeakReference<InterfaceC3909b>> clients;
    private final GaugeManager gaugeManager;
    private C3907a perfSession;

    private SessionManager() {
        this(GaugeManager.getInstance(), C3907a.m17796j(), C7515a.m1326b());
    }

    public static SessionManager getInstance() {
        return instance;
    }

    public final C3907a perfSession() {
        return this.perfSession;
    }

    public void setPerfSession(C3907a c3907a) {
        this.perfSession = c3907a;
    }

    public SessionManager(GaugeManager gaugeManager, C3907a c3907a, C7515a c7515a) {
        this.clients = new HashSet();
        this.gaugeManager = gaugeManager;
        this.perfSession = c3907a;
        this.appStateMonitor = c7515a;
        registerForAppState();
    }

    private void logGaugeMetadataIfCollectionEnabled(EnumC4488d enumC4488d) {
        if (this.perfSession.m17793p()) {
            this.gaugeManager.logGaugeMetadata(this.perfSession.m17791v(), enumC4488d);
        }
    }

    private void startOrStopCollectingGauges(EnumC4488d enumC4488d) {
        if (this.perfSession.m17793p()) {
            this.gaugeManager.startCollectingGauges(this.perfSession, enumC4488d);
        } else {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    public void registerForSessionUpdates(WeakReference<InterfaceC3909b> weakReference) {
        synchronized (this.clients) {
            this.clients.add(weakReference);
        }
    }

    public void unregisterForSessionUpdates(WeakReference<InterfaceC3909b> weakReference) {
        synchronized (this.clients) {
            this.clients.remove(weakReference);
        }
    }

    public void updatePerfSession(EnumC4488d enumC4488d) {
        synchronized (this.clients) {
            this.perfSession = C3907a.m17796j();
            Iterator<WeakReference<InterfaceC3909b>> it = this.clients.iterator();
            while (it.hasNext()) {
                InterfaceC3909b interfaceC3909b = it.next().get();
                if (interfaceC3909b != null) {
                    interfaceC3909b.mo17786a(this.perfSession);
                } else {
                    it.remove();
                }
            }
        }
        logGaugeMetadataIfCollectionEnabled(enumC4488d);
        startOrStopCollectingGauges(enumC4488d);
    }

    public boolean updatePerfSessionIfExpired() {
        if (this.perfSession.m17794n()) {
            updatePerfSession(this.appStateMonitor.m1327a());
            return true;
        }
        return false;
    }

    @Override // p231y6.AbstractC7518b, p231y6.C7515a.InterfaceC7517b
    public void onUpdateAppState(EnumC4488d enumC4488d) {
        super.onUpdateAppState(enumC4488d);
        if (this.appStateMonitor.m1321g()) {
            return;
        }
        if (enumC4488d == EnumC4488d.FOREGROUND) {
            updatePerfSession(enumC4488d);
        } else if (!updatePerfSessionIfExpired()) {
            startOrStopCollectingGauges(enumC4488d);
        }
    }
}
