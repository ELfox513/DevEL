.class public final Lk1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll1/b;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lk1/j;I)V
    .locals 0

    invoke-virtual {p1}, Lk1/j;->c()Ll1/b;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lk1/l;-><init>(Ll1/b;I)V

    return-void
.end method

.method public constructor <init>(Ll1/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/l;->a:Ll1/b;

    iput p2, p0, Lk1/l;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-virtual {p0}, Lk1/l;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Lk1/l;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Expected %x but was %x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk1/l;->c:I

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lk1/l;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    invoke-interface {v0}, Ll1/b;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lk1/l;->b:I

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lk1/l;->d:I

    :cond_0
    iget v0, p0, Lk1/l;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    invoke-static {v0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    iput v0, p0, Lk1/l;->c:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    invoke-static {v0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    invoke-static {v0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    invoke-static {v0}, Lk1/n;->b(Ll1/b;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget v0, p0, Lk1/l;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()B
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    invoke-static {v0, v1}, Lk1/k;->a(Ll1/b;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public i()C
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public j()D
    .locals 3

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lk1/k;->d(Ll1/b;IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .locals 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 3

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public m()F
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    invoke-static {v0, v1}, Lk1/k;->a(Ll1/b;I)I

    move-result v0

    return v0
.end method

.method public o()J
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    invoke-static {v0, v1}, Lk1/k;->b(Ll1/b;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()I
    .locals 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 3

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 3

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public s()V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    return-void
.end method

.method public t()S
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    invoke-static {v0, v1}, Lk1/k;->a(Ll1/b;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public u()I
    .locals 3

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 3

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lk1/l;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lk1/l;->b:I

    iget-object v0, p0, Lk1/l;->a:Ll1/b;

    iget v1, p0, Lk1/l;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk1/k;->c(Ll1/b;IZ)I

    move-result v0

    return v0
.end method

.method public w()V
    .locals 3

    invoke-virtual {p0}, Lk1/l;->c()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk1/l;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lk1/l;->g()Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lk1/l;->s()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lk1/l;->d()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lk1/l;->e()I

    invoke-virtual {p0}, Lk1/l;->w()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lk1/l;->f()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lk1/l;->w()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lk1/l;->k()I

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lk1/l;->p()I

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lk1/l;->l()I

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lk1/l;->v()I

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lk1/l;->u()I

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lk1/l;->q()I

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lk1/l;->r()I

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lk1/l;->j()D

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lk1/l;->m()F

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lk1/l;->n()I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lk1/l;->i()C

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lk1/l;->t()S

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lk1/l;->o()J

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lk1/l;->h()B

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x15
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
