.class public final Lr4/yz3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lr4/yz3;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lr4/yz3;->b:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lr4/yz3;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;Lr4/fz3;)Lr4/e5;
    .locals 6

    const/4 p3, 0x0

    aget-byte v0, p0, p3

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_0

    new-instance v0, Lr4/wb;

    array-length v3, p0

    invoke-direct {v0, p0, v3}, Lr4/wb;-><init>([BI)V

    goto :goto_2

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    aget-byte v0, p0, p3

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v4

    aput-byte v5, p0, v0

    aput-byte v3, p0, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Lr4/wb;

    array-length v3, p0

    invoke-direct {v0, p0, v3}, Lr4/wb;-><init>([BI)V

    aget-byte v4, p0, p3

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_3

    new-instance v4, Lr4/wb;

    invoke-direct {v4, p0, v3}, Lr4/wb;-><init>([BI)V

    :goto_1
    invoke-virtual {v4}, Lr4/wb;->b()I

    move-result v3

    const/16 v5, 0x10

    if-lt v3, v5, :cond_3

    invoke-virtual {v4, v2}, Lr4/wb;->f(I)V

    const/16 v3, 0xe

    invoke-virtual {v4, v3}, Lr4/wb;->h(I)I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lr4/wb;->l(II)V

    goto :goto_1

    :cond_3
    array-length v3, p0

    invoke-virtual {v0, p0, v3}, Lr4/wb;->a([BI)V

    :goto_2
    const/16 p0, 0x3c

    invoke-virtual {v0, p0}, Lr4/wb;->f(I)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Lr4/wb;->h(I)I

    move-result p0

    sget-object v3, Lr4/yz3;->a:[I

    aget p0, v3, p0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lr4/wb;->h(I)I

    move-result v3

    sget-object v4, Lr4/yz3;->b:[I

    aget v3, v4, v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lr4/wb;->h(I)I

    move-result v4

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v1, Lr4/yz3;->c:[I

    aget v1, v1, v4

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v2

    :goto_3
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lr4/wb;->f(I)V

    invoke-virtual {v0, v2}, Lr4/wb;->h(I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 p3, 0x1

    :cond_5
    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {v0, p1}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string p1, "audio/vnd.dts"

    invoke-virtual {v0, p1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0, v1}, Lr4/c5;->i(I)Lr4/c5;

    add-int/2addr p0, p3

    invoke-virtual {v0, p0}, Lr4/c5;->B(I)Lr4/c5;

    invoke-virtual {v0, v3}, Lr4/c5;->C(I)Lr4/c5;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lr4/c5;->q(Lr4/fz3;)Lr4/c5;

    invoke-virtual {v0, p2}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p0

    return-object p0
.end method
