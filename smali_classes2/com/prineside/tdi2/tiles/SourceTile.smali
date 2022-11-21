.class public Lcom/prineside/tdi2/tiles/SourceTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;,
        Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final w:Lcom/badlogic/gdx/graphics/Color;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:[F

.field public static final z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;


# instance fields
.field public minedResources:[I

.field public miner:Lcom/prineside/tdi2/Miner;

.field public r:F

.field public s:[I

.field public t:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final u:[Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final v:[I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x333333ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/tiles/SourceTile;->w:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/tiles/SourceTile;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    new-array v1, v1, [F

    sput-object v1, Lcom/prineside/tdi2/tiles/SourceTile;->y:[F

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    sput-object v0, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;-><init>(Lcom/prineside/tdi2/tiles/SourceTile$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/tiles/SourceTile;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->v:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/SourceTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/SourceTile;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/tiles/SourceTile;->j(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/SourceTile;->i(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/tiles/SourceTile;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/tiles/SourceTile;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    return p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/tiles/SourceTile;)[I
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/tiles/SourceTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    return p1
.end method

.method private synthetic i(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/SourceTile;->setResourceDensity(F)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SourceTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic j(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/tiles/SourceTile;->setResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;I)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SourceTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    int-to-float v5, v2

    const v6, 0x3ca3d70a    # 0.02f

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3e800000    # 0.25f

    iget v3, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    mul-float v3, v3, v1

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Lcom/prineside/tdi2/ItemStack;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v2, v3, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    div-int/lit8 v4, v4, 0x5

    if-lez v4, :cond_2

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 7

    iget-boolean p6, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->k()V

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p6, v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v0, v0, p6

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/tiles/SourceTile;->x:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v2, v0, p6

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    iget-object v1, p6, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-direct {v0, p2}, Lcom/prineside/tdi2/ui/components/TileResources;-><init>(F)V

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/ui/components/TileResources;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 9

    const-string v0, "Resource density"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/tiles/y;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/tiles/y;-><init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v0, "Resources"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->form:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v7, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/tiles/z;

    invoke-direct {v6, p0, v4, p1}, Lcom/prineside/tdi2/tiles/z;-><init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v5, v6}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43c80000    # 400.0f

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 7

    new-instance v0, Lcom/prineside/tdi2/ui/components/TileResources;

    const/high16 v1, 0x44020000    # 520.0f

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/components/TileResources;-><init>(F)V

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/ui/components/TileResources;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v1, "map_editor_menu_miner_type_select"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v2, "No miner"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v1, 0x42200000    # 40.0f

    const v4, 0x44228000    # 650.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x43dc0000    # 440.0f

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    :goto_1
    new-instance v1, Lcom/prineside/tdi2/tiles/SourceTile$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/prineside/tdi2/tiles/SourceTile$1;-><init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p2, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->selectBoxStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    const-string v1, "map_editor_menu_source_upgrade_level_select"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :goto_2
    const/16 v2, 0xa

    if-gt v3, v2, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    const/high16 v1, 0x435c0000    # 220.0f

    const/high16 v2, 0x43e60000    # 460.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    new-instance p1, Lcom/prineside/tdi2/tiles/SourceTile$2;

    invoke-direct {p1, p0, v0, p2}, Lcom/prineside/tdi2/tiles/SourceTile$2;-><init>(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_3
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 4

    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    iput v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->cloneMiner()Lcom/prineside/tdi2/Miner;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    return-void
.end method

.method public generateSeedSalt()I
    .locals 11

    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    int-to-double v5, v0

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 14

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->k()V

    :cond_0
    const/high16 v0, 0x43000000    # 128.0f

    div-float/2addr p1, v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v0, v0, p1

    invoke-virtual {v3, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/TileManager$Factories;->SOURCE:Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/SourceTile$SourceTileFactory;->k:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    iget-object v7, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-lez v7, :cond_2

    sget-object v7, Lcom/prineside/tdi2/tiles/SourceTile;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v8, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v10, 0x41c00000    # 24.0f

    mul-float v10, v10, p1

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v9, 0x41400000    # 12.0f

    mul-float v9, v9, p1

    const/high16 v11, 0x40c00000    # 6.0f

    int-to-float v12, v5

    const/high16 v13, 0x41a00000    # 20.0f

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    mul-float v11, v11, p1

    invoke-virtual {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v9, 0x3f0f5c29    # 0.56f

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v7, v7, p1

    const/high16 v9, 0x41000000    # 8.0f

    add-float/2addr v12, v9

    mul-float v12, v12, p1

    invoke-virtual {v8, v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SOURCES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 15

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-ge v2, v1, :cond_6

    aget-object v10, v0, v2

    iget-object v11, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-lez v11, :cond_5

    add-int/lit8 v3, v3, 0x1

    iget-object v11, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    int-to-double v11, v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    sget-object v13, Lcom/prineside/tdi2/tiles/SourceTile$3;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v13, v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_4

    if-eq v10, v7, :cond_3

    if-eq v10, v6, :cond_2

    if-eq v10, v8, :cond_1

    if-eq v10, v9, :cond_0

    goto :goto_2

    :cond_0
    const-wide v6, 0x3fd6b851eb851eb8L    # 0.355

    goto :goto_1

    :cond_1
    const-wide v6, 0x3fc9374bc6a7ef9eL    # 0.197

    goto :goto_1

    :cond_2
    const-wide v6, 0x3fbdb22d0e560419L    # 0.116

    goto :goto_1

    :cond_3
    const-wide v6, 0x3fb3333333333333L    # 0.075

    goto :goto_1

    :cond_4
    const-wide v6, 0x3fa999999999999aL    # 0.05

    :goto_1
    mul-double v11, v11, v6

    :goto_2
    add-double/2addr v4, v11

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-lt v3, v9, :cond_7

    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    :goto_3
    mul-double v4, v4, v0

    goto :goto_4

    :cond_7
    if-lt v3, v8, :cond_8

    const-wide v0, 0x3fd6666660000000L    # 0.3499999940395355

    goto :goto_3

    :cond_8
    if-lt v3, v6, :cond_9

    const-wide v0, 0x3fdcccccc0000000L    # 0.44999998807907104

    goto :goto_3

    :cond_9
    if-lt v3, v7, :cond_a

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    goto :goto_3

    :cond_a
    :goto_4
    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v0

    return-wide v4
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getResourceDensity()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    return v0
.end method

.method public getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, v2

    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, p1

    return v0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    aget v0, v0, p1

    if-eqz v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    iget v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    iget-object v9, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-nez v7, :cond_3

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/tiles/SourceTile;->w:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/4 v5, 0x0

    :goto_2
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v8, v6

    if-ge v5, v8, :cond_4

    sget-object v8, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v8, v8, v5

    aget-object v6, v6, v5

    iput-object v6, v8, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->a:Lcom/prineside/tdi2/enums/ResourceType;

    iget-object v6, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    aget v6, v6, v5

    int-to-float v6, v6

    int-to-float v9, v7

    div-float/2addr v6, v9

    iput v6, v8, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lcom/prineside/tdi2/tiles/SourceTile;->v:[I

    aput v5, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_4
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v6

    const/high16 v7, 0x3e000000    # 0.125f

    if-ge v5, v6, :cond_b

    sget-object v6, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    cmpl-float v8, v6, v3

    if-eqz v8, :cond_a

    cmpg-float v8, v6, v7

    if-gez v8, :cond_a

    sub-float v6, v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    sget-object v10, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v10, v10

    if-ge v8, v10, :cond_7

    sget-object v10, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v10, v10, v8

    iget v10, v10, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    cmpl-float v11, v10, v7

    if-lez v11, :cond_6

    sget-object v11, Lcom/prineside/tdi2/tiles/SourceTile;->y:[F

    sub-float/2addr v10, v7

    aput v10, v11, v8

    add-float/2addr v9, v10

    goto :goto_6

    :cond_6
    sget-object v10, Lcom/prineside/tdi2/tiles/SourceTile;->y:[F

    aput v3, v10, v8

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    sub-float v6, v9, v6

    div-float/2addr v6, v9

    sub-float v6, v2, v6

    const/4 v8, 0x0

    :goto_7
    sget-object v9, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v9, v9

    if-ge v8, v9, :cond_9

    sget-object v9, Lcom/prineside/tdi2/tiles/SourceTile;->y:[F

    aget v9, v9, v8

    cmpl-float v10, v9, v3

    if-eqz v10, :cond_8

    sget-object v10, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v10, v10, v8

    iget v11, v10, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    mul-float v9, v9, v6

    sub-float/2addr v11, v9

    iput v11, v10, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    sget-object v6, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v6, v6, v5

    iput v7, v6, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_8
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v5

    if-ge v2, v5, :cond_e

    add-int/lit8 v5, v2, 0x1

    move v6, v5

    :goto_9
    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v8, v8

    if-ge v6, v8, :cond_d

    sget-object v8, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v9, v8, v2

    iget v10, v9, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    aget-object v11, v8, v6

    iget v12, v11, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_c

    aput-object v11, v8, v2

    aput-object v9, v8, v6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    move v2, v5

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_a
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v5

    if-ge v2, v5, :cond_f

    sget-object v5, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v5, v5, v2

    iput v1, v5, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->c:F

    iget v5, v5, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->b:F

    iget v6, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v4, :cond_10

    invoke-static {v4}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v2

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/SourceTile;->v:[I

    aget v6, v5, v1

    aget v8, v5, v2

    aput v8, v5, v1

    aput v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v4, :cond_14

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_d
    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v8, v8

    if-ge v5, v8, :cond_12

    sget-object v8, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->c:F

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_11

    move v6, v5

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_12
    if-ne v6, v2, :cond_13

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/SourceTile;->v:[I

    aget v5, v5, v1

    sget-object v6, Lcom/prineside/tdi2/tiles/SourceTile;->w:Lcom/badlogic/gdx/graphics/Color;

    aput-object v6, v2, v5

    goto :goto_e

    :cond_13
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/SourceTile;->u:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/SourceTile;->v:[I

    aget v5, v5, v1

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    sget-object v9, Lcom/prineside/tdi2/tiles/SourceTile;->z:[Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;

    aget-object v6, v9, v6

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/SourceTile$ResourceAmount;->a:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    aput-object v6, v2, v5

    :goto_e
    add-float/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, [I

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Miner;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v5

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v4

    if-eq v5, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setResourceDensity(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    return-void
.end method

.method public setResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/SourceTile;->t:Z

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "rd"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "r"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "t"

    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {p1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v0, :cond_2

    const-string v0, "miner"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Miner;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, " | "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->s:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
