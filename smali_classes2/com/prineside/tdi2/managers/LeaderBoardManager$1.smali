.class Lcom/prineside/tdi2/managers/LeaderBoardManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/LeaderBoardManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$1;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xb8

    iget p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->networkRequiredVersion:I

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$1;->a:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->a(Lcom/prineside/tdi2/managers/LeaderBoardManager;Z)Z

    const-string p1, "LeaderBoardManager"

    const-string v0, "submit disabled - too low game version"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/LeaderBoardManager$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V

    return-void
.end method
