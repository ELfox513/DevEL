.class Lcom/prineside/tdi2/managers/PurchaseManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/pay/Transaction;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v3}, Lcom/prineside/tdi2/managers/PurchaseManager;->c(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/Transaction;->getStoreName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "g"

    goto :goto_1

    :cond_0
    const-string v6, "u"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v3, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->d(Lcom/prineside/tdi2/managers/PurchaseManager;Lcom/badlogic/gdx/pay/Transaction;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
