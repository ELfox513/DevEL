.class Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->retrieved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/BasicLevel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;->a:Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loaded "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;->a:Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;

    iget-object v0, v0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->c:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from server"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadlessReplayValidationGame"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;->a:Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;

    iget-object p1, p1, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;->retrieved(Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method
