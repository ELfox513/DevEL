.class Lcom/prineside/tdi2/managers/PurchaseManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PurchaseManager$6;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/managers/PurchaseManager$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PurchaseManager$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$6;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log IAP Success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$6;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$6;->b:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->c(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$6;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/PurchaseManager$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager$6$1;->b:Lcom/prineside/tdi2/managers/PurchaseManager$6;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$6;->b:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->e(Lcom/prineside/tdi2/managers/PurchaseManager;)V

    return-void
.end method
