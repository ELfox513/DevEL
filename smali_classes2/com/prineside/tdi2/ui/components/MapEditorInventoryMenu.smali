.class public Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;,
        Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;,
        Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;
    }
.end annotation


# static fields
.field public static final y:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field public cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public final p:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ItemSubcategoryType;",
            "Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public u:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

.field public v:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/Item;",
            "Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/prineside/tdi2/CameraController;

.field public final x:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->y:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->z:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_PLATFORMS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_ROADS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOURCES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPAWNS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_BASES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOUNDS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->q:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->d:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->w:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    const-string p2, "tile_inventory_menu_container"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42200000    # 40.0f

    sub-float/2addr p1, p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    new-instance v6, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v5, v7}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;)V

    new-instance v7, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;

    invoke-direct {v7, p0, v5}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7, v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x42f00000    # 120.0f

    sub-float/2addr p1, v5

    const/high16 v5, -0x3d180000    # -116.0f

    invoke-virtual {v6, v5, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x2b2b2bff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v10

    const/high16 v0, 0x40800000    # 4.0f

    invoke-interface {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v11

    invoke-interface {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {v0, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollBarPositions(ZZ)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->scrollPane:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43e40000    # 456.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42d00000    # 104.0f

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance p2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p1, p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p2, 0x43f80000    # 496.0f

    invoke-virtual {p1, p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p2, 0x0

    :goto_1
    const/16 p3, 0x8

    if-ge p2, p3, :cond_1

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-triangle-top"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x212121ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p3, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    int-to-float v5, p2

    const/high16 v6, 0x42400000    # 48.0f

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual {p3, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-triangle-bottom"

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p3, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v1, v0

    sub-float/2addr v1, v0

    sub-float/2addr v1, v5

    invoke-virtual {p3, v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->a:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->setActiveTab(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/prineside/tdi2/CameraController;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->w:Lcom/prineside/tdi2/CameraController;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deselectAll()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(F)V
    .locals 0

    return-void
.end method

.method public isStagePointOnInventory(FF)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->k:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public rebuildSlot(Lcom/prineside/tdi2/ItemStack;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getDraggingItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setIconCountVisible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildTilesList()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setItemStack(Lcom/prineside/tdi2/ItemStack;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setIconCountVisible(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildTilesList()V

    :cond_3
    :goto_0
    return-void
.end method

.method public rebuildTilesList()V
    .locals 9

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->deselectAll()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->u:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ItemManager;->getSubcategoryName(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->z:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->u:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    invoke-virtual {v1, v2, v0}, Lcom/prineside/tdi2/systems/InventorySystem;->getItemsByCategory(Lcom/prineside/tdi2/enums/ItemSubcategoryType;Lcom/badlogic/gdx/utils/Array;)V

    new-instance v1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43180000    # 152.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    const/4 v2, 0x0

    move v4, v0

    const/4 v3, 0x0

    :goto_0
    sget-object v5, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->z:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->q:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v3, v7, :cond_0

    new-instance v6, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v7}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;ILcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$1;)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;

    :goto_1
    rem-int/lit8 v7, v3, 0x3

    int-to-float v8, v7

    mul-float v8, v8, v1

    if-nez v7, :cond_1

    sub-float/2addr v4, v1

    :cond_1
    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->v:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5, v2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setItemStack(Lcom/prineside/tdi2/ItemStack;Z)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemSlot;->setIconCountVisible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x43e40000    # 456.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActiveTab(Lcom/prineside/tdi2/enums/ItemSubcategoryType;)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->u:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->setActive(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->p:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$ItemCategoryTab;->setActive(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->rebuildTilesList()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;

    invoke-interface {p1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;->categoryTabChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method
