.class public final Lr4/n64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a74;


# instance fields
.field public final a:Lr4/m64;

.field public final b:Lr4/xb;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lr4/m64;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/n64;->a:Lr4/m64;

    new-instance p1, Lr4/xb;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/n64;->b:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/n64;->f:Z

    return-void
.end method

.method public final b(Lr4/fc;Lr4/d04;Lr4/z64;)V
    .locals 1

    iget-object v0, p0, Lr4/n64;->a:Lr4/m64;

    invoke-interface {v0, p1, p2, p3}, Lr4/m64;->b(Lr4/fc;Lr4/d04;Lr4/z64;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/n64;->f:Z

    return-void
.end method

.method public final c(Lr4/xb;I)V
    .locals 6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v2

    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v2, p0, Lr4/n64;->f:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iput-boolean v4, p0, Lr4/n64;->f:Z

    invoke-virtual {p1, v3}, Lr4/xb;->p(I)V

    iput v4, p0, Lr4/n64;->d:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result p2

    if-lez p2, :cond_a

    iget p2, p0, Lr4/n64;->d:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_7

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p2

    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lr4/xb;->p(I)V

    const/16 v3, 0xff

    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lr4/n64;->f:Z

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result p2

    iget v3, p0, Lr4/n64;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    iget v5, p0, Lr4/n64;->d:I

    invoke-virtual {p1, v3, v5, p2}, Lr4/xb;->u([BII)V

    iget v3, p0, Lr4/n64;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lr4/n64;->d:I

    if-ne v3, v2, :cond_3

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2, v4}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2, v2}, Lr4/xb;->n(I)V

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2, v0}, Lr4/xb;->s(I)V

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->v()I

    move-result p2

    iget-object v3, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->v()I

    move-result v3

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lr4/n64;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    iput p2, p0, Lr4/n64;->c:I

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->r()I

    move-result p2

    iget v2, p0, Lr4/n64;->c:I

    if-ge p2, v2, :cond_3

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->r()I

    move-result p2

    add-int/2addr p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v2, 0x1002

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {v2, p2}, Lr4/xb;->k(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result p2

    iget v2, p0, Lr4/n64;->c:I

    iget v3, p0, Lr4/n64;->d:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget v3, p0, Lr4/n64;->d:I

    invoke-virtual {p1, v2, v3, p2}, Lr4/xb;->u([BII)V

    iget v2, p0, Lr4/n64;->d:I

    add-int/2addr v2, p2

    iput v2, p0, Lr4/n64;->d:I

    iget p2, p0, Lr4/n64;->c:I

    if-ne v2, p2, :cond_3

    iget-boolean v2, p0, Lr4/n64;->e:Z

    if-eqz v2, :cond_9

    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    iget v2, p0, Lr4/n64;->c:I

    invoke-static {p2, v4, v2, v1}, Lr4/lc;->v([BIII)I

    move-result p2

    if-eqz p2, :cond_8

    iput-boolean v0, p0, Lr4/n64;->f:Z

    return-void

    :cond_8
    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    iget v2, p0, Lr4/n64;->c:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v2}, Lr4/xb;->n(I)V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {v2, p2}, Lr4/xb;->n(I)V

    :goto_4
    iget-object p2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-virtual {p2, v4}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/n64;->a:Lr4/m64;

    iget-object v2, p0, Lr4/n64;->b:Lr4/xb;

    invoke-interface {p2, v2}, Lr4/m64;->c(Lr4/xb;)V

    iput v4, p0, Lr4/n64;->d:I

    goto/16 :goto_1

    :cond_a
    return-void
.end method
