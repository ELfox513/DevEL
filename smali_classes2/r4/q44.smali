.class public final Lr4/q44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lr4/xb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lr4/q44;->f:[I

    new-instance v1, Lr4/xb;

    invoke-direct {v1, v0}, Lr4/xb;-><init>(I)V

    iput-object v1, p0, Lr4/q44;->g:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lr4/q44;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr4/q44;->b:J

    iput v0, p0, Lr4/q44;->c:I

    iput v0, p0, Lr4/q44;->d:I

    iput v0, p0, Lr4/q44;->e:I

    return-void
.end method

.method public final b(Lr4/b04;J)Z
    .locals 10

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v0

    invoke-interface {p1}, Lr4/b04;->l()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->a(Z)V

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lr4/xb;->i(I)V

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    cmp-long v0, v6, p2

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-static {p1, v0, v5, v1, v4}, Lr4/e04;->e(Lr4/b04;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0, v5}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v2, v6

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v4, v5}, Lr4/vz3;->n(IZ)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lr4/b04;->k()V

    return v4

    :cond_3
    :goto_2
    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v0

    cmp-long v6, v0, p2

    if-gez v6, :cond_5

    :cond_4
    invoke-interface {p1, v4}, Lr4/b04;->D(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_5
    return v5
.end method

.method public final c(Lr4/b04;Z)Z
    .locals 6

    invoke-virtual {p0}, Lr4/q44;->a()V

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Lr4/e04;->e(Lr4/b04;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p1, "unsupported bit stream revision"

    invoke-static {p1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v0

    iput v0, p0, Lr4/q44;->a:I

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->G()J

    move-result-wide v0

    iput-wide v0, p0, Lr4/q44;->b:J

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->C()J

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->C()J

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->C()J

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->v()I

    move-result v0

    iput v0, p0, Lr4/q44;->c:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lr4/q44;->d:I

    iget-object v1, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v1, v0}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    iget v1, p0, Lr4/q44;->c:I

    invoke-static {p1, v0, v2, v1, p2}, Lr4/e04;->e(Lr4/b04;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget p1, p0, Lr4/q44;->c:I

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lr4/q44;->f:[I

    iget-object p2, p0, Lr4/q44;->g:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->v()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lr4/q44;->e:I

    iget-object p2, p0, Lr4/q44;->f:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lr4/q44;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2
.end method
