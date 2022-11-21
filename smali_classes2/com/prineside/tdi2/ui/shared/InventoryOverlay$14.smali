.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lcom/badlogic/gdx/utils/Array;

.field public final synthetic d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final synthetic k:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;[ILcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->k:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->a:[I

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->b:Lcom/badlogic/gdx/utils/Array;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->b:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v2, v3, :cond_0

    aput v1, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$14;->a:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
