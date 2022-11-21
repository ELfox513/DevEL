.class Lcom/prineside/tdi2/managers/ReplayManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ReplayManager;->setup()V
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
.field public final synthetic a:Lcom/prineside/tdi2/managers/ReplayManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ReplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$2;->a:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$2;->a:Lcom/prineside/tdi2/managers/ReplayManager;

    iget p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->networkRequiredVersion:I

    invoke-static {v0, p1}, Lcom/prineside/tdi2/managers/ReplayManager;->b(Lcom/prineside/tdi2/managers/ReplayManager;I)I

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$2;->a:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ReplayManager;->sendUnsentReplaysToTheServer()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ReplayManager$2;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V

    return-void
.end method
