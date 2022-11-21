.class Lcom/prineside/tdi2/AndroidLauncher$7;
.super Lj3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher;->n0()V
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

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    iput-wide p2, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->a:J

    invoke-direct {p0}, Lj3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lt2/m;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadNextAd onAdFailedToLoad "

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

    const-string v1, ", falling back to rewarded interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidLauncher"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->t(Lcom/prineside/tdi2/AndroidLauncher;Lj3/b;)Lj3/b;

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->J(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object v0

    const-string v1, "ad_load_failure"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ad_format"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "rewarded"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "time"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->a:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "error"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lt2/m;->f()Lt2/u;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->K(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method

.method public onAdLoaded(Lj3/b;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/AndroidLauncher;->t(Lcom/prineside/tdi2/AndroidLauncher;Lj3/b;)Lj3/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadNextAd onAdLoaded in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->J(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;

    move-result-object p1

    const-string v0, "ad_load_success"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ad_format"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rewarded"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->a:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$7;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->r(Lcom/prineside/tdi2/AndroidLauncher;)Lj3/b;

    move-result-object p1

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$7$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$7$1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$7;)V

    invoke-virtual {p1, v0}, Lj3/b;->b(Lt2/l;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj3/b;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$7;->onAdLoaded(Lj3/b;)V

    return-void
.end method
