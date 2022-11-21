.class Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemCategoryTab"
.end annotation


# instance fields
.field public M:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final synthetic P:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V
    .locals 4

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->P:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v0, 0x43000000    # 128.0f

    const/high16 v1, 0x42e80000    # 116.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v0, v2, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->M:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "gradient-right"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    invoke-virtual {v1, p2}, Lcom/prineside/tdi2/managers/ItemManager;->getSubcategoryIconAlias(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 p2, 0x42800000    # 64.0f

    invoke-virtual {v0, p2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x42000000    # 32.0f

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->setActive(Z)V

    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x0
        0x42e80000    # 116.0f
        0x43000000    # 128.0f
        0x42e80000    # 116.0f
        0x43000000    # 128.0f
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V

    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->M:Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x2b2b2bff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->M:Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x212121ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v0, 0x3f0f5c29    # 0.56f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    return-void
.end method
