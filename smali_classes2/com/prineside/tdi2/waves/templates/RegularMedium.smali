.class public Lcom/prineside/tdi2/waves/templates/RegularMedium;
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

    new-instance v1, Lcom/prineside/tdi2/waves/templates/RegularMedium$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/waves/templates/RegularMedium$1;-><init>(Lcom/prineside/tdi2/waves/templates/RegularMedium;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/prineside/tdi2/waves/templates/RegularMedium;->a:[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    return-void
.end method


# virtual methods
.method public getEnemyGroupConfigs()[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/waves/templates/RegularMedium;->a:[Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;

    return-object v0
.end method

.method public getProbability(IFF)I
    .locals 10

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42200000    # 40.0f

    const v8, 0x3e23d70a    # 0.16f

    const/4 v9, 0x3

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

    const-string v0, "RegularMedium"

    return-object v0
.end method
