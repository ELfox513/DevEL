.class public final Lr4/u04;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio/mpeg-L1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "audio/mpeg-L2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    sput-object v1, Lr4/u04;->a:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lr4/u04;->b:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lr4/u04;->c:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lr4/u04;->d:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lr4/u04;->e:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lr4/u04;->f:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lr4/u04;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_5
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lr4/u04;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lr4/u04;->b:[I

    return-object v0
.end method

.method public static synthetic c()[I
    .locals 1

    sget-object v0, Lr4/u04;->c:[I

    return-object v0
.end method

.method public static synthetic d()[I
    .locals 1

    sget-object v0, Lr4/u04;->d:[I

    return-object v0
.end method

.method public static synthetic e()[I
    .locals 1

    sget-object v0, Lr4/u04;->e:[I

    return-object v0
.end method

.method public static synthetic f()[I
    .locals 1

    sget-object v0, Lr4/u04;->f:[I

    return-object v0
.end method

.method public static synthetic g()[I
    .locals 1

    sget-object v0, Lr4/u04;->g:[I

    return-object v0
.end method

.method public static h(I)I
    .locals 8

    invoke-static {p0}, Lr4/u04;->l(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_4

    return v1

    :cond_4
    sget-object v7, Lr4/u04;->b:[I

    aget v6, v7, v6

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    div-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    div-int/lit8 v6, v6, 0x4

    :cond_6
    :goto_0
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_8

    if-ne v0, v2, :cond_7

    sget-object v0, Lr4/u04;->c:[I

    add-int/2addr v5, v1

    aget v0, v0, v5

    goto :goto_1

    :cond_7
    sget-object v0, Lr4/u04;->d:[I

    add-int/2addr v5, v1

    aget v0, v0, v5

    :goto_1
    mul-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v6

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_8
    if-ne v0, v2, :cond_a

    if-ne v4, v7, :cond_9

    sget-object v7, Lr4/u04;->e:[I

    add-int/2addr v5, v1

    aget v1, v7, v5

    goto :goto_2

    :cond_9
    sget-object v7, Lr4/u04;->f:[I

    add-int/2addr v5, v1

    aget v1, v7, v5

    goto :goto_2

    :cond_a
    sget-object v7, Lr4/u04;->g:[I

    add-int/2addr v5, v1

    aget v1, v7, v5

    :goto_2
    const/16 v5, 0x90

    if-ne v0, v2, :cond_b

    mul-int/lit16 v1, v1, 0x90

    div-int/2addr v1, v6

    add-int/2addr v1, p0

    return v1

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v5, 0x48

    :cond_c
    mul-int v5, v5, v1

    div-int/2addr v5, v6

    add-int/2addr v5, p0

    return v5

    :cond_d
    :goto_3
    return v1
.end method

.method public static i(I)I
    .locals 6

    invoke-static {p0}, Lr4/u04;->l(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v2

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_4

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Lr4/u04;->m(II)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static synthetic j(I)Z
    .locals 0

    invoke-static {p0}, Lr4/u04;->l(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(II)I
    .locals 0

    invoke-static {p0, p1}, Lr4/u04;->m(II)I

    move-result p0

    return p0
.end method

.method public static l(I)Z
    .locals 1

    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(II)I
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x480

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0x180

    return p0

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/16 p0, 0x240

    return p0
.end method
