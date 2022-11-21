.class public Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;
.super Lcom/prineside/tdi2/WaveProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;,
        Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;,
        Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$SnakeBossWaveProcessorFactory;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Wave;

.field public b:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public p:I

.field public q:Z

.field public r:Lcom/prineside/tdi2/GameSystemProvider;

.field public s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

.field public t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveProcessor;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/Wave;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    return v0
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    sget-object v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-void
.end method

.method public generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v1

    move/from16 v2, p1

    int-to-double v3, v2

    const-wide v5, 0x3feb333333333333L    # 0.85

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveCoinsSum(I)F

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveExpSum(I)F

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/WaveProcessor;->calculateDefaultBossWaveScoreSum(I)F

    move-result v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v14, v4, v6

    const v4, 0x3e99999a    # 0.3f

    mul-float v15, v5, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    int-to-float v6, v3

    div-float v26, v14, v6

    const v7, 0x3f333333    # 0.7f

    mul-float v5, v5, v7

    div-float/2addr v5, v6

    mul-float v2, v2, v7

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/StrictMath;->round(F)I

    move-result v2

    float-to-double v7, v1

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    const-wide v9, 0x3ff47ae147ae147bL    # 1.28

    invoke-static {v7, v8, v9, v10}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    double-to-float v1, v7

    const v7, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v7

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v1, v7

    const v7, 0x4039999a    # 2.9f

    mul-float v10, v1, v7

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v10, v1

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v7, v6

    mul-float v1, v1, v7

    new-instance v13, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v13

    move-object/from16 v27, v13

    move/from16 v13, v16

    move/from16 v16, v4

    invoke-direct/range {v7 .. v16}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    move-object/from16 v4, v27

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v7, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v17, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v18, 0x3f800000    # 1.0f

    add-int/lit8 v20, v3, -0x1

    const v21, 0x3ebd70a4    # 0.37f

    const v22, 0x3ebd70a4    # 0.37f

    move-object/from16 v16, v7

    move/from16 v19, v1

    move/from16 v23, v26

    move/from16 v24, v5

    move/from16 v25, v2

    invoke-direct/range {v16 .. v25}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v17, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v19, v1, v4

    const/16 v20, 0x1

    const v1, 0x3ebd70a4    # 0.37f

    mul-float v21, v6, v1

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v23, v26

    move/from16 v24, v5

    move/from16 v25, v2

    invoke-direct/range {v16 .. v25}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    const-class v0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 5

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/EnemyGroup;

    iget v4, v4, Lcom/prineside/tdi2/EnemyGroup;->count:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    new-instance v2, Lcom/prineside/tdi2/Wave;

    invoke-direct {v2, p2, p3, v0}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iput-object v2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-boolean v1, v2, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean v1, v2, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "enemy_name_SNAKE_BOSS_HEAD"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-object p0, p2, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    if-nez p2, :cond_1

    new-instance p2, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    new-instance p2, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    :cond_1
    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p1
.end method

.method public update(F)V
    .locals 9

    iget-boolean p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Wave;->isFullySpawned()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->g()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    check-cast p1, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;

    iget v2, p1, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    iget v3, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    int-to-float v4, v3

    iget v5, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    iget v6, p1, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMaxSpeed:F

    sub-float/2addr v6, v2

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    int-to-float v3, v3

    int-to-float v4, v5

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, p1, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->damageResistance:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const v7, 0x3ebd70a4    # 0.37f

    if-ge v3, v6, :cond_5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast v5, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    add-int/lit8 v8, v3, -0x1

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget v5, v5, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v6, v6, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, v7

    cmpl-float v6, v5, v1

    if-lez v6, :cond_4

    add-float/2addr v4, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    sub-float v3, v2, v4

    iget v4, p1, Lcom/prineside/tdi2/enemies/bosses/SnakeBossHeadEnemy;->defaultMinSpeed:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    mul-float v3, v4, v5

    :cond_6
    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    :goto_2
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_8

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast p1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    add-int/lit8 v4, v0, -0x1

    aget-object p1, p1, v4

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v4, v3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float v4, p1, v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    sub-float/2addr p1, v7

    iput p1, v3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    iput v1, v3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->k:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->p:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->q:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
