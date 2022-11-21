.class Lcom/prineside/tdi2/managers/PurchaseManager$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager$2;->handlePurchaseCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;

    const/4 v3, 0x0

    const-string v4, "handlePurchaseCanceled"

    invoke-interface {v2, v4, v3}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;->gotResponse(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$4;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
