package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p052e5.AbstractC3379d;
import p052e5.C3376a;
import p052e5.C3377b;
import p070g5.C3611b5;
import p070g5.C3887y5;
import p070g5.InterfaceC3709j7;
import p220x3.C7297q;
@Deprecated
/* loaded from: classes2.dex */
public class AppMeasurement {

    /* renamed from: b */
    public static volatile AppMeasurement f7833b;

    /* renamed from: a */
    public final AbstractC3379d f7834a;

    /* loaded from: classes2.dex */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @Keep
        public String mName;
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(Bundle bundle) {
            C7297q.m1883j(bundle);
            this.mAppId = (String) C3887y5.m17821a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C3887y5.m17821a(bundle, "origin", String.class, null);
            this.mName = (String) C3887y5.m17821a(bundle, "name", String.class, null);
            this.mValue = C3887y5.m17821a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C3887y5.m17821a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C3887y5.m17821a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C3887y5.m17821a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C3887y5.m17821a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C3887y5.m17821a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C3887y5.m17821a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C3887y5.m17821a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C3887y5.m17821a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C3887y5.m17821a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C3887y5.m17821a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C3887y5.m17821a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C3887y5.m17821a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public AppMeasurement(C3611b5 c3611b5) {
        this.f7834a = new C3376a(c3611b5);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f7834a.mo13409g(str);
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f7834a.mo13405k(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f7834a.mo13404l(str);
    }

    @Keep
    public long generateEventId() {
        return this.f7834a.mo13415a();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f7834a.mo13410f();
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f7834a.mo13406j();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f7834a.mo13408h();
    }

    @Keep
    public String getGmpAppId() {
        return this.f7834a.mo13407i();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        return this.f7834a.mo13403q(str);
    }

    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f7834a.mo13413c(str, str2, z);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f7834a.mo13411e(str, str2, bundle);
    }

    public AppMeasurement(InterfaceC3709j7 interfaceC3709j7) {
        this.f7834a = new C3377b(interfaceC3709j7);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:13:0x002e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @androidx.annotation.Keep
    @java.lang.Deprecated
    public static com.google.android.gms.measurement.AppMeasurement getInstance(android.content.Context r14) {
        /*
            com.google.android.gms.measurement.AppMeasurement r0 = com.google.android.gms.measurement.AppMeasurement.f7833b
            if (r0 != 0) goto L5a
            java.lang.Class<com.google.android.gms.measurement.AppMeasurement> r0 = com.google.android.gms.measurement.AppMeasurement.class
            monitor-enter(r0)
            com.google.android.gms.measurement.AppMeasurement r1 = com.google.android.gms.measurement.AppMeasurement.f7833b     // Catch: java.lang.Throwable -> L57
            if (r1 != 0) goto L55
            r1 = 0
            java.lang.Class<com.google.firebase.analytics.FirebaseAnalytics> r2 = com.google.firebase.analytics.FirebaseAnalytics.class
            r3 = 2
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L57
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> L57
            java.lang.Class<android.os.Bundle> r5 = android.os.Bundle.class
            r7 = 1
            r4[r7] = r5     // Catch: java.lang.Throwable -> L57
            java.lang.String r5 = "getScionFrontendApiImplementation"
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r5, r4)     // Catch: java.lang.Throwable -> L57
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L57
            r3[r6] = r14     // Catch: java.lang.Throwable -> L57
            r3[r7] = r1     // Catch: java.lang.Throwable -> L57
            java.lang.Object r2 = r2.invoke(r1, r3)     // Catch: java.lang.Throwable -> L57
            g5.j7 r2 = (p070g5.InterfaceC3709j7) r2     // Catch: java.lang.Throwable -> L57
            goto L30
        L2e:
            r2 = r1
        L30:
            if (r2 == 0) goto L3a
            com.google.android.gms.measurement.AppMeasurement r14 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L57
            r14.<init>(r2)     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.measurement.AppMeasurement.f7833b = r14     // Catch: java.lang.Throwable -> L57
            goto L55
        L3a:
            b5.o1 r13 = new b5.o1     // Catch: java.lang.Throwable -> L57
            r3 = 0
            r5 = 0
            r7 = 1
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r2 = r13
            r2.<init>(r3, r5, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L57
            g5.b5 r14 = p070g5.C3611b5.m18544C(r14, r13, r1)     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.measurement.AppMeasurement r1 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L57
            r1.<init>(r14)     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.measurement.AppMeasurement.f7833b = r1     // Catch: java.lang.Throwable -> L57
        L55:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            goto L5a
        L57:
            r14 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            throw r14
        L5a:
            com.google.android.gms.measurement.AppMeasurement r14 = com.google.android.gms.measurement.AppMeasurement.f7833b
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.AppMeasurement.getInstance(android.content.Context):com.google.android.gms.measurement.AppMeasurement");
    }

    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        int size;
        List<Bundle> mo13414b = this.f7834a.mo13414b(str, str2);
        if (mo13414b == null) {
            size = 0;
        } else {
            size = mo13414b.size();
        }
        ArrayList arrayList = new ArrayList(size);
        for (Bundle bundle : mo13414b) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        C7297q.m1883j(conditionalUserProperty);
        AbstractC3379d abstractC3379d = this.f7834a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            C3887y5.m17820b(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        abstractC3379d.mo13412d(bundle);
    }
}
