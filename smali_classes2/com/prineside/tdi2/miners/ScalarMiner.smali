.class public Lcom/prineside/tdi2/miners/ScalarMiner;
.super Lcom/prineside/tdi2/Miner;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;
    }
.end annotation


# static fields
.field public static final u:[F

.field public static final v:[I


# instance fields
.field public t:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/miners/ScalarMiner;->u:[F

    sget-object v1, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    aput v2, v0, v1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/miners/ScalarMiner;->v:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0x190
        0x3e8
        0x5dc
        0x834
        0xaf0
        0xe74
        0x12c0
        0x1770
        0x1f40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Miner;-><init>(Lcom/prineside/tdi2/enums/MinerType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/miners/ScalarMiner$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/miners/ScalarMiner;-><init>()V

    return-void
.end method

.method public static synthetic c()[F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/miners/ScalarMiner;->u:[F

    return-object v0
.end method


# virtual methods
.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 22

    move-object/from16 v6, p0

    const/high16 v0, 0x43000000    # 128.0f

    div-float v4, p4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Miner;->isPrepared()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Miner;->getCurrentMiningSpeedFromSystem()F

    move-result v0

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float v0, v0, v2

    iget v2, v6, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    :cond_0
    iget v1, v6, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    mul-float v0, v0, p5

    add-float/2addr v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v1, v0

    iput v1, v6, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    goto :goto_0

    :cond_1
    iput v1, v6, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MinerManager$Factories;->SCALAR:Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;

    iget-object v8, v0, Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v0, 0x41700000    # 15.0f

    mul-float v0, v0, v4

    add-float v9, p2, v0

    add-float v10, p3, v0

    const/high16 v0, 0x41e80000    # 29.0f

    mul-float v0, v0, v4

    const/high16 v1, 0x42680000    # 58.0f

    mul-float v18, v4, v1

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget v1, v6, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    move-object/from16 v7, p1

    move v11, v0

    move v12, v0

    move/from16 v13, v18

    move/from16 v14, v18

    move/from16 v17, v1

    invoke-virtual/range {v7 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/MinerManager$Factories;->SCALAR:Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;

    iget-object v12, v1, Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v1, 0x425c0000    # 55.0f

    mul-float v1, v1, v4

    add-float v13, p2, v1

    add-float v14, p3, v1

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    iget v1, v6, Lcom/prineside/tdi2/miners/ScalarMiner;->t:F

    move-object/from16 v11, p1

    move v15, v0

    move/from16 v16, v0

    move/from16 v17, v18

    move/from16 v21, v1

    invoke-virtual/range {v11 .. v21}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, p4

    add-float v2, p2, v0

    add-float v3, p3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/Miner;->b(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/Miner;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    return-void
.end method

.method public getBaseUpgradePrice(I)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/miners/ScalarMiner;->v:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method
