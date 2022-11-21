package p018b5;

import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;
import p060f4.InterfaceC3512a;
/* renamed from: b5.f1 */
/* loaded from: classes2.dex */
public interface InterfaceC0642f1 extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(InterfaceC0693i1 interfaceC0693i1);

    void getAppInstanceId(InterfaceC0693i1 interfaceC0693i1);

    void getCachedAppInstanceId(InterfaceC0693i1 interfaceC0693i1);

    void getConditionalUserProperties(String str, String str2, InterfaceC0693i1 interfaceC0693i1);

    void getCurrentScreenClass(InterfaceC0693i1 interfaceC0693i1);

    void getCurrentScreenName(InterfaceC0693i1 interfaceC0693i1);

    void getGmpAppId(InterfaceC0693i1 interfaceC0693i1);

    void getMaxUserProperties(String str, InterfaceC0693i1 interfaceC0693i1);

    void getTestFlag(InterfaceC0693i1 interfaceC0693i1, int i);

    void getUserProperties(String str, String str2, boolean z, InterfaceC0693i1 interfaceC0693i1);

    void initForTests(Map map);

    void initialize(InterfaceC3512a interfaceC3512a, C0795o1 c0795o1, long j);

    void isDataCollectionEnabled(InterfaceC0693i1 interfaceC0693i1);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC0693i1 interfaceC0693i1, long j);

    void logHealthData(int i, String str, InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2, InterfaceC3512a interfaceC3512a3);

    void onActivityCreated(InterfaceC3512a interfaceC3512a, Bundle bundle, long j);

    void onActivityDestroyed(InterfaceC3512a interfaceC3512a, long j);

    void onActivityPaused(InterfaceC3512a interfaceC3512a, long j);

    void onActivityResumed(InterfaceC3512a interfaceC3512a, long j);

    void onActivitySaveInstanceState(InterfaceC3512a interfaceC3512a, InterfaceC0693i1 interfaceC0693i1, long j);

    void onActivityStarted(InterfaceC3512a interfaceC3512a, long j);

    void onActivityStopped(InterfaceC3512a interfaceC3512a, long j);

    void performAction(Bundle bundle, InterfaceC0693i1 interfaceC0693i1, long j);

    void registerOnMeasurementEventListener(InterfaceC0744l1 interfaceC0744l1);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(InterfaceC3512a interfaceC3512a, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(InterfaceC0744l1 interfaceC0744l1);

    void setInstanceIdProvider(InterfaceC0778n1 interfaceC0778n1);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, InterfaceC3512a interfaceC3512a, boolean z, long j);

    void unregisterOnMeasurementEventListener(InterfaceC0744l1 interfaceC0744l1);
}
