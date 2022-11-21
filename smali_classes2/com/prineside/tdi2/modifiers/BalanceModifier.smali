.class public Lcom/prineside/tdi2/modifiers/BalanceModifier;
.super Lcom/prineside/tdi2/Modifier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;,
        Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;,
        Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;
    }
.end annotation


# static fields
.field public static final MAX_LEVEL:I = 0x5

.field public static SPEED_BY_LEVEL:[F

.field public static XP_FOR_LEVEL:[I

.field public static final s:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static u:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

.field public p:I

.field public q:F

.field public r:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier;->XP_FOR_LEVEL:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->SPEED_BY_LEVEL:[F

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/modifiers/BalanceModifier$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/modifiers/BalanceModifier$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->u:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x96
        0x258
        0x7d0
        0x1388
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
        0x41700000    # 15.0f
        0x420c0000    # 35.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Modifier;-><init>(Lcom/prineside/tdi2/enums/ModifierType;)V

    sget-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/BalanceModifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public customButtonAction(II)V
    .locals 0

    iget p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    sget-object p1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->EVOLVE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    :cond_0
    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/prineside/tdi2/Modifier;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    sget-object p2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p3, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 p3, 0x24

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/modifiers/BalanceModifier;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v8, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    const v1, 0x3f0f5c29    # 0.56f

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    add-float v3, v8, v1

    const/high16 v2, 0x42940000    # 74.0f

    add-float v9, v0, v2

    sub-float v4, v9, v1

    const/high16 v5, 0x43000000    # 128.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p2

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p2, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_BUILDING_INFO:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 p3, 0x15

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "xp"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x42000000    # 32.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x42800000    # 64.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v1, v2

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_1
    return-void
.end method

.method public fillModifierMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 21
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x438

    iget v4, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const-string v5, "state"

    const-string v6, "xpLine"

    const-string v7, "xpLabel"

    const-string v8, "upgradeSpeedLabel"

    const-string v9, "speedLabel"

    const-string v10, "levelLabel"

    const-string v11, "statusLabel"

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v3

    move-object v1, v6

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string v4, "BalanceModifier"

    const-string v12, "recreate custom menu"

    invoke-static {v4, v12}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v12, 0x44178000    # 606.0f

    int-to-float v14, v3

    add-float/2addr v12, v14

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v4, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42840000    # 66.0f

    const/high16 v15, 0x44020000    # 520.0f

    invoke-virtual {v4, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move/from16 v18, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v0, 0x24

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v0, ""

    invoke-direct {v12, v0, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v12, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v12, v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v3, 0x10

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v20, v5

    const/16 v5, 0x18

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v15, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v3, 0x44020000    # 520.0f

    invoke-virtual {v15, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v5, 0x10

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v19, v13

    const/16 v13, 0x1e

    invoke-virtual {v3, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v13, 0x44020000    # 520.0f

    invoke-virtual {v5, v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/actors/ExpLine;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v13}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-object/from16 v16, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v17, v6

    const-string v6, "blank"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v3, 0x3e0f5c29    # 0.14f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x43ef0000    # 478.0f

    add-float/2addr v3, v14

    invoke-virtual {v4, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42c00000    # 96.0f

    const/high16 v6, 0x44160000    # 600.0f

    invoke-virtual {v4, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v4, 0x4403c000    # 527.0f

    add-float v6, v14, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v6, 0x44160000    # 600.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v0, 0x43f90000    # 498.0f

    add-float/2addr v14, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v6, 0x44160000    # 600.0f

    invoke-virtual {v4, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v0, 0x3e8f5c29    # 0.28f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v6, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v11, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v10, v12}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v9, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v19

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p0

    iget v9, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v3, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 v6, 0x5

    if-lt v3, v6, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    const-string v0, "MAX"

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget v3, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getXpEvolveRequirement()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getXpEvolveRequirement()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->EVOLVE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "state_upgrading"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "state_balancing"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getSpeed()F

    move-result v1

    float-to-double v3, v1

    const/4 v1, 0x1

    invoke-static {v3, v4, v1, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v1, " xp/"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "TIME_CHAR_SECOND"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v1, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    if-lt v1, v6, :cond_4

    const/high16 v0, 0x44000000    # 512.0f

    move/from16 v3, v18

    int-to-float v1, v3

    add-float/2addr v1, v0

    const/4 v4, 0x0

    invoke-virtual {v5, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_4

    :cond_4
    move/from16 v3, v18

    const/4 v1, 0x0

    const/4 v4, 0x0

    int-to-float v3, v3

    const v6, 0x4403c000    # 527.0f

    add-float/2addr v3, v6

    invoke-virtual {v5, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v3, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier;->SPEED_BY_LEVEL:[F

    iget v3, v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    aget v1, v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6, v4, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v1, " xp/"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "TIME_CHAR_SECOND"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_4
    return-void
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    return v0
.end method

.method public getSpeed()F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->SPEED_BY_LEVEL:[F

    iget v1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getXpEvolveRequirement()I
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->XP_FOR_LEVEL:[I

    iget v1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    aget v0, v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_BALANCE_UPGRADE_PRICE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public hasCustomButton()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCustomButtonNeedMapPoint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->r:F

    return-void
.end method

.method public setLevel(I)V
    .locals 3

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(F)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/prineside/tdi2/Modifier;->update(F)V

    iget v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->r:F

    add-float v1, v1, p1

    iput v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->r:F

    const v2, 0x3e87ae14    # 0.265f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    iput v2, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->r:F

    sget-object v3, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const-class v3, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_1

    iget-object v7, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Tile;

    aget-object v7, v7, v6

    iget-object v8, v7, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v9, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v8, v9, :cond_0

    check-cast v7, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v7, :cond_0

    iget-object v8, v7, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v9, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v8, v9, :cond_0

    check-cast v7, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    invoke-static {v8, v7}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->f(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;Lcom/prineside/tdi2/Tower;)Lcom/prineside/tdi2/Tower;

    iget v9, v7, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-static {v8, v9}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F

    sget-object v9, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v10

    aget v9, v9, v10

    int-to-float v9, v9

    iget v7, v7, Lcom/prineside/tdi2/Tower;->experience:F

    sub-float/2addr v7, v9

    invoke-static {v8, v7}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->h(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F

    sget-object v7, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v6, :cond_10

    sget-object v6, Lcom/prineside/tdi2/modifiers/BalanceModifier;->u:Ljava/util/Comparator;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    iget-object v4, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    sget-object v6, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->EVOLVE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getSpeed()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getXpEvolveRequirement()I

    move-result v1

    int-to-float v1, v1

    iget v6, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    sub-float/2addr v1, v6

    cmpl-float v6, v4, v1

    if-lez v6, :cond_2

    move v4, v1

    :cond_2
    cmpl-float v1, v4, v2

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    sget-object v6, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v8, :cond_5

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->g(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/StrictMath;->min(FF)F

    move-result v8

    cmpl-float v9, v8, v2

    if-lez v9, :cond_4

    iget-object v9, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/prineside/tdi2/systems/TowerSystem;->removeExperienceRaw(Lcom/prineside/tdi2/Tower;F)F

    move-result v12

    iget v8, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    add-float/2addr v8, v12

    iput v8, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    sub-float/2addr v4, v12

    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v8}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v8, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v13

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v16

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/systems/ParticleSystem;->addXpOrbParticle(FIIII)V

    :cond_3
    cmpg-float v6, v4, v2

    if-gtz v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_6

    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iput-object v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    goto/16 :goto_6

    :cond_6
    iget v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getXpEvolveRequirement()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_e

    iget v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    iput v2, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iput-object v1, v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->UPGRADE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_7
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TowerManager;->upgradeParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v2, v1, v7}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_8
    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->modifierMenu:Lcom/prineside/tdi2/ui/components/ModifierMenu;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->updateCustomButton()V

    goto/16 :goto_6

    :cond_9
    sget-object v6, Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;->BALANCE:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    if-ne v4, v6, :cond_e

    sget-object v4, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v4, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier;->getSpeed()F

    move-result v4

    mul-float v4, v4, v1

    const/4 v1, 0x0

    :goto_3
    sget-object v6, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v8, :cond_e

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->g(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_a

    goto/16 :goto_5

    :cond_a
    sget-object v8, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v8, v7

    :goto_4
    if-le v8, v1, :cond_d

    sget-object v10, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    aget-object v10, v10, v8

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result v11

    invoke-static {v10}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    cmpl-float v12, v11, v9

    if-ltz v12, :cond_c

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->g(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result v12

    invoke-static {v12, v11}, Ljava/lang/StrictMath;->min(FF)F

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/StrictMath;->min(FF)F

    move-result v11

    cmpl-float v12, v11, v2

    if-eqz v12, :cond_c

    iget-object v12, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v12, v12, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Lcom/prineside/tdi2/systems/TowerSystem;->removeExperienceRaw(Lcom/prineside/tdi2/Tower;F)F

    move-result v15

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-static {v10}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v12

    invoke-virtual {v11, v12, v15}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    sub-float/2addr v4, v15

    invoke-static {v6, v15}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->i(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F

    invoke-static {v6, v15}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F

    invoke-static {v10, v15}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->c(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v11, :cond_b

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v11, v11, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v11}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v11, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v16

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v17

    invoke-static {v10}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v18

    invoke-static {v10}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v19

    invoke-virtual/range {v14 .. v19}, Lcom/prineside/tdi2/systems/ParticleSystem;->addXpOrbParticle(FIIII)V

    :cond_b
    cmpl-float v10, v4, v2

    if-nez v10, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    :cond_d
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_e
    :goto_6
    sget-object v1, Lcom/prineside/tdi2/modifiers/BalanceModifier;->t:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v2, :cond_f

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_10
    return-void
.end method

.method public updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V
    .locals 1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "do_upgrade"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-double-arrow-up"

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->mode:Lcom/prineside/tdi2/modifiers/BalanceModifier$Mode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->p:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->q:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier;->r:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
