.class public abstract Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ActionResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ActionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionResolverAdapter"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotification(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public canShowRewardAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearNotification(I)V
    .locals 0

    return-void
.end method

.method public eligibleForFreeDoubleGain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateDeviceReport(Lcom/badlogic/gdx/utils/Json;)V
    .locals 0

    return-void
.end method

.method public getBestScreenResolution()Lcom/prineside/tdi2/utils/IntPair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteBuddyClassLoadingStrategy()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedMusicManager()Lcom/prineside/tdi2/managers/MusicManager;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;->a:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    invoke-direct {v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;->a:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;->a:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    return-object v0
.end method

.method public getMobilePasswordInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Only for mobile devices"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPurchaseManager()Lcom/badlogic/gdx/pay/PurchaseManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenSafeAreaInsets()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSecondsTillCanShowRewardAd()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getWindowsGraphicsScale()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public handleTextFieldFocus(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Z)V
    .locals 0

    return-void
.end method

.method public handleThreadExceptions(Ljava/lang/Thread;)V
    .locals 0

    return-void
.end method

.method public hasGoogleAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAppModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSignedInWithGoogle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logCurrencyReceived(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logIAP(Lcom/prineside/tdi2/Config$ProductId;Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    return-void
.end method

.method public logLogined(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logRewardedVideoViewed(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .locals 0

    return-void
.end method

.method public logSignedUp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Audio;->newAudioDevice(IZ)Lcom/badlogic/gdx/audio/AudioDevice;

    move-result-object p1

    return-object p1
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method public openHandbook()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->WIKI_URL:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public openSupportPage()V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v1, "https://prineside.com/support.html"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    const-string v1, "sup.prineside@gmail.com"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-check"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v4, "Contact us: sup.prineside@gmail.com"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method public requestGoogleAuth(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public requestLogin()V
    .locals 0

    return-void
.end method

.method public rewardAdsAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFpsLimit(I)V
    .locals 0

    return-void
.end method

.method public showPersonalCenterOverlay()V
    .locals 0

    return-void
.end method

.method public showRewardAd(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .locals 0
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

    return-void
.end method

.method public signOutGoogle()V
    .locals 0

    return-void
.end method

.method public unlockAchievement(Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 0

    return-void
.end method
