.class public Lcom/prineside/tdi2/modifiers/ExperienceModifier;
.super Lcom/prineside/tdi2/Modifier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;,
        Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;
    }
.end annotation


# static fields
.field public static final r:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public minerActive:[Z

.field public p:F

.field public q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Modifier;-><init>(Lcom/prineside/tdi2/enums/ModifierType;)V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/modifiers/ExperienceModifier;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/modifiers/ExperienceModifier;ILcom/prineside/tdi2/enums/ResourceType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->i(ILcom/prineside/tdi2/enums/ResourceType;)V

    return-void
.end method


# virtual methods
.method public fillModifierMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    add-int/lit16 v2, v2, -0x438

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    iget-object v7, v0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Miner;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/prineside/tdi2/Miner;->id:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_1

    mul-int/lit8 v6, v6, 0x1f

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tower;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/prineside/tdi2/Tower;->id:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const-string v7, "modifierCooldown"

    const-string v8, "minerLabels"

    const-string v9, "minerIcons"

    const-string v10, "state"

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v7

    move-object v4, v8

    move-object v3, v9

    goto/16 :goto_7

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v12, 0x43900000    # 288.0f

    invoke-virtual {v11, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x431c0000    # 156.0f

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    invoke-virtual {v11, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v12, 0x42c00000    # 96.0f

    invoke-virtual {v2, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "tile-type-platform"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v13, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v14, 0x0

    const v12, 0x3e8f5c29    # 0.28f

    invoke-virtual {v13, v14, v14, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v13, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    array-length v12, v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v12, :cond_5

    aget-object v17, v13, v14

    iget-object v3, v0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget-boolean v3, v3, v18

    if-eqz v3, :cond_4

    sget-object v3, Lcom/prineside/tdi2/Modifier;->WIRES_TEXTURES_CONFIG:[[F

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget-object v3, v3, v18

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move/from16 v19, v12

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    move-object/from16 v20, v13

    iget-object v13, v0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v12

    iget-object v12, v12, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v12, v12, v13

    invoke-direct {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v4, 0x0

    aget v12, v3, v4

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v12, v12, v4

    const/high16 v13, 0x42400000    # 48.0f

    add-float/2addr v12, v13

    const/16 v16, 0x1

    aget v17, v3, v16

    mul-float v17, v17, v4

    add-float v13, v13, v17

    invoke-virtual {v5, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v12, 0x2

    aget v12, v3, v12

    mul-float v12, v12, v4

    const/4 v13, 0x3

    aget v3, v3, v13

    mul-float v3, v3, v4

    invoke-virtual {v5, v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    :cond_4
    move/from16 v19, v12

    move-object/from16 v20, v13

    const/high16 v4, 0x3f400000    # 0.75f

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v19

    move-object/from16 v13, v20

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "modifier-base-experience"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v12, ""

    invoke-direct {v3, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/16 v2, 0x8

    new-array v4, v2, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-array v2, v2, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v13

    move-object/from16 v17, v3

    const/4 v14, 0x0

    :goto_5
    iget-object v3, v0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-object/from16 v18, v7

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move-object/from16 v19, v8

    if-ge v14, v7, :cond_6

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Miner;

    aget-object v3, v3, v14

    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v3

    sub-int v3, v13, v3

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-virtual {v8, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v7, v7

    mul-float v7, v7, v9

    sub-float v7, v9, v7

    int-to-float v3, v3

    mul-float v3, v3, v9

    sub-float v3, v9, v3

    invoke-virtual {v8, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-miner-top"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v3, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x42080000    # 34.0f

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    aput-object v3, v4, v14

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    aput-object v3, v2, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    goto/16 :goto_5

    :cond_6
    move-object/from16 v21, v9

    const/4 v3, 0x0

    :goto_6
    iget-object v7, v0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v8, :cond_7

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tower;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v7}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v7

    sub-int v7, v13, v7

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v12, 0x42c00000    # 96.0f

    invoke-virtual {v9, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v8, v8

    mul-float v8, v8, v12

    sub-float v8, v12, v8

    int-to-float v7, v7

    mul-float v7, v7, v12

    sub-float v7, v12, v7

    invoke-virtual {v9, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v8, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v14, v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-tower-top"

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v7, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v7, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    invoke-virtual {v1, v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, v0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_8
    iget-object v6, v0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_b

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Miner;

    aget-object v6, v6, v5

    iget-object v7, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_8

    aget-object v7, v2, v5

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_9

    :cond_8
    aget-object v7, v2, v5

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_9
    sget-object v7, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v7, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v9, v8, :cond_9

    aget-object v11, v7, v9

    iget-object v12, v6, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_9
    if-lt v10, v4, :cond_a

    sget-object v6, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v7, "[#8BC34A]"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_b

    :cond_a
    sget-object v6, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v7, "[#FF9800]"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_b
    sget-object v6, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->r:Lcom/badlogic/gdx/utils/StringBuilder;

    int-to-double v7, v10

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v7, "[] / [#808080]"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    const-string v8, "[]"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    iget v2, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    float-to-double v2, v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(ILcom/prineside/tdi2/enums/ResourceType;)V
    .locals 6

    iget-object p2, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    aget-boolean p1, p2, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_EXPERIENCE_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tower;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v1, v0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_EM:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v5

    move-object v0, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/ParticleSystem;->addXpOrbParticle(FIIII)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public nearbyBuildingsChanged()V
    .locals 5

    invoke-super {p0}, Lcom/prineside/tdi2/Modifier;->nearbyBuildingsChanged()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Modifier;->a(Lcom/prineside/tdi2/Miner;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    const-class v0, [Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    const-class v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    return-void
.end method

.method public setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier;Lcom/prineside/tdi2/modifiers/ExperienceModifier$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public update(F)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Modifier;->update(F)V

    iget v1, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    sub-float v1, v1, p1

    iput v1, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_5

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    iget-object v1, v0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_5

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Miner;

    aget-object v4, v4, v3

    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v9, v5, v7

    iget-object v10, v4, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-ge v8, v1, :cond_1

    iget-object v4, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    aput-boolean v2, v4, v3

    goto/16 :goto_4

    :cond_1
    iget-object v5, v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v5

    move v8, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v9, v5, v7

    iget-object v10, v4, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v10, v8}, Ljava/lang/StrictMath;->min(II)I

    move-result v10

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v11, v4, v9, v10}, Lcom/prineside/tdi2/systems/MinerSystem;->removeResources(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)Z

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_2

    iget-object v12, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v13, v12, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/ModifierManager;->F:Lcom/prineside/tdi2/managers/ModifierManager$Factories;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->EXPERIENCE:Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;

    invoke-static {v12}, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->b(Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v14, v12, v14

    const/high16 v15, 0x41900000    # 18.0f

    invoke-virtual {v4}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v16

    invoke-virtual {v4}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v19

    invoke-virtual/range {v13 .. v19}, Lcom/prineside/tdi2/systems/ParticleSystem;->addOrbParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    sub-int/2addr v8, v10

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->minerActive:[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;->q:Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    const-class v1, Lcom/prineside/tdi2/modifiers/ExperienceModifier$_MinerSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
