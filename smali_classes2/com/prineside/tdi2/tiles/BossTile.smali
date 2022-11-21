.class public Lcom/prineside/tdi2/tiles/BossTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;,
        Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;,
        Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;
    }
.end annotation


# static fields
.field public static A:[Lcom/badlogic/gdx/graphics/Color;

.field public static s:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

.field public static u:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static v:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

.field public static w:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

.field public static y:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static z:[Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;


# instance fields
.field public customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

.field public customEffects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field

.field public oneBossType:Lcom/prineside/tdi2/enums/BossType;

.field public r:Lcom/prineside/tdi2/enums/BossTileType;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/prineside/tdi2/GameValueConfig;

    new-instance v9, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v10, Lcom/prineside/tdi2/enums/GameValueType;->SCORE:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v5, -0x3fb7000000000000L    # -50.0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    const/4 v11, 0x0

    aput-object v9, v2, v11

    new-instance v9, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v12, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v5, -0x3fc7000000000000L    # -25.0

    move-object v3, v9

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    const/4 v13, 0x1

    aput-object v9, v2, v13

    new-instance v9, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v14, Lcom/prineside/tdi2/enums/GameValueType;->LOOT_RARITY:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v5, -0x3fdc000000000000L    # -10.0

    move-object v3, v9

    move-object v4, v14

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    const/4 v15, 0x2

    aput-object v9, v2, v15

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->s:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-direct {v0, v13, v13, v11, v2}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(IIILcom/badlogic/gdx/utils/Array;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->t:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    new-array v2, v15, [Lcom/prineside/tdi2/GameValueConfig;

    new-instance v9, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v5, -0x3fc7000000000000L    # -25.0

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v9, v2, v11

    new-instance v9, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v5, -0x3fdc000000000000L    # -10.0

    move-object v3, v9

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v9, v2, v13

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->u:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const/4 v9, 0x5

    new-array v3, v9, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v8, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    const/16 v7, 0x28

    invoke-direct {v4, v7, v8}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v4, v3, v11

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v5, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    const/16 v6, 0x5a

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v4, v3, v13

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v6, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    const/16 v7, 0x96

    invoke-direct {v4, v7, v6}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v4, v3, v15

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v7, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    const/16 v9, 0xdc

    invoke-direct {v4, v9, v7}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    sget-object v9, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    const/16 v1, 0x12c

    invoke-direct {v4, v1, v9}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    const/16 v16, 0x4

    aput-object v4, v3, v16

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(IIILcom/badlogic/gdx/utils/Array;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->v:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    new-array v1, v15, [Lcom/prineside/tdi2/GameValueConfig;

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v3, v2

    move-object v4, v10

    move-object v15, v5

    move-object/from16 v21, v6

    move-wide/from16 v5, v17

    move-object/from16 v22, v7

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, v14

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->w:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    new-instance v3, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    const/16 v4, 0xa

    move-object/from16 v5, v23

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    const/16 v8, 0x14

    invoke-direct {v3, v8, v15}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v3, v2, v13

    new-instance v3, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    const/16 v5, 0x1e

    move-object/from16 v6, v21

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    move-object/from16 v5, v22

    const/16 v6, 0x28

    invoke-direct {v3, v6, v5}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    const/16 v6, 0x32

    invoke-direct {v3, v6, v9}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v3, v2, v16

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v6, v11, v4, v1}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(IIILcom/badlogic/gdx/utils/Array;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->x:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    new-array v1, v5, [Lcom/prineside/tdi2/GameValueConfig;

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v5, -0x3fc7000000000000L    # -25.0

    const/4 v9, 0x1

    move-object v3, v2

    move-object v4, v10

    const/16 v10, 0x14

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    const-wide/high16 v5, -0x3fdc000000000000L    # -10.0

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    aput-object v2, v1, v13

    new-instance v2, Lcom/prineside/tdi2/GameValueConfig;

    move-object v3, v2

    move-object v4, v14

    invoke-direct/range {v3 .. v8}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-static {}, Lcom/prineside/tdi2/enums/BossType;->values()[Lcom/prineside/tdi2/enums/BossType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->z:[Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/prineside/tdi2/tiles/BossTile;->z:[Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    new-array v8, v13, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    new-instance v9, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    invoke-direct {v9, v10, v3}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    aput-object v9, v8, v11

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-direct {v6, v10, v11, v11, v7}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(IIILcom/badlogic/gdx/utils/Array;)V

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->values:[Lcom/prineside/tdi2/enums/BossType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->METAPHOR:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P600:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->CONSTRUCTOR:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/enums/BossType;->MOBCHAIN:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(Lcom/prineside/tdi2/tiles/BossTile$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/BossTileType;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameValueConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>(Lcom/prineside/tdi2/tiles/BossTile$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/BossTile;->setBossTileType(Lcom/prineside/tdi2/enums/BossTileType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enums/BossTileType;Lcom/prineside/tdi2/tiles/BossTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/tiles/BossTile;-><init>(Lcom/prineside/tdi2/enums/BossTileType;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/BossTile;)Lcom/prineside/tdi2/enums/BossTileType;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    return-object p0
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

    sget-object v1, Lcom/prineside/tdi2/Item$D;->BLUEPRINT_SPECIAL_III:Lcom/prineside/tdi2/items/BlueprintItem;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public affectedByLuckyWheelMultiplier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    invoke-super/range {p0 .. p6}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    iget-object p6, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne p6, v0, :cond_0

    sget-object p6, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p6, p6, v0

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->a(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p6, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->b(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne p6, v0, :cond_1

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->c(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne p6, v0, :cond_2

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->d(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne p6, v0, :cond_3

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->e(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne p6, v0, :cond_4

    sget-object p6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p6, p6, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object p6, p6, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {p6}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->f(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_4
    :goto_0
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/BossTile;->getBossTileTypeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 5

    check-cast p1, Lcom/prineside/tdi2/tiles/BossTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/GameValueConfig;->cpy()Lcom/prineside/tdi2/GameValueConfig;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_1
    iget-object v1, p1, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget v4, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    iput v4, v3, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    iget v4, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    iput v4, v3, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    iget v1, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    iput v1, v3, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    iget-object v1, v3, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->cpy()Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->a(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v2, Lcom/prineside/tdi2/tiles/BossTile;->A:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->b(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->c(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->d(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->e(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    invoke-static {v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->f(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getBossTileType()Lcom/prineside/tdi2/enums/BossTileType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    return-object v0
.end method

.method public getBossTileTypeName()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TileManager$Factories;->BOSS:Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->getBossTileTypeName(Lcom/prineside/tdi2/enums/BossTileType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v2, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/EnemyManager;->getBossEnemyType(Lcom/prineside/tdi2/enums/BossType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBossWaveMap()Lcom/badlogic/gdx/utils/IntMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/enums/BossType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/BossTile;->getBossWavesConfig()Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    move-result-object v1

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    if-lez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_0
    const/16 v6, 0x7d0

    if-ge v4, v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v8, :cond_1

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v7, v7, v6

    iget v8, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    iget v9, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    mul-int v9, v9, v5

    add-int/2addr v8, v9

    iget v9, v7, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    add-int/2addr v8, v9

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v6, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    if-lt v6, v3, :cond_0

    if-ne v5, v6, :cond_0

    :cond_2
    return-object v0
.end method

.method public getBossWavesConfig()Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-object v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->z:[Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->x:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-object v0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->v:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-object v0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->t:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGameValues()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->y:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->HARD:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->w:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->RARE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->u:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile;->s:Lcom/badlogic/gdx/utils/Array;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPECIAL:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/tiles/BossTile$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    return-wide v2

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_2
    return-wide v4

    :cond_3
    return-wide v2
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/BossTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x96

    return p1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, 0x7d0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    :cond_2
    return p1
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/BossTileType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    const-class v0, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/BossType;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->sameAs(Lcom/prineside/tdi2/Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/BossTile;

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v2, v0, :cond_2

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v2, v0, :cond_6

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_5

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/GameValueConfig;->sameAs(Lcom/prineside/tdi2/GameValueConfig;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p1, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->sameAs(Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public setBossTileType(Lcom/prineside/tdi2/enums/BossTileType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "obt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v0, v1, :cond_2

    const-string v0, "ce"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/GameValueConfig;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v0, "cbwc"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->r:Lcom/prineside/tdi2/enums/BossTileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
