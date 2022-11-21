.class Lcom/prineside/tdi2/AndroidLauncher$6$1;
.super Lt2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher$6;->onAdLoaded(Lc3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    invoke-direct {p0}, Lt2/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextInterstitialAd onAdDismissedFullScreenContent"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object v0, v0, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->N(Lcom/prineside/tdi2/AndroidLauncher;Lc3/a;)Lc3/a;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object v0, v0, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->q(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lt2/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadNextInterstitialAd onAdFailedToShowFullScreenContent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lt2/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object p1, p1, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/AndroidLauncher;->N(Lcom/prineside/tdi2/AndroidLauncher;Lc3/a;)Lc3/a;

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object p1, p1, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->q(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    const-string v0, "AndroidLauncher"

    const-string v1, "loadNextInterstitialAd onAdShowedFullScreenContent"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object v0, v0, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->N(Lcom/prineside/tdi2/AndroidLauncher;Lc3/a;)Lc3/a;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$6$1;->a:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object v0, v0, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->q(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method
