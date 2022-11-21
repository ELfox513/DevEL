.class public Lcom/prineside/tdi2/waves/templates/IcyHigh;
.super Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/WaveTemplates$WaveTemplate;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    new-instance v1, Lcom/prineside/tdi2/waves/templates/IcyHigh$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/waves/templates/IcyHigh$1;-><init>(Lcom/prineside/tdi2/waves/templates/IcyHigh;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/prineside/tdi2/waves/templates/IcyHigh;->a:[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    return-void
.end method


# virtual methods
.method public getEnemyGroupConfigs()[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/waves/templates/IcyHigh;->a:[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    return-object v0
.end method

.method public getProbability(IFF)I
    .locals 10

    const/4 v2, 0x3

    const v3, 0x3d8f5c29    # 0.07f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ea8f5c3    # 0.33f

    const/high16 v6, -0x3dd00000    # -44.0f

    const/high16 v7, 0x41c80000    # 25.0f

    const v8, 0x3de147ae    # 0.11f

    const/4 v9, 0x4

    move v0, p1

    move v1, p3

    invoke-static/range {v0 .. v9}, Lcom/prineside/tdi2/WaveTemplates;->calculateProbability(IFIFFFFFFI)I

    move-result p1

    return p1
.end method

.method public getWaveMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWaveName()Ljava/lang/String;
    .locals 1

    const-string v0, "IcyHigh"

    return-object v0
.end method
