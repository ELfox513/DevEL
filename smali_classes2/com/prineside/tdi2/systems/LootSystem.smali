.class public Lcom/prineside/tdi2/systems/LootSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;,
        Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/LootSystem$_MinerSystemListener;
    }
.end annotation


# static fields
.field public static final D:Lcom/badlogic/gdx/math/Vector2;

.field public static E:Lcom/prineside/tdi2/ItemStack; = null

.field public static final ENCRYPTED_CASE_GLOBAL_INTERVAL:F = 2400.0f

.field public static final F:[I

.field public static final REWARDING_AD_VIEW_BONUSES:[I


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/badlogic/gdx/utils/IntIntMap;

.field public a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

.field public b:F

.field public d:F

.field public globalLootDropRateMultiplier:F

.field public inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

.field public k:F

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Z

.field public r:F

.field public random:Lcom/badlogic/gdx/math/RandomXS128;

.field public s:F

.field public t:I

.field public u:F

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/systems/LootSystem;->REWARDING_AD_VIEW_BONUSES:[I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/LootSystem;->D:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/systems/LootSystem;->F:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x7
        0xc
        0x12
        0x19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->globalLootDropRateMultiplier:F

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->q:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public static synthetic a()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/LootSystem;->D:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/LootSystem;Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/systems/LootSystem;->k(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V

    return-void
.end method

.method public static d(F)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p0, v0

    if-gtz v2, :cond_0

    sub-float/2addr v0, p0

    const p0, 0x3c23d70a    # 0.01f

    mul-float v0, v0, p0

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v2, 0x445c0000    # 880.0f

    cmpl-float v3, p0, v2

    if-lez v3, :cond_1

    sub-float/2addr p0, v2

    const v3, 0x3aa3d70a    # 0.00125f

    mul-float p0, p0, v3

    add-float/2addr p0, v1

    div-float p0, v1, p0

    sub-float p0, v1, p0

    const/high16 v3, 0x44340000    # 720.0f

    mul-float p0, p0, v3

    add-float/2addr p0, v2

    :cond_1
    sub-float/2addr p0, v0

    const v0, 0x3b03126f    # 0.002f

    mul-float p0, p0, v0

    const v0, 0x3fc90fdb

    sub-float/2addr p0, v0

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p0

    const/high16 v0, 0x42200000    # 40.0f

    mul-float p0, p0, v0

    add-float/2addr p0, v1

    add-float/2addr p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static e(FFI)F
    .locals 8

    float-to-double v0, p0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(DDD)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x3e19999a    # 0.15f

    mul-float v0, v0, p1

    mul-float v0, v0, p0

    int-to-float v1, p2

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    int-to-double v2, p2

    float-to-double v4, p0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    double-to-float p2, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float v1, v1, v2

    sub-float/2addr p2, v1

    const p0, 0x3d99999a    # 0.075f

    mul-float p2, p2, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static f(I)F
    .locals 8

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    int-to-float p0, p0

    const v0, 0x3c23d70a    # 0.01f

    mul-float p0, p0, v0

    return p0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    sub-float/2addr p0, v0

    const v1, 0x3b75c28f    # 0.00375f

    mul-float p0, p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    div-float p0, v1, p0

    sub-float/2addr v1, p0

    const p0, 0x4387747b    # 270.91f

    mul-float v1, v1, p0

    add-float p0, v1, v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v2, v4

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    div-double/2addr v4, v6

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double v4, v4, v6

    add-double/2addr v4, v0

    const-wide v0, 0x3f30624dd2f1a9fcL    # 2.5E-4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    sub-double/2addr v4, v0

    double-to-float p0, v4

    return p0
.end method

.method public static h()Lcom/prineside/tdi2/ItemStack;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/systems/LootSystem;->E:Lcom/prineside/tdi2/ItemStack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/LootSystem;->E:Lcom/prineside/tdi2/ItemStack;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/systems/LootSystem;->E:Lcom/prineside/tdi2/ItemStack;

    return-object v0
.end method

.method public static i([III)F
    .locals 5

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-lt p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x96

    const p1, 0x3b449ba6    # 0.003f

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const/16 v0, 0x190

    const p1, 0x3a449ba6    # 7.5E-4f

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const/16 v0, 0x47e

    const p1, 0x38fba882    # 1.2E-4f

    goto :goto_0

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    const/16 v0, 0x7d0

    const p1, 0x3851b717    # 5.0E-5f

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/16 v0, 0xc80

    const p1, 0x3727c5ac    # 1.0E-5f

    :goto_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge p2, v3, :cond_6

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x6

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    if-gt v2, v0, :cond_7

    return v1

    :cond_7
    sub-int/2addr v2, v0

    int-to-float p0, v2

    const p2, 0x3c23d70a    # 0.01f

    mul-float p0, p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-float p0, v0

    mul-float p0, p0, p1

    return p0
.end method

.method public static j(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/ResourceType;I)F
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-float p1, p1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, v1

    if-nez p2, :cond_0

    const p2, 0x3f333333    # 0.7f

    :goto_0
    mul-float p1, p1, p2

    goto :goto_1

    :cond_0
    if-ne p2, v0, :cond_1

    const p2, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 p2, 0x3f400000    # 0.75f

    mul-float p2, p2, p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    mul-float p1, p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/StrictMath;->abs(F)F

    move-result p0

    mul-float p0, p0, p2

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    const/16 p0, 0x13

    new-array v0, p0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, " = "

    if-ge v2, p0, :cond_0

    aget v4, v0, v2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v4

    invoke-static {v3}, Lcom/prineside/tdi2/systems/LootSystem;->d(F)F

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    new-array v0, p0, [I

    fill-array-data v0, :array_1

    const/4 v2, 0x6

    new-array v4, v2, [F

    fill-array-data v4, :array_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, p0, :cond_1

    aget v8, v0, v7

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "^"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v6, v11, v8}, Lcom/prineside/tdi2/systems/LootSystem;->e(FFI)F

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 p0, 0x1b

    new-array v0, p0, [I

    fill-array-data v0, :array_3

    :goto_3
    if-ge v1, p0, :cond_3

    aget v2, v0, v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " diff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/prineside/tdi2/systems/LootSystem;->f(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x1e
        0x32
        0x4b
        0x5a
        0x63
        0x64
        0x65
        0x78
        0x96
        0xfa
        0x15e
        0x1f4
        0x384
        0x5dc
        0x7d0
        0x9c4
        0x9f6
        0xa28
        0x1388
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0xa
        0x14
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
        0x7d0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x32
        0x4b
        0x5a
        0x63
        0x64
        0x65
        0x78
        0x96
        0xfa
        0x15e
        0x1f4
        0x384
        0x5dc
        0x7d0
        0x7d1
        0x7da
        0x802
        0x898
        0x8de
        0x8df
        0x8fc
        0x9c4
        0x9f6
        0xa28
        0xdac
        0x1388
    .end array-data
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/Enemy;->addLoot(Lcom/prineside/tdi2/Item;I)Lcom/prineside/tdi2/ItemStack;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;->enemyLootAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public canGiveEncryptedChests()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->canLootCases:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    iget v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->encryptedChestsInInventory:I

    add-int/2addr v1, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillWithLoot(Lcom/prineside/tdi2/Enemy;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/WaveSystem;->mode:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    sget-object v4, Lcom/prineside/tdi2/systems/WaveSystem$Mode;->PREDEFINED:Lcom/prineside/tdi2/systems/WaveSystem$Mode;

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-static {v2}, Lcom/prineside/tdi2/systems/LootSystem;->f(I)F

    move-result v2

    iget v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    mul-float v3, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->canGiveEncryptedChests()Z

    move-result v2

    const/4 v5, 0x5

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v7, Lcom/prineside/tdi2/enums/GameValueType;->LOOT_FREQUENCY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v8, 0x3

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/high16 v7, 0x40a00000    # 5.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const/high16 v7, 0x40200000    # 2.5f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    const/high16 v7, 0x3fa00000    # 1.25f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    const/4 v5, 0x4

    :cond_4
    :goto_0
    iget v6, v0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    rem-int/2addr v6, v5

    const/high16 v5, 0x45610000    # 3600.0f

    const/high16 v7, 0x44960000    # 1200.0f

    const/high16 v9, 0x45160000    # 2400.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v13, v1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v6

    sget-object v13, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v6, v13, :cond_26

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_25

    iget v13, v0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_25

    iget-object v13, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v14, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v14, v14, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    const v15, 0x3d4ccccd    # 0.05f

    const v16, 0x3e4ccccd    # 0.2f

    const v17, 0x3f333333    # 0.7f

    const/high16 v18, 0x3f400000    # 0.75f

    const v19, 0x3eb33333    # 0.35f

    const/16 v8, 0x64

    if-ge v14, v8, :cond_6

    int-to-float v11, v14

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v11, v11, v20

    mul-float v11, v11, v19

    goto :goto_2

    :cond_6
    const/16 v11, 0x96

    if-ge v14, v11, :cond_7

    add-int/lit8 v11, v14, -0x64

    int-to-float v11, v11

    const/high16 v20, 0x42480000    # 50.0f

    div-float v11, v11, v20

    mul-float v11, v11, v16

    add-float v11, v11, v19

    goto :goto_2

    :cond_7
    const/high16 v11, 0x432f0000    # 175.0f

    const/16 v4, 0x145

    if-ge v14, v4, :cond_8

    const v4, 0x3f0ccccd    # 0.55f

    add-int/lit16 v10, v14, -0x96

    int-to-float v10, v10

    div-float/2addr v10, v11

    const v11, 0x3e19999a    # 0.15f

    mul-float v10, v10, v11

    add-float v11, v10, v4

    goto :goto_2

    :cond_8
    const/16 v4, 0x1f4

    if-ge v14, v4, :cond_9

    add-int/lit16 v4, v14, -0x145

    int-to-float v4, v4

    div-float/2addr v4, v11

    mul-float v4, v4, v15

    add-float v11, v4, v17

    goto :goto_2

    :cond_9
    add-int/lit16 v4, v14, -0x1f4

    int-to-float v4, v4

    const/high16 v10, 0x437a0000    # 250.0f

    div-float/2addr v4, v10

    const v10, 0x3ccccccd    # 0.025f

    mul-float v4, v4, v10

    add-float v11, v4, v18

    :goto_2
    const/high16 v26, 0x3f000000    # 0.5f

    const/high16 v4, 0x42700000    # 60.0f

    const v10, 0x3f266666    # 0.65f

    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a

    const v4, 0x3dcccccd    # 0.1f

    :goto_3
    mul-float v11, v11, v4

    goto :goto_4

    :cond_a
    const/high16 v4, 0x43160000    # 150.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_b

    mul-float v11, v11, v16

    goto :goto_4

    :cond_b
    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_c

    mul-float v11, v11, v19

    goto :goto_4

    :cond_c
    const/high16 v4, 0x44160000    # 600.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_d

    mul-float v11, v11, v21

    goto :goto_4

    :cond_d
    cmpg-float v4, v3, v7

    if-gez v4, :cond_e

    mul-float v11, v11, v10

    goto :goto_4

    :cond_e
    const/high16 v4, 0x44e10000    # 1800.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_f

    const v4, 0x3f4ccccd    # 0.8f

    goto :goto_3

    :cond_f
    cmpg-float v4, v3, v9

    if-gez v4, :cond_10

    mul-float v11, v11, v12

    goto :goto_4

    :cond_10
    const v4, 0x453b8000    # 3000.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_11

    const v4, 0x3f933333    # 1.15f

    goto :goto_3

    :cond_11
    cmpg-float v4, v3, v5

    if-gez v4, :cond_12

    const v4, 0x3fa66666    # 1.3f

    goto :goto_3

    :cond_12
    const v4, 0x3fb33333    # 1.4f

    goto :goto_3

    :goto_4
    const/16 v4, 0x4b

    const v16, 0x3ecccccd    # 0.4f

    if-gt v14, v4, :cond_13

    cmpl-float v4, v11, v16

    if-lez v4, :cond_13

    const v17, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_13
    const/16 v4, 0x57

    if-gt v14, v4, :cond_14

    cmpl-float v4, v11, v21

    if-lez v4, :cond_14

    const/high16 v17, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_14
    if-gt v14, v8, :cond_15

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v4, v11, v4

    if-lez v4, :cond_15

    const v17, 0x3f19999a    # 0.6f

    goto :goto_5

    :cond_15
    const/16 v4, 0x6e

    if-gt v14, v4, :cond_16

    cmpl-float v4, v11, v10

    if-lez v4, :cond_16

    const v17, 0x3f266666    # 0.65f

    goto :goto_5

    :cond_16
    const/16 v4, 0x78

    if-gt v14, v4, :cond_17

    cmpl-float v4, v11, v17

    if-lez v4, :cond_17

    goto :goto_5

    :cond_17
    const/16 v4, 0x82

    if-gt v14, v4, :cond_18

    cmpl-float v4, v11, v18

    if-lez v4, :cond_18

    const/high16 v17, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_18
    const/16 v4, 0x8c

    if-gt v14, v4, :cond_19

    const v4, 0x3f51eb85    # 0.82f

    cmpl-float v4, v11, v4

    if-lez v4, :cond_19

    const v17, 0x3f51eb85    # 0.82f

    goto :goto_5

    :cond_19
    const/16 v4, 0x9b

    if-gt v14, v4, :cond_1a

    const v4, 0x3f666666    # 0.9f

    cmpl-float v4, v11, v4

    if-lez v4, :cond_1a

    const v17, 0x3f666666    # 0.9f

    goto :goto_5

    :cond_1a
    move/from16 v17, v11

    :goto_5
    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    mul-float v4, v4, v17

    float-to-double v10, v4

    iget-object v4, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->LOOT_RARITY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    double-to-float v4, v10

    cmpl-float v8, v4, v12

    if-lez v8, :cond_1b

    const/4 v8, 0x0

    float-to-double v10, v8

    sub-float v8, v4, v12

    float-to-double v13, v8

    const-wide v7, 0x3fe999999999999aL    # 0.8

    invoke-static {v13, v14, v7, v8}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    const-wide v13, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double v7, v7, v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v7

    double-to-float v7, v10

    goto :goto_6

    :cond_1b
    const/4 v7, 0x0

    :goto_6
    cmpl-float v8, v4, v12

    if-lez v8, :cond_1c

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_1c
    cmpl-float v8, v7, v4

    if-lez v8, :cond_1d

    move v7, v4

    :cond_1d
    sub-float v8, v4, v7

    const/4 v4, 0x0

    cmpg-float v10, v8, v4

    if-gez v10, :cond_1e

    const/4 v8, 0x0

    :cond_1e
    iget-object v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v4

    iget-object v10, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v10

    sub-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/StrictMath;->abs(F)F

    move-result v4

    const v10, 0x3f87ae14    # 1.06f

    mul-float v4, v4, v10

    cmpl-float v10, v4, v12

    if-lez v10, :cond_1f

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_1f
    mul-float v4, v4, v8

    add-float/2addr v7, v4

    invoke-static {v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v24

    invoke-static {v7}, Lcom/prineside/tdi2/managers/ProgressManager;->globalQualityToRarityQualuty(F)F

    move-result v25

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v4}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_7

    :cond_20
    const/4 v8, 0x0

    :goto_7
    float-to-double v10, v8

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4, v8}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v13

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v13

    double-to-float v4, v10

    invoke-static {}, Lcom/prineside/tdi2/systems/LootSystem;->h()Lcom/prineside/tdi2/ItemStack;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v10, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v13, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/16 v27, 0x0

    const/high16 v28, 0x3e800000    # 0.25f

    if-eqz v2, :cond_21

    const/high16 v30, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_21
    const/16 v30, 0x0

    :goto_8
    iget-object v10, v10, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v10

    if-eqz v10, :cond_22

    const/high16 v31, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_22
    const v31, 0x3d4ccccd    # 0.05f

    :goto_9
    const/high16 v32, 0x3f800000    # 1.0f

    iget-object v10, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v10

    mul-float v10, v10, v21

    add-float v10, v10, v21

    cmpl-float v7, v7, v10

    if-lez v7, :cond_23

    const/16 v33, 0x1

    goto :goto_a

    :cond_23
    const/16 v33, 0x0

    :goto_a
    iget-object v7, v0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object/from16 v21, v11

    move-object/from16 v22, v8

    move-object/from16 v23, v13

    move/from16 v29, v4

    move-object/from16 v34, v7

    invoke-virtual/range {v21 .. v34}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/prineside/tdi2/ItemStack;Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    iget-object v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->countItem(Lcom/prineside/tdi2/Item;)V

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v4, v7, v10}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    add-int/2addr v4, v10

    iput v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->m()V

    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_24

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    invoke-virtual {v0, v1, v4, v7, v10}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    add-int/2addr v4, v10

    iput v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->m()V

    :cond_24
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    const/high16 v7, 0x44960000    # 1200.0f

    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_25
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->calculatePrizeGreenPapers()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    iget v6, v0, Lcom/prineside/tdi2/systems/LootSystem;->v:I

    sub-int v6, v4, v6

    iget v7, v0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    if-lt v6, v7, :cond_26

    sget-object v7, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v7, v6, v8}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    iput v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->v:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->l()V

    :cond_26
    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    rem-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_27

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v6, v1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v4, v6, :cond_2a

    :cond_27
    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    if-nez v4, :cond_28

    const/high16 v5, 0x44960000    # 1200.0f

    goto :goto_b

    :cond_28
    const/4 v6, 0x1

    if-ne v4, v6, :cond_29

    goto :goto_b

    :cond_29
    const v5, 0x4628c000    # 10800.0f

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v5, v5, v4

    :goto_b
    cmpl-float v4, v3, v5

    if-lez v4, :cond_2a

    sub-float/2addr v3, v5

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2a

    sget-object v3, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5, v4}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    iget v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    :cond_2a
    if-eqz v2, :cond_2c

    iget v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    rem-int/lit8 v2, v2, 0xb

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v3, v1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v2, v3, :cond_2c

    :cond_2b
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->PTCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    double-to-float v2, v4

    div-float/2addr v2, v9

    add-float/2addr v2, v12

    iget v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v9

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v4

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v3, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2c

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->EQCG:Lcom/prineside/tdi2/enums/StatisticsType;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v2, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    iget v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/managers/ItemManager;->getQueuedEncryptedCaseType(I)Lcom/prineside/tdi2/enums/CaseType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->areF2pTimersDisabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sget-object v5, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    invoke-virtual {v5, v2, v3, v4}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    iget v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    :cond_2c
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-static {v2}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->g()F

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    :cond_2d
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->PTEMWD:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/LootSystem;->g()F

    move-result v2

    add-float/2addr v3, v2

    iput v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    float-to-double v5, v2

    const-wide v7, 0x3ff3333333333333L    # 1.2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v5, v5, v7

    add-double/2addr v5, v3

    double-to-float v2, v5

    const/high16 v3, 0x40900000    # 4.5f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2e

    const/high16 v2, 0x40900000    # 4.5f

    :cond_2e
    float-to-int v3, v2

    iget-object v4, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v4

    int-to-float v5, v3

    sub-float/2addr v2, v5

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2f

    add-int/lit8 v3, v3, 0x1

    :cond_2f
    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->BDFTPG:Lcom/prineside/tdi2/enums/StatisticsType;

    int-to-double v5, v3

    invoke-virtual {v2, v4, v5, v6}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    sget-object v2, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/systems/LootSystem;->c(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V

    :cond_30
    return-void
.end method

.method public final g()F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->BIT_DUST_DROP_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x44e10000    # 1800.0f

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v2

    mul-float v1, v1, v0

    return v1
.end method

.method public getLootSlots(Lcom/prineside/tdi2/enums/MinerType;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/systems/LootSystem$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_INFIAR_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_TENSOR_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_MATRIX_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_VECTOR_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_SCALAR_LOOT_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    :goto_1
    return v0
.end method

.method public getRewardingAdViews()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    return v0
.end method

.method public getRewardingAdsLootMultiplier()F
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/systems/LootSystem;->REWARDING_AD_VIEW_BONUSES:[I

    array-length v3, v2

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    int-to-float v0, v0

    const v2, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Loot"

    return-object v0
.end method

.method public getTimeToRewardingAds(Z)F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/high16 v0, 0x43960000    # 300.0f

    iget v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public isRewardingAdAvailableByState()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/LootSystem;->getTimeToRewardingAds(Z)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRewardingAdAvailableInReality()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/LootSystem;->getTimeToRewardingAds(Z)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p4, :cond_4

    if-lez p3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2000

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/prineside/tdi2/systems/LootSystem;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    sget-object v6, Lcom/prineside/tdi2/systems/LootSystem;->F:[I

    iget-object v7, v1, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/systems/LootSystem;->getLootSlots(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/systems/LootSystem;->F:[I

    iget-object v7, v1, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v6, v7, v5}, Lcom/prineside/tdi2/systems/LootSystem;->i([III)F

    move-result v6

    const/4 v7, 0x0

    if-lt v3, v5, :cond_1

    const/4 v6, 0x0

    :cond_1
    cmpl-float v5, v6, v7

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    const v7, 0x3ecccccd    # 0.4f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget-object v5, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    move-object/from16 v6, p2

    invoke-static {v5, v6, v3}, Lcom/prineside/tdi2/systems/LootSystem;->j(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v5

    invoke-static {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v8

    invoke-static {v5}, Lcom/prineside/tdi2/managers/ProgressManager;->globalQualityToRarityQualuty(F)F

    move-result v9

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v5, Lcom/prineside/tdi2/Game;->itemManager:Lcom/prineside/tdi2/managers/ItemManager;

    iget-object v7, v0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    iget-object v5, v0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-object/from16 v18, v5

    invoke-virtual/range {v6 .. v18}, Lcom/prineside/tdi2/managers/ItemManager;->generateItemByRarity(Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/enums/RarityType;FFFFFFFFZLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v5

    iget-object v6, v0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->countItem(Lcom/prineside/tdi2/Item;)V

    sget-object v6, Lcom/prineside/tdi2/systems/LootSystem;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    :cond_2
    iget-object v7, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v9, 0x2

    invoke-virtual {v7, v5, v8, v6, v9}, Lcom/prineside/tdi2/systems/GameStateSystem;->addLootIssuedPrizes(Lcom/prineside/tdi2/ItemStack;FFI)V

    iget-object v6, v1, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/prineside/tdi2/systems/LootSystem;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    :goto_1
    iget-object v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    iget-object v2, v0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;

    invoke-interface {v2, v1, v5}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;->minerMinedItem(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/ItemStack;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    int-to-float v1, v0

    int-to-float v2, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    sub-float/2addr v2, v1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->LOOT_FREQUENCY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const v0, 0x4bf099c0    # 3.1536E7f

    goto :goto_0

    :cond_0
    sub-float v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3d018937

    mul-float v2, v2, v3

    sub-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    iget v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    invoke-static {v2, v3, v4}, Lcom/prineside/tdi2/systems/LootSystem;->e(FFI)F

    move-result v2

    div-float v0, v2, v0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->globalLootDropRateMultiplier:F

    const v3, 0x3a83126f    # 0.001f

    invoke-static {v2, v3, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    if-nez v2, :cond_1

    const v2, 0x3eb33333    # 0.35f

    mul-float v0, v0, v2

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v1, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/RandomXS128;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->globalLootDropRateMultiplier:F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->q:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->v:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    const-class v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntIntMap;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public setup()V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->cpy()Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getSeed()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    const-wide/16 v4, 0x1d

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    new-instance v2, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loot random state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LootSystem"

    invoke-static {v4, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/prineside/tdi2/systems/LootSystem;->d(F)F

    move-result v2

    const/high16 v5, 0x43520000    # 210.0f

    mul-float v2, v2, v5

    iput v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemStep = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " avgDiff = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v5, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    const/high16 v6, 0x42fa0000    # 125.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x64

    if-ge v5, v9, :cond_0

    int-to-float v5, v5

    const v9, 0x3c23d70a    # 0.01f

    mul-float v5, v5, v9

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    goto :goto_0

    :cond_0
    if-le v5, v9, :cond_1

    sub-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x43c80000    # 400.0f

    div-float/2addr v5, v9

    mul-float v5, v5, v7

    add-float/2addr v5, v8

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    goto :goto_0

    :cond_1
    iput v8, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    const/16 v5, 0x7d

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    :goto_0
    iget v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    const v6, 0x3e19999a    # 0.15f

    mul-float v5, v5, v6

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    iget v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v6, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModePrizeMultiplier(Lcom/prineside/tdi2/enums/DifficultyMode;)F

    move-result v2

    div-float/2addr v8, v2

    mul-float v5, v5, v8

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v6, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    if-eqz v6, :cond_2

    div-float/2addr v5, v7

    iput v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    :cond_2
    iget-boolean v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    mul-float v2, v2, v7

    iput v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    :cond_3
    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-lez v2, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->m()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->l()V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v6, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/LootSystem$1;)V

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v6, Lcom/prineside/tdi2/systems/LootSystem$_MinerSystemListener;

    invoke-direct {v6, v2, v7}, Lcom/prineside/tdi2/systems/LootSystem$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/LootSystem$1;)V

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game start ts: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-wide v5, v5, Lcom/prineside/tdi2/systems/GameStateSystem;->gameStartTimestamp:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " avg diff: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v5, v5, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " loot random seed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " items step: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemsStep is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "inventoryStatistics not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GameStartTimestamp not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GameStateSystem seed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(F)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/enums/ActionType;->RA:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v5, v6, :cond_2

    check-cast v4, Lcom/prineside/tdi2/actions/RewardingAdAction;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->isRewardingAdAvailableByState()Z

    move-result v4

    const-string v5, "LootSystem"

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rewarding ad view registered, current multiplier: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->getRewardingAdsLootMultiplier()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;

    invoke-interface {v5}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;->rewardingAdRegistered()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to handle rewarding ads action - not available ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/LootSystem;->getTimeToRewardingAds(Z)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->getRewardingAdsLootMultiplier()F

    move-result v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    iget-boolean p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->q:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->isRewardingAdAvailableByState()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;

    invoke-interface {p1}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener;->rewardingAdBecameAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->q:Z

    :cond_6
    return-void
.end method

.method public viewRewardingAdAction()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/LootSystem;->isRewardingAdAvailableByState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/RewardingAdAction;

    invoke-direct {v1}, Lcom/prineside/tdi2/actions/RewardingAdAction;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to add rewarding ads action - not available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/LootSystem;->getTimeToRewardingAds(Z)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LootSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->rewardAdsAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const-class v1, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->globalLootDropRateMultiplier:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->inventoryStatistics:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->a:Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->p:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->q:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->s:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->t:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->u:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->v:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->w:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->x:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->y:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->z:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->A:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->B:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->C:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
