.class public final Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcdPositive(II)I
    .locals 2

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eq p0, p1, :cond_5

    sub-int v1, p0, p1

    if-gt p0, p1, :cond_3

    move p1, p0

    :cond_3
    if-gez v1, :cond_4

    neg-int v1, v1

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    shr-int p0, v1, p0

    goto :goto_0

    :cond_5
    shl-int/2addr p0, v0

    return p0
.end method

.method public static varargs gcdPositive([I)I
    .locals 4

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v0, v3}, Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;->gcdPositive(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "gcdPositive requires at least two arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static lcmPositive(II)I
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;->gcdPositive(II)I

    move-result v0

    div-int v0, p0, v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;->mulAndCheck(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overflow: lcm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") > 2^31"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs lcmPositive([I)I
    .locals 4

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v0, v3}, Lcom/badlogic/gdx/ai/utils/ArithmeticUtils;->lcmPositive(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lcmPositive requires at least two arguments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static mulAndCheck(II)I
    .locals 3

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long v2, v0, p0

    if-ltz v2, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public static wrapAngleAroundZero(F)F
    .locals 3

    const v0, 0x40490fdb    # (float)Math.PI

    const v1, 0x40c90fdb

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_1

    rem-float/2addr p0, v1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    sub-float/2addr p0, v1

    :cond_0
    return p0

    :cond_1
    neg-float p0, p0

    rem-float/2addr p0, v1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    sub-float/2addr p0, v1

    :cond_2
    neg-float p0, p0

    return p0
.end method
