.class public interface abstract Lb5/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lb5/i1;)V
.end method

.method public abstract getAppInstanceId(Lb5/i1;)V
.end method

.method public abstract getCachedAppInstanceId(Lb5/i1;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lb5/i1;)V
.end method

.method public abstract getCurrentScreenClass(Lb5/i1;)V
.end method

.method public abstract getCurrentScreenName(Lb5/i1;)V
.end method

.method public abstract getGmpAppId(Lb5/i1;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lb5/i1;)V
.end method

.method public abstract getTestFlag(Lb5/i1;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLb5/i1;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Lf4/a;Lb5/o1;J)V
.end method

.method public abstract isDataCollectionEnabled(Lb5/i1;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lb5/i1;J)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Lf4/a;Lf4/a;Lf4/a;)V
.end method

.method public abstract onActivityCreated(Lf4/a;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Lf4/a;J)V
.end method

.method public abstract onActivityPaused(Lf4/a;J)V
.end method

.method public abstract onActivityResumed(Lf4/a;J)V
.end method

.method public abstract onActivitySaveInstanceState(Lf4/a;Lb5/i1;J)V
.end method

.method public abstract onActivityStarted(Lf4/a;J)V
.end method

.method public abstract onActivityStopped(Lf4/a;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lb5/i1;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Lb5/l1;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Lf4/a;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Lb5/l1;)V
.end method

.method public abstract setInstanceIdProvider(Lb5/n1;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lf4/a;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Lb5/l1;)V
.end method
