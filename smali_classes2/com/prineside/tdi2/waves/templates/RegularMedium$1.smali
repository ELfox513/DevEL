.class Lcom/prineside/tdi2/waves/templates/RegularMedium$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/templates/RegularMedium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/waves/templates/RegularMedium;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/waves/templates/RegularMedium;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/templates/RegularMedium$1;->a:Lcom/prineside/tdi2/waves/templates/RegularMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounty(IFF)F
    .locals 0

    int-to-float p1, p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    add-float/2addr p1, p2

    return p1
.end method

.method public getCount(IFF)I
    .locals 2

    int-to-double p1, p1

    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    invoke-static {p1, p2, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0xc

    return p1
.end method

.method public getDelay(IFF)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getEnemyType()Lcom/prineside/tdi2/enums/EnemyType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    return-object v0
.end method

.method public getHealth(IFF)F
    .locals 2

    float-to-double p1, p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    const-wide v0, 0x3ff451eb851eb852L    # 1.27

    invoke-static {p1, p2, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3d99999a    # 0.075f

    mul-float p1, p1, p2

    const/high16 p2, 0x41900000    # 18.0f

    add-float/2addr p1, p2

    return p1
.end method

.method public getInterval(IFF)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getKillExp(IFF)F
    .locals 0

    int-to-float p1, p1

    const p2, 0x3c23d70a    # 0.01f

    mul-float p1, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    return p1
.end method

.method public getKillScore(IFF)I
    .locals 0

    const/16 p1, 0xa

    return p1
.end method

.method public getSpeed(IFF)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
