.class public final synthetic Lcom/prineside/tdi2/managers/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

.field public final synthetic b:Lcom/badlogic/gdx/pay/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$2;Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/y;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/y;->b:Lcom/badlogic/gdx/pay/Transaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/y;->a:Lcom/prineside/tdi2/managers/PurchaseManager$2;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/y;->b:Lcom/badlogic/gdx/pay/Transaction;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/PurchaseManager$2;->a(Lcom/prineside/tdi2/managers/PurchaseManager$2;Lcom/badlogic/gdx/pay/Transaction;)V

    return-void
.end method
