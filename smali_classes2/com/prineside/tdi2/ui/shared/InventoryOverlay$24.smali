.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->o:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->o:I

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->getCraftingQueueItem(I)Lcom/prineside/tdi2/managers/ProgressManager$CraftingQueueItem;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->o:I

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->i(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$24;->p:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
