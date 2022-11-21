.class public final Lr4/s44;
.super Lr4/w44;
.source "SourceFile"


# static fields
.field public static final o:[B


# instance fields
.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/s44;->o:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/w44;-><init>()V

    return-void
.end method

.method public static j(Lr4/xb;)Z
    .locals 3

    invoke-virtual {p0}, Lr4/xb;->l()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-array v0, v2, [B

    invoke-virtual {p0, v0, v1, v2}, Lr4/xb;->u([BII)V

    sget-object p0, Lr4/s44;->o:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lr4/w44;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/s44;->n:Z

    :cond_0
    return-void
.end method

.method public final b(Lr4/xb;)J
    .locals 6

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lr4/w44;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Lr4/xb;JLr4/u44;)Z
    .locals 2

    iget-boolean p2, p0, Lr4/s44;->n:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object p2

    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    aget-byte p2, p1, p2

    invoke-static {p1}, Lr4/v04;->a([B)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    const-string v1, "audio/opus"

    invoke-virtual {v0, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Lr4/c5;->B(I)Lr4/c5;

    const p2, 0xbb80

    invoke-virtual {v0, p2}, Lr4/c5;->C(I)Lr4/c5;

    invoke-virtual {v0, p1}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iput-object p1, p4, Lr4/u44;->a:Lr4/e5;

    iput-boolean p3, p0, Lr4/s44;->n:Z

    return p3

    :cond_0
    iget-object p2, p4, Lr4/u44;->a:Lr4/e5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lr4/xb;->D()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lr4/xb;->p(I)V

    return p3
.end method
