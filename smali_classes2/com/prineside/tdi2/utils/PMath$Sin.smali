.class Lcom/prineside/tdi2/utils/PMath$Sin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sin"
.end annotation


# static fields
.field public static final a:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x2000

    new-array v1, v0, [F

    sput-object v1, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/high16 v5, 0x46000000    # 8192.0f

    div-float/2addr v4, v5

    const v5, 0x40c90fdb

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    int-to-float v2, v1

    const v3, 0x41b60b61

    mul-float v3, v3, v2

    float-to-int v3, v3

    and-int/lit16 v3, v3, 0x1fff

    const v4, 0x3c8efa35

    mul-float v2, v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v0, v3

    add-int/lit8 v1, v1, 0x5a

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
