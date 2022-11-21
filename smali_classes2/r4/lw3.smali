.class public final Lr4/lw3;
.super Lr4/j5;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public f:Landroid/net/Uri;

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr4/j5;-><init>(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lr4/ja;->a(Z)V

    iput-object p1, p0, Lr4/lw3;->e:[B

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lr4/lw3;->h:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lr4/lw3;->e:[B

    iget v1, p0, Lr4/lw3;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/lw3;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/lw3;->g:I

    iget p1, p0, Lr4/lw3;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lr4/lw3;->h:I

    invoke-virtual {p0, p3}, Lr4/j5;->r(I)V

    return p3
.end method

.method public final g(Lr4/vc;)J
    .locals 7

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/lw3;->f:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lr4/j5;->n(Lr4/vc;)V

    iget-wide v0, p1, Lr4/vc;->f:J

    iget-object v2, p0, Lr4/lw3;->e:[B

    array-length v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    long-to-int v1, v0

    iput v1, p0, Lr4/lw3;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Lr4/lw3;->h:I

    iget-wide v0, p1, Lr4/vc;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    int-to-long v5, v2

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lr4/lw3;->h:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/lw3;->i:Z

    invoke-virtual {p0, p1}, Lr4/j5;->o(Lr4/vc;)V

    iget-wide v0, p1, Lr4/vc;->g:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    iget p1, p0, Lr4/lw3;->h:I

    int-to-long v0, p1

    return-wide v0

    :cond_2
    new-instance p1, Lr4/p9;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lr4/p9;-><init>(I)V

    throw p1
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lr4/lw3;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lw3;->i:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/lw3;->f:Landroid/net/Uri;

    return-void
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/lw3;->f:Landroid/net/Uri;

    return-object v0
.end method
