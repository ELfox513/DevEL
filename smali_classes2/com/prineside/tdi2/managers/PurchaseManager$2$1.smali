.class Lcom/prineside/tdi2/managers/PurchaseManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager$2;->handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/badlogic/gdx/pay/Transaction;

.field public final synthetic b:Lcom/prineside/tdi2/managers/PurchaseManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;[Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->a:[Lcom/badlogic/gdx/pay/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->a:[Lcom/badlogic/gdx/pay/Transaction;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v7}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;

    invoke-interface {v7, v6}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;->purchased(Lcom/badlogic/gdx/pay/Transaction;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->a:[Lcom/badlogic/gdx/pay/Transaction;

    const-string v4, "handleRestore"

    invoke-interface {v2, v4, v3}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;->gotResponse(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$2$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
