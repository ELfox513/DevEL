.class Lcom/prineside/tdi2/AndroidLauncher$5;
.super Lk3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/prineside/tdi2/AndroidLauncher;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;J)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    iput-wide p2, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->a:J

    invoke-direct {p0}, Lk3/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lt2/m;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadNextRewardedInterstitialAd onAdFailedToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lt2/m;->f()Lt2/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", falling back to regular interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidLauncher"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->I(Lcom/prineside/tdi2/AndroidLauncher;Lk3/a;)Lk3/a;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->J(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ad_format"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rewarded_interstitial"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "error"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lt2/m;->f()Lt2/u;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    aput-object p1, v1, v2

    const-string p1, "ad_load_failure"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->L(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lk3/a;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$5;->onAdLoaded(Lk3/a;)V

    return-void
.end method

.method public onAdLoaded(Lk3/a;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->I(Lcom/prineside/tdi2/AndroidLauncher;Lk3/a;)Lk3/a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadNextRewardedInterstitialAd onAdLoaded in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->J(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object p1

    const-string v0, "ad_load_success"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ad_format"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rewarded_interstitial"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->a:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$5;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->G(Lcom/prineside/tdi2/AndroidLauncher;)Lk3/a;

    move-result-object p1

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$5$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$5$1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$5;)V

    invoke-virtual {p1, v0}, Lk3/a;->b(Lt2/l;)V

    return-void
.end method
