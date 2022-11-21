.class public abstract Lr4/e8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/e8;

.field public static final b:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/e8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/z7;

    invoke-direct {v0}, Lr4/z7;-><init>()V

    sput-object v0, Lr4/e8;->a:Lr4/e8;

    sget-object v0, Lr4/y7;->a:Lr4/d3;

    sput-object v0, Lr4/e8;->b:Lr4/d3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p3}, Lr4/e8;->d(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lr4/e8;->e(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    :cond_3
    invoke-virtual {p0, p3}, Lr4/e8;->d(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public c(IIZ)I
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lr4/e8;->e(Z)I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p2, :cond_0

    return p3

    :cond_0
    add-int/2addr p1, p3

    return p1
.end method

.method public d(Z)I
    .locals 1

    invoke-virtual {p0}, Lr4/e8;->k()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Z)I
    .locals 0

    invoke-virtual {p0}, Lr4/e8;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/e8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lr4/e8;

    invoke-virtual {p1}, Lr4/e8;->a()I

    move-result v1

    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lr4/e8;->g()I

    move-result v1

    invoke-virtual {p0}, Lr4/e8;->g()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lr4/d8;

    invoke-direct {v1}, Lr4/d8;-><init>()V

    new-instance v3, Lr4/b8;

    invoke-direct {v3}, Lr4/b8;-><init>()V

    new-instance v4, Lr4/d8;

    invoke-direct {v4}, Lr4/d8;-><init>()V

    new-instance v5, Lr4/b8;

    invoke-direct {v5}, Lr4/b8;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v7

    if-ge v6, v7, :cond_4

    const-wide/16 v7, 0x0

    invoke-virtual {p0, v6, v1, v7, v8}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v9

    invoke-virtual {p1, v6, v4, v7, v8}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v7

    invoke-virtual {v9, v7}, Lr4/d8;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lr4/e8;->g()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p0, v1, v3, v0}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v4

    invoke-virtual {p1, v1, v5, v0}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v6

    invoke-virtual {v4, v6}, Lr4/b8;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method public abstract f(ILr4/d8;J)Lr4/d8;
.end method

.method public abstract g()I
.end method

.method public abstract h(ILr4/b8;Z)Lr4/b8;
.end method

.method public final hashCode()I
    .locals 7

    new-instance v0, Lr4/d8;

    invoke-direct {v0}, Lr4/d8;-><init>()V

    new-instance v1, Lr4/b8;

    invoke-direct {v1}, Lr4/b8;-><init>()V

    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v0, v5, v6}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v5

    invoke-virtual {v5}, Lr4/d8;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Lr4/e8;->g()I

    move-result v0

    add-int/2addr v2, v0

    :goto_1
    invoke-virtual {p0}, Lr4/e8;->g()I

    move-result v0

    if-ge v3, v0, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v1, v0}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b8;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(I)Ljava/lang/Object;
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(ILr4/b8;Lr4/d8;IZ)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object p2

    iget p2, p2, Lr4/b8;->c:I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v2

    iget v2, v2, Lr4/d8;->n:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, p2, p4, p5}, Lr4/e8;->b(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p3, v0, v1}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p1

    iget p1, p1, Lr4/d8;->m:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/d8;",
            "Lr4/b8;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lr4/e8;->n(Lr4/d8;Lr4/b8;IJJ)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final n(Lr4/d8;Lr4/b8;IJJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/d8;",
            "Lr4/b8;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/e8;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lr4/ja;->c(III)I

    invoke-virtual {p0, p3, p1, p6, p7}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    iget-wide p3, p1, Lr4/d8;->k:J

    move-wide p4, v2

    :cond_0
    iget p3, p1, Lr4/d8;->m:I

    invoke-virtual {p0, p3, p2, v1}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    :goto_0
    iget v0, p1, Lr4/d8;->n:I

    if-ge p3, v0, :cond_1

    iget-wide v4, p2, Lr4/b8;->e:J

    cmp-long v0, p4, v2

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v4

    iget-wide v4, v4, Lr4/b8;->e:J

    cmp-long v4, p4, v2

    if-ltz v4, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p3, p2, p1}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    iget-wide v0, p2, Lr4/b8;->e:J

    iget-wide v0, p2, Lr4/b8;->d:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_2

    const-wide/16 p6, -0x1

    add-long/2addr v0, p6

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    const-wide/16 p5, 0x9

    cmp-long p1, p3, p5

    if-nez p1, :cond_3

    const-string p1, "XXX"

    const-string p5, "YYY"

    invoke-static {p1, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p2, Lr4/b8;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;
    .locals 1

    invoke-virtual {p0, p1}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object p1

    return-object p1
.end method
