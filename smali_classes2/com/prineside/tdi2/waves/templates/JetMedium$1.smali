.class Lcom/prineside/tdi2/waves/templates/JetMedium$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/WaveTemplates$EnemyGroupConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/templates/JetMedium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/waves/templates/JetMedium;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/waves/templates/JetMedium;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->a:Lcom/prineside/tdi2/waves/templates/JetMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    add-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public final b(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->a(I)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public getBounty(IFF)F
    .locals 0

    int-to-float p2, p1

    const p3, 0x3e19999a    # 0.15f

    mul-float p2, p2, p3

    const/high16 p3, 0x40a80000    # 5.25f

    add-float/2addr p2, p3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->b(I)F

    move-result p1

    mul-float p2, p2, p1

    return p2
.end method

.method public getCount(IFF)I
    .locals 2

    int-to-double p2, p1

    const-wide v0, 0x3fe28f5c28f5c28fL    # 0.58

    invoke-static {p2, p3, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/lit8 p2, p2, 0x6

    int-to-float p2, p2

    const p3, 0x3f19999a    # 0.6f

    mul-float p2, p2, p3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->a(I)F

    move-result p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public getDelay(IFF)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getEnemyType()Lcom/prineside/tdi2/enums/EnemyType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

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

    const p2, 0x3cbc6a7f    # 0.023f

    mul-float p1, p1, p2

    const/high16 p2, 0x40900000    # 4.5f

    add-float/2addr p1, p2

    return p1
.end method

.method public getInterval(IFF)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->b(I)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    return p1
.end method

.method public getKillExp(IFF)F
    .locals 0

    int-to-float p2, p1

    const p3, 0x3cf5c28f    # 0.03f

    mul-float p2, p2, p3

    const/high16 p3, 0x40400000    # 3.0f

    add-float/2addr p2, p3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->b(I)F

    move-result p1

    mul-float p2, p2, p1

    return p2
.end method

.method public getKillScore(IFF)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/waves/templates/JetMedium$1;->b(I)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public getSpeed(IFF)F
    .locals 0

    const p1, 0x3f8ccccd    # 1.1f

    return p1
.end method
