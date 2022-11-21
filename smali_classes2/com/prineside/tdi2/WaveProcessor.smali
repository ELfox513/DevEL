.class public abstract Lcom/prineside/tdi2/WaveProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDefaultBossWaveCoinsSum(I)F
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    add-double/2addr v0, v2

    int-to-float p0, p0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float p0, p0, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr p0, v2

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p0, p0, v0

    return p0
.end method

.method public static calculateDefaultBossWaveExpSum(I)F
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    add-double/2addr v0, v2

    int-to-float p0, p0

    const v2, 0x3c23d70a    # 0.01f

    mul-float p0, p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p0, v2

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p0, p0, v0

    return p0
.end method

.method public static calculateDefaultBossWaveScoreSum(I)F
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    double-to-float p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public abstract generateEnemyGroups(II)Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            ">;"
        }
    .end annotation
.end method

.method public getNextWaveDelayMultiplier()F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public abstract isDone()Z
.end method

.method public abstract setup(Lcom/prineside/tdi2/GameSystemProvider;II)Lcom/prineside/tdi2/Wave;
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
