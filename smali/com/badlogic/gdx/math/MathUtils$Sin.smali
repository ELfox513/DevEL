.class Lcom/badlogic/gdx/math/MathUtils$Sin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/MathUtils;
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

    const/16 v0, 0x4000

    new-array v1, v0, [F

    sput-object v1, Lcom/badlogic/gdx/math/MathUtils$Sin;->a:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/badlogic/gdx/math/MathUtils$Sin;->a:[F

    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/high16 v5, 0x46800000    # 16384.0f

    div-float/2addr v4, v5

    const v5, 0x40c90fdb

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->a:[F

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x1000

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    const/16 v1, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3000

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
