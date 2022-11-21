.class public Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;
.super Lcom/prineside/tdi2/WaveProcessor;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;,
        Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;,
        Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$MobchainBossWaveProcessorFactory;
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

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Lcom/prineside/tdi2/GameSystemProvider;

.field public s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

.field public t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveProcessor;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Wave;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    return v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/Enemy$EnemyReference;)Lcom/prineside/tdi2/Enemy$EnemyReference;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-object p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method


# virtual methods
.method public generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/EnemyGroup;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-static/range {p1 .. p2}, Lcom/prineside/tdi2/managers/WaveManager;->getWaveValue(II)F

    move-result v1

    move/from16 v2, p1

    int-to-double v3, v2

    const-wide v5, 0x3feb333333333333L    # 0.85

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    const/16 v3, 0x8

    :cond_0
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

    int-to-float v7, v3

    div-float v23, v14, v7

    const v8, 0x3f333333    # 0.7f

    mul-float v5, v5, v8

    div-float v24, v5, v7

    mul-float v2, v2, v8

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/StrictMath;->round(F)I

    move-result v25

    const/high16 v2, 0x41f00000    # 30.0f

    float-to-double v9, v1

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    const-wide v11, 0x3ff451eb851eb852L    # 1.27

    invoke-static {v9, v10, v11, v12}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float v1, v1, v6

    add-float v10, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v7

    add-float/2addr v2, v1

    mul-float v2, v2, v10

    div-float/2addr v2, v7

    mul-float v19, v2, v8

    new-instance v1, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    move/from16 v16, v4

    invoke-direct/range {v7 .. v16}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v1, Lcom/prineside/tdi2/EnemyGroup;

    sget-object v17, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    const v18, 0x3f4ccccd    # 0.8f

    add-int/lit8 v20, v3, -0x1

    const v21, 0x3f0ccccd    # 0.55f

    const v22, 0x3f0ccccd    # 0.55f

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v25}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Wave;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    iput-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    const-class v0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    return-void
.end method

.method public setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
    .locals 5

    iput-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p0, p2, p3}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_0

    iget v3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/EnemyGroup;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/prineside/tdi2/EnemyGroup;->count:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/prineside/tdi2/Wave;

    invoke-direct {v2, p2, p3, v0}, Lcom/prineside/tdi2/Wave;-><init>(IILcom/badlogic/gdx/utils/Array;)V

    iput-object v2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-boolean v1, v2, Lcom/prineside/tdi2/Wave;->enemiesCanBeSplitBetweenSpawns:Z

    iput-boolean v1, v2, Lcom/prineside/tdi2/Wave;->enemiesCanHaveRandomSideShifts:Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "enemy_name_MOBCHAIN_BOSS_HEAD"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/prineside/tdi2/Wave;->waveMessage:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    iput-object p0, p2, Lcom/prineside/tdi2/Wave;->waveProcessor:Lcom/prineside/tdi2/WaveProcessor;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    if-nez p2, :cond_1

    new-instance p2, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    new-instance p2, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    invoke-direct {p2, p0, p3}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$1;)V

    iput-object p2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    :cond_1
    iget-object p2, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object p2, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    return-object p1
.end method

.method public update(F)V
    .locals 8

    iget-boolean p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/utils/EntityUtils;->removeNullRefs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Wave;->isFullySpawned()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    const-string p1, "MobchainBossWaveProcessor"

    const-string v0, "done"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->i()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const v6, 0x3f0ccccd    # 0.55f

    if-ge v2, v5, :cond_5

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    add-int/lit8 v7, v2, -0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    iget v4, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v5, v5, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v6

    cmpl-float v5, v4, v1

    if-lez v5, :cond_4

    add-float/2addr v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v3, v2, v3

    const v4, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_6

    const v3, 0x3e4ccccd    # 0.2f

    :cond_6
    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    :goto_2
    iget-object v3, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_8

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    check-cast v3, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    add-int/lit8 v5, v0, -0x1

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/Enemy;->setSpeed(F)V

    iget v3, v3, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    iget v5, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    sub-float v5, v3, v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    sub-float/2addr v3, v6

    iput v3, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    cmpg-float v3, v3, v1

    if-gez v3, :cond_7

    iput v1, v4, Lcom/prineside/tdi2/Enemy;->passedTiles:F

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v0

    iget v1, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->buffsByType:[Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->REGENERATION:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    move-object v2, v0

    check-cast v2, Lcom/prineside/tdi2/enemies/bosses/MobchainBossCreepEnemy;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/BuffManager$Factories;->REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/buffs/RegenerationBuff;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/prineside/tdi2/buffs/RegenerationBuff;->setup(FFFLcom/prineside/tdi2/Enemy$EnemyReference;)V

    iget-object v1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    invoke-virtual {v1, p1, v0}, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/RegenerationBuff;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v3, 0x0

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->BULLET:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/systems/EnemySystem;->killEnemy(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V

    :cond_a
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->a:Lcom/prineside/tdi2/Wave;

    const-class v1, Lcom/prineside/tdi2/Wave;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->b:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->k:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->q:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->r:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->s:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_MapSystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor;->t:Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    const-class v1, Lcom/prineside/tdi2/waves/processors/MobchainBossWaveProcessor$_EnemySystemListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
