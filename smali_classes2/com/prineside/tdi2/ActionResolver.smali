.class public interface abstract Lcom/prineside/tdi2/ActionResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ActionResolver$InitConfigManager;,
        Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;
    }
.end annotation


# virtual methods
.method public abstract addNotification(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract canShowRewardAd()Z
.end method

.method public abstract clearNotification(I)V
.end method

.method public abstract eligibleForFreeDoubleGain()Z
.end method

.method public abstract generateDeviceReport(Lcom/badlogic/gdx/utils/Json;)V
.end method

.method public abstract getBestScreenResolution()Lcom/prineside/tdi2/utils/IntPair;
.end method

.method public abstract getByteBuddyClassLoadingStrategy()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end method

.method public abstract getCachedMusicManager()Lcom/prineside/tdi2/managers/MusicManager;
.end method

.method public abstract getDeviceInfo()Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
.end method

.method public abstract getMobilePasswordInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getOkJoySDK()Lp7/d;
.end method

.method public abstract getPurchaseManager()Lcom/badlogic/gdx/pay/PurchaseManager;
.end method

.method public abstract getScreenSafeAreaInsets()[I
.end method

.method public abstract getSecondsTillCanShowRewardAd()I
.end method

.method public abstract getShortDeviceInfo()Ljava/lang/String;
.end method

.method public abstract getWindowsGraphicsScale()I
.end method

.method public abstract glGetStringi(II)Ljava/lang/String;
.end method

.method public abstract handleTextFieldFocus(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Z)V
.end method

.method public abstract handleThreadExceptions(Ljava/lang/Thread;)V
.end method

.method public abstract hasGoogleAuth()Z
.end method

.method public abstract hasNotifications()Z
.end method

.method public abstract isAppModified()Z
.end method

.method public abstract isSignedInWithGoogle()Z
.end method

.method public abstract logCurrencyReceived(Ljava/lang/String;I)V
.end method

.method public abstract logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract logIAP(Lcom/prineside/tdi2/Config$ProductId;Lcom/badlogic/gdx/pay/Transaction;)V
.end method

.method public abstract logLogined(Ljava/lang/String;)V
.end method

.method public abstract logRewardedVideoViewed(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
.end method

.method public abstract logSignedUp(Ljava/lang/String;)V
.end method

.method public abstract newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;
.end method

.method public abstract onExit()V
.end method

.method public abstract openHandbook()V
.end method

.method public abstract openSupportPage()V
.end method

.method public abstract requestGoogleAuth(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLogin()V
.end method

.method public abstract rewardAdsAvailable()Z
.end method

.method public abstract setFpsLimit(I)V
.end method

.method public abstract showPersonalCenterOverlay()V
.end method

.method public abstract showRewardAd(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract signOutGoogle()V
.end method

.method public abstract unlockAchievement(Lcom/prineside/tdi2/enums/AchievementType;)V
.end method
