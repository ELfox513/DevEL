.class public final Lr4/r24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/xb;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/r24;->a:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a(Lr4/b04;)Z
    .locals 14

    invoke-interface {p1}, Lr4/b04;->q()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x400

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :cond_1
    :goto_0
    long-to-int v5, v4

    iget-object v4, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    move-object v6, p1

    check-cast v6, Lr4/vz3;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v4, v7, v8, v7}, Lr4/vz3;->i([BIIZ)Z

    iget-object v4, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->B()J

    move-result-wide v9

    iput v8, p0, Lr4/r24;->b:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v8, v9, v11

    if-eqz v8, :cond_3

    iget v8, p0, Lr4/r24;->b:I

    add-int/2addr v8, v4

    iput v8, p0, Lr4/r24;->b:I

    if-ne v8, v5, :cond_2

    return v7

    :cond_2
    iget-object v8, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v8}, Lr4/xb;->q()[B

    move-result-object v8

    invoke-virtual {v6, v8, v7, v4, v7}, Lr4/vz3;->i([BIIZ)Z

    const/16 v4, 0x8

    shl-long v8, v9, v4

    const-wide/16 v10, -0x100

    and-long/2addr v8, v10

    iget-object v4, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    int-to-long v10, v4

    or-long/2addr v8, v10

    move-wide v9, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lr4/r24;->b(Lr4/b04;)J

    move-result-wide v8

    iget v5, p0, Lr4/r24;->b:I

    int-to-long v10, v5

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v5, v8, v12

    if-eqz v5, :cond_9

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-long v2, v10, v8

    cmp-long v5, v2, v0

    if-ltz v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget v0, p0, Lr4/r24;->b:I

    int-to-long v0, v0

    add-long v2, v10, v8

    cmp-long v5, v0, v2

    if-gez v5, :cond_8

    invoke-virtual {p0, p1}, Lr4/r24;->b(Lr4/b04;)J

    move-result-wide v0

    cmp-long v2, v0, v12

    if-nez v2, :cond_6

    return v7

    :cond_6
    invoke-virtual {p0, p1}, Lr4/r24;->b(Lr4/b04;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_7

    cmp-long v5, v0, v2

    if-eqz v5, :cond_5

    long-to-int v1, v0

    invoke-virtual {v6, v1, v7}, Lr4/vz3;->o(IZ)Z

    iget v0, p0, Lr4/r24;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lr4/r24;->b:I

    goto :goto_2

    :cond_7
    return v7

    :cond_8
    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    return v4

    :cond_9
    :goto_3
    return v7
.end method

.method public final b(Lr4/b04;)J
    .locals 6

    iget-object v0, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    check-cast p1, Lr4/vz3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v1}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_0

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    iget-object v3, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    invoke-virtual {p1, v3, v2, v4, v1}, Lr4/vz3;->i([BIIZ)Z

    :goto_1
    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lr4/r24;->a:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lr4/r24;->b:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lr4/r24;->b:I

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
