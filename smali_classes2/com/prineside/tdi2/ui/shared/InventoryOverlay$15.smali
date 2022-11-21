.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;
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
.field public final synthetic a:I

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->a:I

    const v2, 0x1dcd6500

    div-int/2addr v2, v1

    if-le v0, v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "sell_button"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->l(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->f(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->show(Ljava/lang/CharSequence;IILcom/prineside/tdi2/Item;Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->getInfoContainer()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->g(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->h()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v3, v4, v1}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v6, "0"

    invoke-direct {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->g(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$15;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->b(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method
