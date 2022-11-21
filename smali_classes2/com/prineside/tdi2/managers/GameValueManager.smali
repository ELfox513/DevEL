.class public Lcom/prineside/tdi2/managers/GameValueManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/GameValueManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;,
        Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;,
        Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;,
        Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;,
        Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;,
        Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;,
        Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;,
        Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;,
        Lcom/prineside/tdi2/managers/GameValueManager$Serializer;
    }
.end annotation


# static fields
.field public static final ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:Z

.field public b:Z

.field public final d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

.field public k:Z

.field public final p:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

.field public final q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;

.field public final s:Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0xf0f0fff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager;->t:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/GameValueManager$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->k:Z

    new-instance v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/GameValueManager;->p:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;-><init>(Lcom/prineside/tdi2/managers/GameValueManager;Lcom/prineside/tdi2/managers/GameValueManager$1;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->r:Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;

    new-instance v1, Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;

    invoke-direct {v1, p0, v2}, Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/managers/GameValueManager;Lcom/prineside/tdi2/managers/GameValueManager$1;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->s:Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    invoke-direct {v6}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;-><init>()V

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v3, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->d()V

    :cond_0
    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 8

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/GameValueManager;->p:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/prineside/tdi2/managers/GameValueManager;->createSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/enums/DifficultyMode;ZLcom/prineside/tdi2/BasicLevel;ZZ)Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->k:Z

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;->gameValuesRecalculated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public createSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;Lcom/prineside/tdi2/enums/DifficultyMode;ZLcom/prineside/tdi2/BasicLevel;ZZ)Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;-><init>()V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p2

    :goto_2
    invoke-static {v3}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v3

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-wide v11, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    aput-wide v11, v9, v10

    if-eqz p3, :cond_3

    sget-object v9, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-wide v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    iput-wide v10, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v8, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->STOCK:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    if-eqz p5, :cond_9

    if-eqz p6, :cond_18

    const/4 v6, 0x0

    :goto_4
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_18

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/Research;

    aget-object v7, v7, v6

    if-nez v3, :cond_5

    iget-boolean v8, v7, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    if-eqz v8, :cond_5

    goto :goto_6

    :cond_5
    iget v8, v7, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v8, :cond_8

    iget-boolean v9, v7, Lcom/prineside/tdi2/Research;->cantBeIgnoredOnUserMaps:Z

    if-eqz v9, :cond_8

    if-nez v3, :cond_6

    iget-object v9, v7, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v10, v9

    if-le v8, v10, :cond_6

    array-length v8, v9

    :cond_6
    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Research;->getEffects(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    const/4 v9, 0x0

    :goto_5
    iget v10, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v10, :cond_8

    iget-object v10, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v10, v10, v9

    iget-object v11, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v12, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-wide v13, v11, v12

    move/from16 p1, v3

    iget-wide v2, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    add-double/2addr v13, v2

    aput-wide v13, v11, v12

    if-eqz p3, :cond_7

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v3, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v10, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    sget-object v12, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->RESEARCH:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v2, v3, v10, v11, v12}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v3, v7, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    iput-object v3, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p1

    goto :goto_5

    :cond_8
    :goto_6
    move/from16 p1, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p1

    goto :goto_4

    :cond_9
    move/from16 p1, v3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ResearchManager;->isSetUp()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    :goto_7
    iget v3, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_e

    iget-object v3, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Research;

    aget-object v3, v3, v2

    if-nez p1, :cond_a

    iget-boolean v6, v3, Lcom/prineside/tdi2/Research;->endlessOnly:Z

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    iget v6, v3, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v6, :cond_d

    if-nez p1, :cond_b

    iget-object v7, v3, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v8, v7

    if-le v6, v8, :cond_b

    array-length v6, v7

    :cond_b
    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/Research;->getEffects(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    const/4 v7, 0x0

    :goto_8
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_d

    iget-object v8, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v8, v8, v7

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v11, v9, v10

    iget-wide v13, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    if-eqz p3, :cond_c

    sget-object v9, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v11, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->RESEARCH:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v9, v10, v11, v12, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v8, v3, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->researchType:Lcom/prineside/tdi2/enums/ResearchType;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfigs()[Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_11

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    :goto_b
    iget-object v8, v6, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->gameValues:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_10

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v8, v8, v7

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v11, v9, v10

    iget-wide v13, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    if-eqz p3, :cond_f

    sget-object v9, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v10, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v11, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->TROPHY:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v9, v10, v11, v12, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v8, v6, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->type:Lcom/prineside/tdi2/enums/TrophyType;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->trophyType:Lcom/prineside/tdi2/enums/TrophyType;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_c
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_18

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v3, v3, v2

    const/4 v5, 0x0

    :goto_d
    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_14

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->wasEverCompleted()Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_e
    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_13

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_12

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v10, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v11, v9, v10

    iget-wide v13, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->delta:D

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    if-eqz p3, :cond_12

    sget-object v9, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v10, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v11, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->delta:D

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->LEVEL_QUEST:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v9, v10, v11, v12, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    :goto_f
    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_17

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {v6}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    :goto_10
    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v9, :cond_16

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v9, v10, :cond_15

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;

    iget-object v9, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v10, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-wide v11, v9, v10

    iget-wide v13, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->delta:D

    add-double/2addr v11, v13

    aput-wide v11, v9, v10

    if-eqz p3, :cond_15

    sget-object v9, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v10, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v11, v8, Lcom/prineside/tdi2/items/GameValueGlobalItem;->delta:D

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->LEVEL_WAVE_QUEST:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v9, v10, v11, v12, v8}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v8, v6, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    iput-object v8, v9, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    iget-object v8, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_18
    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    :goto_11
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_1b

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevelQuestConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->wasEverCompleted()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    :goto_12
    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_1a

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v7, v8, :cond_19

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/items/GameValueLevelItem;

    iget-object v7, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v8, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-wide v9, v7, v8

    iget-wide v11, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    if-eqz p3, :cond_19

    sget-object v7, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v8, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v9, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->LEVEL_QUEST:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    iput-object v6, v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    iget-object v6, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    const/4 v2, 0x0

    :goto_13
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_1e

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    :goto_14
    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_1d

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ItemStack;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/enums/ItemType;->GAME_VALUE_LEVEL:Lcom/prineside/tdi2/enums/ItemType;

    if-ne v7, v8, :cond_1c

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/items/GameValueLevelItem;

    iget-object v7, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v8, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-wide v9, v7, v8

    iget-wide v11, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    if-eqz p3, :cond_1c

    sget-object v7, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v8, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    iget-wide v9, v6, Lcom/prineside/tdi2/items/GameValueLevelItem;->delta:D

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->LEVEL_WAVE_QUEST:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->setup(Lcom/prineside/tdi2/enums/GameValueType;DLcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;)V

    iget-object v6, v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->id:Ljava/lang/String;

    iput-object v6, v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->questId:Ljava/lang/String;

    iget-object v6, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1e
    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v2, :cond_1f

    aget-object v5, v1, v15

    mul-int/lit8 v3, v3, 0x1f

    iget-object v6, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v5, v6, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    double-to-int v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_1f
    iput v3, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Research manager is not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/game-values.json"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "default"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    const-string v4, "units"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    move-result-object v4

    iput-object v4, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gv_title_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->titleAlias:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->iconString:Ljava/lang/String;

    const-string v2, "flags"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load game value config \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GameValueManager"

    invoke-static {v3, v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->b:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->requireRecalculation()V

    return-void
.end method

.method public formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/managers/GameValueManager;->t:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;->BOOLEAN:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    const-wide/16 v2, 0x0

    if-ne p3, v1, :cond_1

    cmpg-double p3, p1, v2

    if-gtz p3, :cond_0

    const-string p1, "false"

    goto :goto_0

    :cond_0
    const-string p1, "true"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    cmpl-double v1, p1, v2

    if-lez v1, :cond_2

    const-string v1, "+"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double v4, p1, v4

    const/4 v1, 0x1

    cmpl-double v6, v4, v2

    if-nez v6, :cond_3

    double-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    sget-object p1, Lcom/prineside/tdi2/managers/GameValueManager$3;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const-string p2, "TIME_CHAR_SECOND"

    if-eq p1, v1, :cond_7

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-eq p1, p3, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "%/"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_5
    const-string p1, "/"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_2
    return-object v0
.end method

.method public getCheatingReason(Lcom/badlogic/gdx/utils/Array;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->type:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    sget-object v3, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;->GV_NOT_IN_ORIG:Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->effect:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v3, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->STOCK:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    if-ne v3, v4, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    iget-object v0, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GvSnapDiff;->effect:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-wide v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " != stock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentEffects()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->b()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->p:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->b()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->p:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    return-object v0
.end method

.method public getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->d:[Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/managers/GameValueManager;->t:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->titleAlias:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public getUnits(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    return-object p1
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/GameValueManager$GameValueManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requireRecalculation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->k:Z

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/GameValueManager$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/GameValueManager$2;-><init>(Lcom/prineside/tdi2/managers/GameValueManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->r:Lcom/prineside/tdi2/managers/GameValueManager$_ResearchManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->addListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/GameValueManager;->s:Lcom/prineside/tdi2/managers/GameValueManager$_ProgressManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/GameValueManager;->a:Z

    return-void
.end method

.method public test()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/GameValueManager;->a()V

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
