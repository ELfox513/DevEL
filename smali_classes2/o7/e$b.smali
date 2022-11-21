.class public final Lo7/e$b;
.super Lo7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:[B

.field public c:I

.field public final d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo7/e;-><init>(Lo7/e$a;)V

    iput-boolean p2, p0, Lo7/e$b;->a:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lo7/e$b;->b:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lo7/e$b;->c:I

    iput p2, p0, Lo7/e$b;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lo7/e$b;->e:I

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lo7/f;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v3, p0, Lo7/e$b;->c:I

    add-int/2addr v3, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v3, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lo7/f;->k(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lo7/e$b;->g0(I)V

    goto :goto_4

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lo7/e$b;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo7/f;->k(Z)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_3

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_5
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v3, p0, Lo7/e$b;->c:I

    add-int/2addr v3, v0

    :goto_2
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v3, :cond_7

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lo7/e$b;->g0(I)V

    :goto_4
    return-void

    :cond_8
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {p0}, Lo7/e$b;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_9

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 3

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iput v0, p0, Lo7/e$b;->f:I

    iget v2, p0, Lo7/e$b;->g:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lo7/u1;->a(I)I

    move-result v0

    return v0
.end method

.method public D(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo7/e$b;->b0(Ljava/util/List;Z)V

    return-void
.end method

.method public E(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo7/e$b;->b0(Ljava/util/List;Z)V

    return-void
.end method

.method public F()Lo7/h;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo7/h;->b:Lo7/h;

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lo7/e$b;->f0(I)V

    iget-boolean v1, p0, Lo7/e$b;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo7/e$b;->b:[B

    iget v2, p0, Lo7/e$b;->c:I

    invoke-static {v1, v2, v0}, Lo7/h;->H([BII)Lo7/h;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo7/e$b;->b:[B

    iget v2, p0, Lo7/e$b;->c:I

    invoke-static {v1, v2, v0}, Lo7/h;->k([BII)Lo7/h;

    move-result-object v1

    :goto_0
    iget v2, p0, Lo7/e$b;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lo7/e$b;->c:I

    return-object v1
.end method

.method public G(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/w;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    check-cast p1, Lo7/w;

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lo7/w;->i(F)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lo7/w;->i(F)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-virtual {p0}, Lo7/e$b;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_7
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public H()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 3

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lo7/e$b;->f:I

    iget v1, p0, Lo7/e$b;->g:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo7/e$b;->i0(I)V

    return v1

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lo7/e$b;->j0()V

    return v1

    :cond_3
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->i0(I)V

    return v1

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo7/e$b;->i0(I)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lo7/e$b;->k0()V

    return v1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->V()I

    move-result v0

    return v0
.end method

.method public K(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo7/h;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->F()Lo7/h;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public L(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/m;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/m;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/m;->i(D)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/m;->i(D)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public M()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v0

    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public P(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0, p1, p2}, Lo7/e$b;->Z(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final R()Z
    .locals 2

    iget v0, p0, Lo7/e$b;->c:I

    iget v1, p0, Lo7/e$b;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final S()B
    .locals 3

    iget v0, p0, Lo7/e$b;->c:I

    iget v1, p0, Lo7/e$b;->e:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lo7/e$b;->b:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo7/e$b;->c:I

    aget-byte v0, v1, v0

    return v0

    :cond_0
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object v0

    throw v0
.end method

.method public final T(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u1$b;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo7/p;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lo7/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lo7/e$b;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lo7/e$b;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lo7/e$b;->N()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lo7/e$b;->z()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lo7/e$b;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lo7/e$b;->k()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lo7/e$b;->J()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lo7/e$b;->d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lo7/e$b;->M()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lo7/e$b;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lo7/e$b;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lo7/e$b;->c()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lo7/e$b;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lo7/e$b;->u()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lo7/e$b;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lo7/e$b;->F()Lo7/h;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lo7/e$b;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final U(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lo7/e$b;->g:I

    iget v1, p0, Lo7/e$b;->f:I

    invoke-static {v1}, Lo7/u1;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lo7/u1;->c(II)I

    move-result v1

    iput v1, p0, Lo7/e$b;->g:I

    :try_start_0
    invoke-interface {p1}, Lo7/h1;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lo7/h1;->e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    invoke-interface {p1, v1}, Lo7/h1;->b(Ljava/lang/Object;)V

    iget p1, p0, Lo7/e$b;->f:I

    iget p2, p0, Lo7/e$b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lo7/e$b;->g:I

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lo7/e$b;->g:I

    throw p1
.end method

.method public final V()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo7/e$b;->f0(I)V

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    return v0
.end method

.method public final W()I
    .locals 4

    iget v0, p0, Lo7/e$b;->c:I

    iget-object v1, p0, Lo7/e$b;->b:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lo7/e$b;->c:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final X()J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo7/e$b;->f0(I)V

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Y()J
    .locals 9

    iget v0, p0, Lo7/e$b;->c:I

    iget-object v1, p0, Lo7/e$b;->b:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lo7/e$b;->c:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final Z(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->f0(I)V

    iget v1, p0, Lo7/e$b;->e:I

    iget v2, p0, Lo7/e$b;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lo7/e$b;->e:I

    :try_start_0
    invoke-interface {p1}, Lo7/h1;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p0, p2}, Lo7/h1;->e(Ljava/lang/Object;Lo7/g1;Lo7/p;)V

    invoke-interface {p1, v0}, Lo7/h1;->b(Ljava/lang/Object;)V

    iget p1, p0, Lo7/e$b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    iput v1, p0, Lo7/e$b;->e:I

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v1, p0, Lo7/e$b;->e:I

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-static {p1}, Lo7/i;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->x()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Lo7/i;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public a0(Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lo7/e$b;->f0(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo7/e$b;->b:[B

    iget v1, p0, Lo7/e$b;->c:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lo7/t1;->n([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->c()Lo7/c0;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lo7/e$b;->b:[B

    iget v2, p0, Lo7/e$b;->c:I

    sget-object v3, Lo7/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lo7/e$b;->c:I

    return-object p1
.end method

.method public b()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v0

    return-wide v0
.end method

.method public b0(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    instance-of v0, p1, Lo7/h0;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lo7/h0;

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->F()Lo7/h;

    move-result-object p1

    invoke-interface {v0, p1}, Lo7/h0;->X(Lo7/h;)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p2

    iget v1, p0, Lo7/e$b;->f:I

    if-eq p2, v1, :cond_0

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lo7/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_2

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_4
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public c()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c0()I
    .locals 5

    iget v0, p0, Lo7/e$b;->c:I

    iget v1, p0, Lo7/e$b;->e:I

    if-eq v1, v0, :cond_8

    iget-object v2, p0, Lo7/e$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lo7/e$b;->c:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->e0()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lo7/c0;->e()Lo7/c0;

    move-result-object v0

    throw v0

    :cond_7
    :goto_0
    iput v1, p0, Lo7/e$b;->c:I

    return v0

    :cond_8
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo7/e$b;->Z(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d0()J
    .locals 11

    iget v0, p0, Lo7/e$b;->c:I

    iget v1, p0, Lo7/e$b;->e:I

    if-eq v1, v0, :cond_b

    iget-object v2, p0, Lo7/e$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lo7/e$b;->c:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->e0()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long/2addr v3, v5

    :goto_3
    move-wide v2, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lo7/c0;->e()Lo7/c0;

    move-result-object v0

    throw v0

    :cond_a
    move v1, v0

    goto :goto_3

    :goto_4
    iput v1, p0, Lo7/e$b;->c:I

    return-wide v2

    :cond_b
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public e(Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/d1;->d(Ljava/lang/Class;)Lo7/h1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo7/e$b;->U(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e0()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->S()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->e()Lo7/c0;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public f(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    check-cast p1, Lo7/z;

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->J()I

    move-result v0

    invoke-virtual {p1, v0}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-virtual {p1, v0}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-virtual {p0}, Lo7/e$b;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_7
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public final f0(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lo7/e$b;->e:I

    iget v1, p0, Lo7/e$b;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo7/i;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo7/i;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public final g0(I)V
    .locals 1

    iget v0, p0, Lo7/e$b;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->j()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public h(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public final h0(I)V
    .locals 1

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->V()I

    move-result v0

    return v0
.end method

.method public final i0(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lo7/e$b;->f0(I)V

    iget v0, p0, Lo7/e$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public j()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final j0()V
    .locals 3

    iget v0, p0, Lo7/e$b;->g:I

    iget v1, p0, Lo7/e$b;->f:I

    invoke-static {v1}, Lo7/u1;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lo7/u1;->c(II)I

    move-result v1

    iput v1, p0, Lo7/e$b;->g:I

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->C()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->I()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget v1, p0, Lo7/e$b;->f:I

    iget v2, p0, Lo7/e$b;->g:I

    if-ne v1, v2, :cond_2

    iput v0, p0, Lo7/e$b;->g:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object v0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public k()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k0()V
    .locals 5

    iget v0, p0, Lo7/e$b;->e:I

    iget v1, p0, Lo7/e$b;->c:I

    sub-int/2addr v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lo7/e$b;->b:[B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    if-ltz v1, :cond_0

    iput v4, p0, Lo7/e$b;->c:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->l0()V

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lo7/e$b;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lo7/e$b;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public final l0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->S()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lo7/c0;->e()Lo7/c0;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public final m0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lo7/e$b;->f0(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public n(Ljava/util/List;Lo7/h1;Lo7/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo7/e$b;->f:I

    :cond_0
    invoke-virtual {p0, p2, p3}, Lo7/e$b;->U(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final n0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lo7/e$b;->f0(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo7/c0;->g()Lo7/c0;

    move-result-object p1

    throw p1
.end method

.method public o(Lo7/h1;Lo7/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0, p1, p2}, Lo7/e$b;->U(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lo7/e$b;->M()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lo7/e$b;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/j0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/j0;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo7/j0;->k(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo7/j0;->k(J)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->n0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lo7/e$b;->H()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_2

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lo7/e$b;->g0(I)V

    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {p0}, Lo7/e$b;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->X()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->V()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public s(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lo7/z;

    iget p1, p0, Lo7/e$b;->f:I

    invoke-static {p1}, Lo7/u1;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, p1

    :goto_0
    iget p1, p0, Lo7/e$b;->c:I

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lo7/e$b;->u()I

    move-result p1

    invoke-virtual {v0, p1}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_1

    iput p1, p0, Lo7/e$b;->c:I

    return-void

    :cond_3
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lo7/e$b;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_6

    iput v0, p0, Lo7/e$b;->c:I

    return-void
.end method

.method public t(Ljava/util/List;Lo7/h1;Lo7/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo7/h1<",
            "TT;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo7/e$b;->f:I

    :cond_0
    invoke-virtual {p0, p2, p3}, Lo7/e$b;->Z(Lo7/h1;Lo7/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v2

    if-eq v2, v0, :cond_0

    iput v1, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lo7/e$b;->f:I

    return v0
.end method

.method public w(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lo7/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    check-cast p1, Lo7/z;

    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo7/e$b;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lo7/z;->P(I)V

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_0

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_2
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-virtual {p1, v0}, Lo7/z;->P(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lo7/e$b;->f:I

    invoke-static {v0}, Lo7/u1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-virtual {p0}, Lo7/e$b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo7/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Lo7/e$b;->c:I

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    iget v2, p0, Lo7/e$b;->f:I

    if-eq v1, v2, :cond_5

    iput v0, p0, Lo7/e$b;->c:I

    return-void

    :cond_7
    invoke-static {}, Lo7/c0;->d()Lo7/c0$a;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/e$b;->m0(I)V

    iget v1, p0, Lo7/e$b;->c:I

    add-int/2addr v1, v0

    :goto_1
    iget v0, p0, Lo7/e$b;->c:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Lo7/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Lo7/i;->b(I)I

    move-result v0

    return v0
.end method

.method public y(Ljava/util/Map;Lo7/l0$a;Lo7/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo7/l0$a<",
            "TK;TV;>;",
            "Lo7/p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->c0()I

    move-result v1

    invoke-virtual {p0, v1}, Lo7/e$b;->f0(I)V

    iget v2, p0, Lo7/e$b;->e:I

    iget v3, p0, Lo7/e$b;->c:I

    add-int/2addr v3, v1

    iput v3, p0, Lo7/e$b;->e:I

    :try_start_0
    iget-object v1, p2, Lo7/l0$a;->b:Ljava/lang/Object;

    iget-object v3, p2, Lo7/l0$a;->d:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lo7/e$b;->C()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v2, p0, Lo7/e$b;->e:I

    return-void

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lo7/e$b;->I()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lo7/c0;

    invoke-direct {v4, v6}, Lo7/c0;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, p2, Lo7/l0$a;->c:Lo7/u1$b;

    iget-object v5, p2, Lo7/l0$a;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3}, Lo7/e$b;->T(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Lo7/l0$a;->a:Lo7/u1$b;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v5}, Lo7/e$b;->T(Lo7/u1$b;Ljava/lang/Class;Lo7/p;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lo7/c0$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo7/e$b;->I()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lo7/c0;

    invoke-direct {p1, v6}, Lo7/c0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iput v2, p0, Lo7/e$b;->e:I

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public z()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo7/e$b;->h0(I)V

    invoke-virtual {p0}, Lo7/e$b;->d0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo7/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method
