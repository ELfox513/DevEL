.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->e:Lcom/prineside/tdi2/ItemStack;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->a(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;F)F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;F)F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;->q:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_0
    return-void
.end method
