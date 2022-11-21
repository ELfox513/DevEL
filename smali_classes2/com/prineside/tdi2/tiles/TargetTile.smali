.class public Lcom/prineside/tdi2/tiles/TargetTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;,
        Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;,
        Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;
    }
.end annotation


# static fields
.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Z

.field public u:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public v:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public w:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/tiles/TargetTile;->B:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/TargetTile$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/tiles/TargetTile;->C:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/TargetTile;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    return p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic g()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/TargetTile;->C:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public addGameValue(Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    return-void
.end method

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

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    :goto_0
    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz v1, :cond_1

    add-int/lit16 v0, v0, 0xc8

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    new-instance v1, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    const/4 p2, 0x0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iput p2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->h()V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float p3, p3

    int-to-float p4, p4

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->A:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/tiles/TargetTile;->B:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    const v2, 0x3fb33333    # 1.4f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const v4, 0x3ff33333    # 1.9f

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    const v5, 0x3f333333    # 0.7f

    mul-float v1, v1, v5

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v4, v0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x43000000    # 128.0f

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "portal_disables_researches"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sub-float v6, v1, v3

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "portal_disables_abilities"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sub-float v6, v1, v3

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/TargetTile;->isWalkableTiles()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    sub-float v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_2
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_9

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v8, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_a

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/GameValueConfig;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    rem-int/lit8 v10, v7, 0x2

    const/4 v11, 0x0

    if-nez v10, :cond_3

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-horizontal"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x422c0000    # 43.0f

    invoke-virtual {v10, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, -0x40000000    # -2.0f

    invoke-virtual {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v12, 0x3e570a3d    # 0.21f

    invoke-virtual {v10, v11, v11, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v12, v8, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    const/4 v12, 0x0

    :goto_1
    iget v13, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v12, v13, :cond_4

    iget-object v13, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v13, v13, v12

    const/high16 v14, 0x40700000    # 3.75f

    const/high16 v15, 0x40900000    # 4.5f

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v13, v14, v15, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v12, v12, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v12, v8, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    const/16 v12, 0x12

    const v13, 0x432c8000    # 172.5f

    invoke-direct {v6, v10, v4, v12, v13}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    const/high16 v10, 0x43160000    # 150.0f

    const/high16 v12, 0x421c0000    # 39.0f

    invoke-virtual {v6, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42600000    # 56.0f

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v10, Lcom/prineside/tdi2/tiles/TargetTile$2;

    move-object/from16 v13, p0

    invoke-direct {v10, v13, v8}, Lcom/prineside/tdi2/tiles/TargetTile$2;-><init>(Lcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/GameValueConfig;)V

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v6, v8, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-nez v6, :cond_5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-check"

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v6, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v10, 0x439b4000    # 310.5f

    const/high16 v14, 0x40f00000    # 7.5f

    invoke-virtual {v6, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_5
    new-instance v6, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v14, v8, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    sget-object v14, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    if-ne v10, v14, :cond_6

    iget-wide v14, v8, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide/16 v16, 0x0

    cmpl-double v8, v14, v16

    if-nez v8, :cond_8

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "disabled"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_6
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-wide v12, v8, Lcom/prineside/tdi2/GameValueConfig;->value:D

    invoke-virtual {v14, v12, v13, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-boolean v8, v8, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-eqz v8, :cond_7

    const/16 v8, 0x3d

    invoke-virtual {v6, v0, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->setCharAt(IC)V

    :cond_7
    iget v8, v6, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne v8, v5, :cond_8

    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_8
    :goto_2
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v8, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42960000    # 75.0f

    sub-float v10, v1, v6

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x421c0000    # 39.0f

    invoke-virtual {v8, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v6, 0x10

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v7, v7, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "base_has_no_effects"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_a
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 3

    check-cast p1, Lcom/prineside/tdi2/tiles/TargetTile;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameValueConfig;->cpy()Lcom/prineside/tdi2/GameValueConfig;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    iget-boolean p1, p1, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    return-void
.end method

.method public generateSeedSalt()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameValueConfig;

    mul-int/lit8 v1, v1, 0x15

    iget-object v3, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x17

    iget-boolean v3, v2, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1b

    iget-boolean v3, v2, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eqz v0, :cond_1

    const v2, 0xf4240

    add-int/2addr v1, v2

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x989680

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->h()V

    const/high16 v0, 0x43000000    # 128.0f

    div-float v0, p1, v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/prineside/tdi2/managers/TileManager;->getRoadTexture(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v3, 0x41200000    # 10.0f

    const-string v4, "small-circle-outline"

    if-ge v2, p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v3, v3, v0

    invoke-virtual {p1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    rem-int/lit8 v4, v2, 0x7

    div-int/lit8 v5, v2, 0x7

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v6, v6, v0

    int-to-float v5, v5

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    int-to-float v4, v4

    mul-float v6, v6, v4

    add-float/2addr v3, v6

    invoke-virtual {p1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result p1

    const/high16 v2, 0x42cc0000    # 102.0f

    const/high16 v5, 0x41800000    # 16.0f

    if-eqz p1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v6, v0, v5

    invoke-virtual {p1, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    mul-float v3, v3, v0

    mul-float v6, v0, v2

    invoke-virtual {p1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    iget-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v3, v0, v5

    invoke-virtual {p1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float v3, v3, v0

    mul-float v6, v0, v2

    invoke-virtual {p1, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->isWalkableTiles()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v5, v5, v0

    invoke-virtual {p1, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42380000    # 46.0f

    mul-float v3, v3, v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    return-object v1
.end method

.method public getGameValues()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_BASES:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x3fa999999999999aL    # 0.05

    add-double/2addr v1, v3

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    :goto_0
    mul-double v1, v1, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x6

    if-lt v0, v3, :cond_1

    const-wide v3, 0x3fee666666666666L    # 0.95

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    const-wide v3, 0x3fe4cccccccccccdL    # 0.65

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    const-wide v3, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :cond_3
    const-wide v3, 0x3fb999999999999aL    # 0.1

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eqz v0, :cond_4

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    add-double/2addr v1, v3

    :cond_4
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz v0, :cond_5

    const-wide v3, 0x3fe999999999999aL    # 0.8

    add-double/2addr v1, v3

    :cond_5
    return-wide v1
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_2
    const/16 v1, 0x8

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :cond_2
    iget-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0
.end method

.method public getWalkCost()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final h()V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    const/16 v1, 0x1a4

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x3

    if-ge v2, v4, :cond_1

    mul-int/lit8 v1, v1, 0x1b

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/GameValueConfig;

    iget-object v3, v3, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/GameValueConfig;

    iget-boolean v3, v3, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/GameValueConfig;

    iget-boolean v3, v3, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x25

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/GameValueConfig;

    iget-wide v3, v3, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eqz v0, :cond_2

    mul-int/lit8 v1, v1, 0x17

    add-int/lit8 v1, v1, 0x7

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x5

    :cond_3
    invoke-static {v1}, Ljava/lang/StrictMath;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x510

    div-int/lit8 v1, v0, 0x12

    div-int/lit8 v2, v1, 0x12

    rem-int/lit8 v1, v1, 0x12

    rem-int/lit8 v3, v0, 0x12

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    if-eq v2, v5, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "tile-type-target-core-4"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "tile-type-target-core-3"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "tile-type-target-core-2"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "tile-type-target-core-1"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_2
    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor;->allColors:[[Lcom/badlogic/gdx/graphics/Color;

    aget-object v3, v2, v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$Variants;->P500:Lcom/prineside/tdi2/utils/MaterialColor$Variants;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    aget-object v1, v2, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->y:I

    :cond_7
    return-void
.end method

.method public isDisableAbilities()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    return v0
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUseStockGameValues()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    return v0
.end method

.method public isWalkableTiles()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_WALK_ON_PLATFORMS:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v3, v4, :cond_0

    iget-wide v2, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 10

    iget-boolean p2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->A:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->h()V

    sget-object p2, Lcom/prineside/tdi2/tiles/TargetTile;->B:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    const v1, 0x3fb33333    # 1.4f

    mul-float v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const v3, 0x3ff33333    # 1.9f

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    const v4, 0x3f333333    # 0.7f

    mul-float v0, v0, v4

    add-float/2addr v0, v2

    invoke-virtual {p2, v1, v3, v0, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v6, p3

    int-to-float v7, p4

    const/high16 v8, 0x43000000    # 128.0f

    const/high16 v9, 0x43000000    # 128.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    return-void
.end method

.method public removeGameValue(Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/TargetTile;

    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p1, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_8

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    iget-object v3, p1, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/GameValueConfig;

    iget-boolean v4, v1, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    iget-boolean v5, v3, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    iget-wide v4, v1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-wide v6, v3, Lcom/prineside/tdi2/GameValueConfig;->value:D

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_5

    return v2

    :cond_5
    iget-boolean v4, v1, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    iget-boolean v5, v3, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-eq v4, v5, :cond_6

    return v2

    :cond_6
    iget-object v1, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v3, v3, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public setDisableAbilities(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    return-void
.end method

.method public setUseStockGameValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    return-void
.end method

.method public showHitEffect(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 11

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->h()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    int-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->z:F

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/tiles/TargetTile;->B:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v3, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, 0x40

    int-to-float v3, v3

    iget v4, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v4, v4, 0x80

    add-int/lit8 v4, v4, 0x40

    int-to-float v4, v4

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x43000000    # 128.0f

    const/4 v9, 0x0

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFLcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    int-to-float v3, v0

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    int-to-float v4, v0

    invoke-virtual/range {v1 .. v10}, Lcom/prineside/tdi2/systems/ParticleSystem;->addFlashParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method public startExplosionEffect()V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->A:Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile;->h()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    int-to-float v3, v0

    iget v0, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    int-to-float v4, v0

    const/high16 v5, 0x43000000    # 128.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/prineside/tdi2/tiles/TargetTile;->v:Lcom/badlogic/gdx/graphics/Color;

    new-instance v9, Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$1;)V

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/prineside/tdi2/systems/ParticleSystem;->addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Interpolation;Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile;->x:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v1, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v4, v1

    iget v1, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v5, v1

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/prineside/tdi2/tiles/TargetTile;->w:Lcom/badlogic/gdx/graphics/Color;

    new-instance v10, Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$1;)V

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lcom/prineside/tdi2/systems/ParticleSystem;->addShatterParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Interpolation;Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->TARGET:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v1, p0, Lcom/prineside/tdi2/Tile;->b:I

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    iget v2, p0, Lcom/prineside/tdi2/Tile;->d:I

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "da"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "usgv"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gv"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/GameValueConfig;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public updateAppearance()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->u:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->s:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/tiles/TargetTile;->t:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
