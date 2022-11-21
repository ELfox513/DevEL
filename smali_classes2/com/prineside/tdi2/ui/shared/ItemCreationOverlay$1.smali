.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/enums/ItemType;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/enums/ItemType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->a:Lcom/prineside/tdi2/enums/ItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->a:Lcom/prineside/tdi2/enums/ItemType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ItemManager;->getFactory(Lcom/prineside/tdi2/enums/ItemType;)Lcom/prineside/tdi2/Item$Factory;

    move-result-object v1

    invoke-interface {v1}, Lcom/prineside/tdi2/Item$Factory;->createDefault()Lcom/prineside/tdi2/Item;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->currentItem:Lcom/prineside/tdi2/Item;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->inPlaceItemTypeChangeAllowed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->setInPlaceEditingItem(Lcom/prineside/tdi2/Item;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method
