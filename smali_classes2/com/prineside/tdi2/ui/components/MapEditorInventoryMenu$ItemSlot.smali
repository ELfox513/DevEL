.class public Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemSlot"
.end annotation


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public R:Lcom/prineside/tdi2/ItemStack;

.field public S:Z

.field public final synthetic T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;I)V
    .locals 5

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->T:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v1, 0x43180000    # 152.0f

    invoke-virtual {p0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    const-string p2, "ui-tile-inventory-cell-1"

    goto :goto_0

    :cond_0
    const-string p2, "ui-tile-inventory-cell-2"

    :goto_0
    invoke-virtual {v3, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p2, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-tile-inventory-cell-count"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42c60000    # 99.0f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42500000    # 52.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3e8f5c29    # 0.28f

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v4, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v4, "122"

    invoke-direct {p2, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x42280000    # 42.0f

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x42d00000    # 104.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;

    invoke-direct {p2, p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot$1;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->S:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setActive(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;ILcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;I)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;)Lcom/prineside/tdi2/ItemStack;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->R:Lcom/prineside/tdi2/ItemStack;

    return-object p0
.end method


# virtual methods
.method public getItemStack()Lcom/prineside/tdi2/ItemStack;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->R:Lcom/prineside/tdi2/ItemStack;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->S:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3e8f5c29    # 0.28f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->S:Z

    :cond_1
    return-void
.end method

.method public setIconCountVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public setItemStack(Lcom/prineside/tdi2/ItemStack;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->R:Lcom/prineside/tdi2/ItemStack;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    const/high16 v0, 0x43000000    # 128.0f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->N:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->R:Lcom/prineside/tdi2/ItemStack;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setIconCountVisible(Z)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
