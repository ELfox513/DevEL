.class public final Lb2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([III)Z
    .locals 0

    invoke-static {p0, p1}, Lb2/c;->e([II)I

    move-result p0

    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b([I)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static c([II)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget v1, p0, v0

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static d(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    xor-int/2addr p1, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static e([II)I
    .locals 3

    array-length v0, p0

    and-int/lit8 v1, p1, 0x1f

    shr-int/lit8 p1, p1, 0x5

    :goto_0
    if-ge p1, v0, :cond_1

    aget v2, p0, p1

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lb2/c;->d(II)I

    move-result v1

    if-ltz v1, :cond_0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr p0, v1

    return p0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static f([II)Z
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget p0, p0, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static g([I)I
    .locals 0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static h([I)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static i(I)[I
    .locals 0

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    new-array p0, p0, [I

    return-object p0
.end method

.method public static j([I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static k([II)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    aget v1, p0, v0

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static l([IIZ)V
    .locals 2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    if-eqz p2, :cond_0

    aget p2, p0, v0

    or-int/2addr p1, p2

    aput p1, p0, v0

    goto :goto_0

    :cond_0
    aget p2, p0, v0

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    aput p1, p0, v0

    :goto_0
    return-void
.end method
