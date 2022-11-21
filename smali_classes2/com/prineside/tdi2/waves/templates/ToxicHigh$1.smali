.class Lcom/prineside/tdi2/waves/templates/ToxicHigh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/templates/ToxicHigh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/waves/templates/ToxicHigh;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/waves/templates/ToxicHigh;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/templates/ToxicHigh$1;->a:Lcom/prineside/tdi2/waves/templates/ToxicHigh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounty(IFF)F
    .locals 0

    int-to-float p1, p1

    const p2, 0x3d23d70a    # 0.04f

    mul-float p1, p1, p2

    const p2, 0x3fd9999a    # 1.7f

    add-float/2addr p1, p2

    return p1
.end method

.method public getCount(IFF)I
    .locals 2

    int-to-double p1, p1

    const-wide v0, 0x3fe6666666666666L    # 0.7

    invoke-static {p1, p2, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public getDelay(IFF)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getEnemyType()Lcom/prineside/tdi2/enums/EnemyType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    return-object v0
.end method

.method public getHealth(IFF)F
    .locals 2

    float-to-double p1, p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3d50e560    # 0.051f

    mul-float p1, p1, p2

    const/high16 p2, 0x41000000    # 8.0f

    add-float/2addr p1, p2

    return p1
.end method

.method public getInterval(IFF)F
    .locals 0

    const p1, 0x3e99999a    # 0.3f

    return p1
.end method

.method public getKillExp(IFF)F
    .locals 0

    int-to-float p1, p1

    const p2, 0x3c0b4396    # 0.0085f

    mul-float p1, p1, p2

    const p2, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, p2

    return p1
.end method

.method public getKillScore(IFF)I
    .locals 0

    const/16 p1, 0x8

    return p1
.end method

.method public getSpeed(IFF)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
