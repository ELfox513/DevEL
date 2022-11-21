.class public Lcom/prineside/tdi2/tiles/GameValueTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;
    }
.end annotation


# instance fields
.field public r:Lcom/prineside/tdi2/enums/GameValueType;

.field public s:D

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->GAME_VALUE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_MONEY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/GameValueTile;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/GameValueTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;-><init>()V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->DUMMY:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p6, v0, :cond_1

    :cond_0
    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->GAME_VALUE:Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->a(Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_1
    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p6, v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object p6

    invoke-virtual {p6}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object p6

    const/4 v0, 0x0

    :goto_0
    iget v1, p6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    iget-object v1, p6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const v2, 0x3e19999a    # 0.15f

    mul-float v3, p4, v2

    add-float/2addr v3, p2

    mul-float v2, v2, p5

    add-float/2addr v2, p3

    const v4, 0x3f333333    # 0.7f

    mul-float v4, v4, p4

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;->isOverwrite()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "overwrites_other_effects"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 2

    check-cast p1, Lcom/prineside/tdi2/tiles/GameValueTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/GameValueTile;->setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V

    iget-wide v0, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/tiles/GameValueTile;->setDelta(D)V

    iget-boolean p1, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/GameValueTile;->setOverwrite(Z)V

    return-void
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/TileManager$Factories;->GAME_VALUE:Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;

    invoke-static {v3}, Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;->a(Lcom/prineside/tdi2/tiles/GameValueTile$GameValueTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    :goto_0
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v3, v3, v1

    const v4, 0x3e19999a    # 0.15f

    mul-float v4, v4, p1

    const v5, 0x3f333333    # 0.7f

    mul-float v5, v5, p1

    invoke-virtual {v3, v4, v4, v5}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDelta()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    return-wide v0
.end method

.method public getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    return-object v0
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 2

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/GameValueTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit16 p1, p1, 0x61a8

    return p1
.end method

.method public isOverwrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    return v0
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/GameValueType;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->sameAs(Lcom/prineside/tdi2/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/GameValueTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    iget-wide v4, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean p1, p1, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setDelta(D)V
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    return-void
.end method

.method public setGameValueType(Lcom/prineside/tdi2/enums/GameValueType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverwrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gv"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->r:Lcom/prineside/tdi2/enums/GameValueType;

    const-class v1, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->s:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/tiles/GameValueTile;->t:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
