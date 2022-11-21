.class public final Lr4/y54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# instance fields
.field public final a:Lr4/xb;

.field public b:Lr4/d14;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/y54;->a:Lr4/xb;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/y54;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 2

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/y54;->b:Lr4/d14;

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    const-string p2, "application/id3"

    invoke-virtual {v0, p2}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p2

    invoke-interface {p1, p2}, Lr4/d14;->f(Lr4/e5;)V

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 7

    iget-object v0, p0, Lr4/y54;->b:Lr4/d14;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lr4/y54;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    iget v1, p0, Lr4/y54;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v3

    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v4

    iget-object v5, p0, Lr4/y54;->a:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    iget v6, p0, Lr4/y54;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lr4/y54;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lr4/xb;->p(I)V

    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->v()I

    move-result v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->v()I

    move-result v1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->v()I

    move-result v1

    const/16 v4, 0x33

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lr4/xb;->s(I)V

    iget-object v1, p0, Lr4/y54;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->a()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lr4/y54;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lr4/y54;->c:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lr4/y54;->e:I

    iget v2, p0, Lr4/y54;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lr4/y54;->b:Lr4/d14;

    invoke-static {v1, p1, v0}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget p1, p0, Lr4/y54;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lr4/y54;->f:I

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lr4/y54;->b:Lr4/d14;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lr4/y54;->c:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lr4/y54;->e:I

    if-eqz v5, :cond_2

    iget v0, p0, Lr4/y54;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lr4/y54;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    iget-object v1, p0, Lr4/y54;->b:Lr4/d14;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lr4/d14;->e(JIIILr4/c14;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/y54;->c:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lr4/y54;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lr4/y54;->d:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lr4/y54;->e:I

    iput p1, p0, Lr4/y54;->f:I

    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/y54;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/y54;->d:J

    return-void
.end method
