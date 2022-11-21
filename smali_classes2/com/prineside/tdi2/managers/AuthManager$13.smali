.class Lcom/prineside/tdi2/managers/AuthManager$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->handleAutoSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$13;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->MAX_SLOTS_USED:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;->INVALID_SLOT_ID:Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$13;->a:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AuthManager;->setAutoSavesEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$13;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$SaveGameResult;)V

    return-void
.end method
