.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v0, p1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const/high16 v1, 0x44960000    # 1200.0f

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Lcom/prineside/tdi2/managers/ProgressManager;->decryptingCaseTimeLeft:F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const-string v0, "Something went wrong, please try again later"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$33$1;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
