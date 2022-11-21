package p018b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: b5.d1 */
/* loaded from: classes2.dex */
public final class C0608d1 extends C0794o0 implements InterfaceC0642f1 {
    public C0608d1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // p018b5.InterfaceC0642f1
    public final void beginAdUnitExposure(String str, long j) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeLong(j);
        m25562t0(23, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25476d(m25564j0, bundle);
        m25562t0(9, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void endAdUnitExposure(String str, long j) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeLong(j);
        m25562t0(24, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void generateEventId(InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(22, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getCachedAppInstanceId(InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(19, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getConditionalUserProperties(String str, String str2, InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(10, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getCurrentScreenClass(InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(17, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getCurrentScreenName(InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(16, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getGmpAppId(InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(21, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getMaxUserProperties(String str, InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(6, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void getUserProperties(String str, String str2, boolean z, InterfaceC0693i1 interfaceC0693i1) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25477c(m25564j0, z);
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25562t0(5, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void initialize(InterfaceC3512a interfaceC3512a, C0795o1 c0795o1, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        C0828q0.m25476d(m25564j0, c0795o1);
        m25564j0.writeLong(j);
        m25562t0(1, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25476d(m25564j0, bundle);
        C0828q0.m25477c(m25564j0, z);
        C0828q0.m25477c(m25564j0, z2);
        m25564j0.writeLong(j);
        m25562t0(2, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void logHealthData(int i, String str, InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2, InterfaceC3512a interfaceC3512a3) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeInt(5);
        m25564j0.writeString(str);
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        C0828q0.m25475e(m25564j0, interfaceC3512a2);
        C0828q0.m25475e(m25564j0, interfaceC3512a3);
        m25562t0(33, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityCreated(InterfaceC3512a interfaceC3512a, Bundle bundle, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        C0828q0.m25476d(m25564j0, bundle);
        m25564j0.writeLong(j);
        m25562t0(27, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityDestroyed(InterfaceC3512a interfaceC3512a, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeLong(j);
        m25562t0(28, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityPaused(InterfaceC3512a interfaceC3512a, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeLong(j);
        m25562t0(29, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityResumed(InterfaceC3512a interfaceC3512a, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeLong(j);
        m25562t0(30, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivitySaveInstanceState(InterfaceC3512a interfaceC3512a, InterfaceC0693i1 interfaceC0693i1, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25564j0.writeLong(j);
        m25562t0(31, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityStarted(InterfaceC3512a interfaceC3512a, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeLong(j);
        m25562t0(25, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void onActivityStopped(InterfaceC3512a interfaceC3512a, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeLong(j);
        m25562t0(26, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void performAction(Bundle bundle, InterfaceC0693i1 interfaceC0693i1, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, bundle);
        C0828q0.m25475e(m25564j0, interfaceC0693i1);
        m25564j0.writeLong(j);
        m25562t0(32, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void registerOnMeasurementEventListener(InterfaceC0744l1 interfaceC0744l1) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC0744l1);
        m25562t0(35, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, bundle);
        m25564j0.writeLong(j);
        m25562t0(8, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void setConsent(Bundle bundle, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, bundle);
        m25564j0.writeLong(j);
        m25562t0(44, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void setCurrentScreen(InterfaceC3512a interfaceC3512a, String str, String str2, long j) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        m25564j0.writeLong(j);
        m25562t0(15, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void setDataCollectionEnabled(boolean z) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25477c(m25564j0, z);
        m25562t0(39, m25564j0);
    }

    @Override // p018b5.InterfaceC0642f1
    public final void setUserProperty(String str, String str2, InterfaceC3512a interfaceC3512a, boolean z, long j) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25475e(m25564j0, interfaceC3512a);
        C0828q0.m25477c(m25564j0, z);
        m25564j0.writeLong(j);
        m25562t0(4, m25564j0);
    }
}
