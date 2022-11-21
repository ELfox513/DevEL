.class public final Lr4/y14;
.super Lr4/x14;
.source "SourceFile"


# instance fields
.field public final b:Lr4/xb;

.field public final c:Lr4/xb;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lr4/d14;)V
    .locals 1

    invoke-direct {p0, p1}, Lr4/x14;-><init>(Lr4/d14;)V

    new-instance p1, Lr4/xb;

    sget-object v0, Lr4/nb;->a:[B

    invoke-direct {p1, v0}, Lr4/xb;-><init>([B)V

    iput-object p1, p0, Lr4/y14;->b:Lr4/xb;

    new-instance p1, Lr4/xb;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/y14;->c:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a(Lr4/xb;)Z
    .locals 3

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Lr4/y14;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v0, Lr4/w14;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lr4/w14;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lr4/xb;J)Z
    .locals 10

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    invoke-virtual {p1}, Lr4/xb;->A()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lr4/y14;->e:Z

    if-nez v0, :cond_5

    new-instance v0, Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lr4/xb;-><init>([B)V

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v1

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lr4/xb;->u([BII)V

    invoke-static {v0}, Lr4/kz3;->a(Lr4/xb;)Lr4/kz3;

    move-result-object p1

    iget v0, p1, Lr4/kz3;->b:I

    iput v0, p0, Lr4/y14;->d:I

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    iget-object v1, p1, Lr4/kz3;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/c5;->k(Ljava/lang/String;)Lr4/c5;

    iget v1, p1, Lr4/kz3;->c:I

    invoke-virtual {v0, v1}, Lr4/c5;->s(I)Lr4/c5;

    iget v1, p1, Lr4/kz3;->d:I

    invoke-virtual {v0, v1}, Lr4/c5;->t(I)Lr4/c5;

    iget v1, p1, Lr4/kz3;->e:F

    invoke-virtual {v0, v1}, Lr4/c5;->w(F)Lr4/c5;

    iget-object p1, p1, Lr4/kz3;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Lr4/c5;->p(Ljava/util/List;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object p1

    iget-object v0, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v0, p1}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean p2, p0, Lr4/y14;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lr4/y14;->e:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lr4/y14;->g:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lr4/y14;->f:Z

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    return p3

    :cond_3
    :goto_1
    iget-object v0, p0, Lr4/y14;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    aput-byte p3, v0, p3

    aput-byte p3, v0, p2

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget v0, p0, Lr4/y14;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lr4/y14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget v3, p0, Lr4/y14;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lr4/xb;->u([BII)V

    iget-object v2, p0, Lr4/y14;->c:Lr4/xb;

    invoke-virtual {v2, p3}, Lr4/xb;->p(I)V

    iget-object v2, p0, Lr4/y14;->c:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->b()I

    move-result v2

    iget-object v3, p0, Lr4/y14;->b:Lr4/xb;

    invoke-virtual {v3, p3}, Lr4/xb;->p(I)V

    iget-object v3, p0, Lr4/x14;->a:Lr4/d14;

    iget-object v8, p0, Lr4/y14;->b:Lr4/xb;

    invoke-interface {v3, v8, v1}, Lr4/d14;->a(Lr4/xb;I)V

    iget-object v3, p0, Lr4/x14;->a:Lr4/d14;

    invoke-interface {v3, p1, v2}, Lr4/d14;->a(Lr4/xb;I)V

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lr4/x14;->a:Lr4/d14;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lr4/d14;->e(JIIILr4/c14;)V

    iput-boolean p2, p0, Lr4/y14;->f:Z

    return p2

    :cond_5
    return p3
.end method
