.class public final Lu1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ll1/c;

.field public final synthetic b:Lu1/c;


# direct methods
.method public constructor <init>(Lu1/c;Ll1/c;)V
    .locals 0

    iput-object p1, p0, Lu1/c$a;->b:Lu1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu1/c$a;->a:Ll1/c;

    return-void
.end method

.method public static synthetic a(Lu1/c$a;Lk1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu1/c$a;->e(Lk1/l;)V

    return-void
.end method

.method public static synthetic b(Lu1/c$a;Lk1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu1/c$a;->d(Lk1/l;)V

    return-void
.end method


# virtual methods
.method public c(Lk1/l;)V
    .locals 5

    invoke-virtual {p1}, Lk1/l;->c()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk1/l;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lk1/l;->g()Z

    move-result p1

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lu1/c$a;->f(II)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lk1/l;->s()V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v1}, Lu1/c$a;->f(II)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lu1/c$a;->f(II)V

    invoke-virtual {p0, p1}, Lu1/c$a;->d(Lk1/l;)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, v1}, Lu1/c$a;->f(II)V

    invoke-virtual {p0, p1}, Lu1/c$a;->e(Lk1/l;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x1b

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->k()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->p(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x1a

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->p()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->q(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x19

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->l()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->p(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x18

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->v()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->u(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x17

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->u()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->t(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x16

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->q()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->r(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    const/16 v1, 0x15

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->r()I

    move-result p1

    invoke-virtual {v2, p1}, Lu1/c;->s(I)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->j()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lk1/k;->e(Ll1/c;IJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lk1/l;->m()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    iget-object p1, p0, Lu1/c$a;->a:Ll1/c;

    invoke-static {p1, v2, v0, v1}, Lk1/k;->e(Ll1/c;IJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->n()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lk1/k;->f(Ll1/c;IJ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->i()C

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lk1/k;->g(Ll1/c;IJ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->t()S

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lk1/k;->f(Ll1/c;IJ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->o()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lk1/k;->f(Ll1/c;IJ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    invoke-virtual {p1}, Lk1/l;->h()B

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk1/k;->f(Ll1/c;IJ)V

    :goto_0
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

.method public final d(Lk1/l;)V
    .locals 5

    invoke-virtual {p1}, Lk1/l;->d()I

    move-result v0

    iget-object v1, p0, Lu1/c$a;->a:Ll1/c;

    iget-object v2, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lu1/c;->u(I)I

    move-result v2

    invoke-static {v1, v2}, Lk1/n;->e(Ll1/c;I)V

    iget-object v1, p0, Lu1/c$a;->a:Ll1/c;

    invoke-static {v1, v0}, Lk1/n;->e(Ll1/c;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lu1/c$a;->a:Ll1/c;

    iget-object v3, p0, Lu1/c$a;->b:Lu1/c;

    invoke-virtual {p1}, Lk1/l;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lu1/c;->t(I)I

    move-result v3

    invoke-static {v2, v3}, Lk1/n;->e(Ll1/c;I)V

    invoke-virtual {p0, p1}, Lu1/c$a;->c(Lk1/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lk1/l;)V
    .locals 2

    invoke-virtual {p1}, Lk1/l;->f()I

    move-result v0

    iget-object v1, p0, Lu1/c$a;->a:Ll1/c;

    invoke-static {v1, v0}, Lk1/n;->e(Ll1/c;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lu1/c$a;->c(Lk1/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(II)V
    .locals 1

    iget-object v0, p0, Lu1/c$a;->a:Ll1/c;

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-interface {v0, p1}, Ll1/c;->writeByte(I)V

    return-void
.end method
