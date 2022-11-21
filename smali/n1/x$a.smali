.class public Ln1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ln1/q;

.field public b:Ln1/l;

.field public c:I

.field public final synthetic d:Ln1/x;


# direct methods
.method public constructor <init>(Ln1/x;)V
    .locals 0

    iput-object p1, p0, Ln1/x$a;->d:Ln1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ln1/x;->a(Ln1/x;)Ln1/q;

    move-result-object p1

    iput-object p1, p0, Ln1/x$a;->a:Ln1/q;

    const/4 p1, 0x0

    iput-object p1, p0, Ln1/x$a;->b:Ln1/l;

    return-void
.end method


# virtual methods
.method public a(IIIILy1/c;I)V
    .locals 6

    const/16 v0, 0x36

    if-ne p1, v0, :cond_0

    add-int v1, p2, p3

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget-object v2, p0, Ln1/x$a;->d:Ln1/x;

    invoke-static {v2}, Ln1/x;->e(Ln1/x;)Ln1/n;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Ln1/n;->C(II)Ln1/n$a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln1/n$a;->d()Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->p()I

    move-result v4

    invoke-virtual {p5}, Ly1/c;->p()I

    move-result v5

    if-eq v4, v5, :cond_2

    move-object v3, p5

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v3, p5

    :cond_2
    :goto_1
    const/16 v4, 0x15

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x84

    if-eq p1, v0, :cond_3

    const/16 p6, 0xa9

    if-eq p1, p6, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Ln1/x$a;->h(III)V

    return-void

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ln1/n$a;->b()Lw1/k;

    move-result-object v2

    :goto_2
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, p4}, Ln1/q;->e(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4, v3, v2}, Ln1/q;->n(ILy1/c;Lw1/k;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p5}, Ln1/q;->f(Ly1/c;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p6}, Ln1/q;->o(I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-static {p6}, Lx1/p;->C(I)Lx1/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ln1/q;->g(Lx1/a;)V

    goto :goto_5

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ln1/n$a;->b()Lw1/k;

    move-result-object v2

    :goto_3
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p6, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p6, p5}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p5}, Ln1/q;->f(Ly1/c;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4, v3, v2}, Ln1/q;->n(ILy1/c;Lw1/k;)V

    goto :goto_5

    :cond_7
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p6, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p6, p4}, Ln1/q;->e(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    if-eqz v1, :cond_8

    const/4 p4, 0x1

    goto :goto_4

    :cond_8
    const/4 p4, 0x0

    :goto_4
    invoke-interface {p3, p4}, Ln1/q;->m(Z)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p5}, Ln1/q;->f(Ly1/c;)V

    :goto_5
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p4, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p4, p2, p1}, Ln1/q;->j(Ln1/l;II)V

    return-void
.end method

.method public b(IIILy1/c;)V
    .locals 8

    if-eqz p1, :cond_1a

    const/16 v0, 0xbe

    const/4 v1, 0x0

    if-eq p1, v0, :cond_18

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_17

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_17

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    sparse-switch p1, :sswitch_data_0

    const v4, 0x32132

    const/16 v5, 0x3213

    const/16 v6, 0x11

    const/16 v7, 0x212

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Ln1/x$a;->h(III)V

    return-void

    :pswitch_0
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->w:Ly1/c;

    invoke-interface {p3, v0, v1, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->x:Ly1/c;

    invoke-interface {p3, v0, v1, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->z:Ly1/c;

    invoke-interface {p3, v0, v1, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->w:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->x:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->z:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    const/16 v0, 0x12

    invoke-interface {p3, v0}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_8
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, v3}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v7}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p3, v0}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v1, v0}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v5}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->J()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3, v3}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v1, v0}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v4}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p3, v0}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    const/4 v1, 0x4

    invoke-interface {p3, v0, v1}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    const v0, 0x432143

    invoke-interface {p3, v0}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_9
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3, v3}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->K()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v7}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_7
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :cond_8
    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p3, v3}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->K()Z

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v1, v0}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v4}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_9
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_a
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {v1}, Ly1/c;->K()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v7}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p3, v3}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v1, v0}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v5}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_b
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v7}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_c
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->K()Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v2}, Ln1/q;->i(Ln1/l;I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v6}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_d
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v2}, Ln1/q;->i(Ln1/l;I)V

    goto :goto_0

    :cond_f
    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->J()Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v3}, Ln1/q;->i(Ln1/l;I)V

    const/16 v6, 0x2121

    :goto_0
    const/16 p3, 0x5c

    if-ne p1, p3, :cond_1b

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, v6}, Ln1/q;->o(I)V

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :pswitch_e
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->K()Z

    move-result p3

    if-nez p3, :cond_11

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, v2}, Ln1/q;->i(Ln1/l;I)V

    goto/16 :goto_4

    :cond_11
    invoke-static {}, Ln1/x;->b()Ln1/w;

    move-result-object p1

    throw p1

    :sswitch_0
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3}, Ln1/q;->b()V

    sget-object p3, Ly1/c;->B:Ly1/c;

    invoke-virtual {p0, p3}, Ln1/x$a;->j(Ly1/c;)V

    goto/16 :goto_4

    :sswitch_1
    sget-object p3, Ly1/c;->K:Ly1/c;

    if-ne p4, p3, :cond_12

    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    goto :goto_1

    :cond_12
    move-object p3, p4

    :goto_1
    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {v0, v1, p4}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    invoke-virtual {p0, p3}, Ln1/x$a;->j(Ly1/c;)V

    goto/16 :goto_4

    :sswitch_2
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, p4, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto/16 :goto_4

    :sswitch_3
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, p4}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto/16 :goto_4

    :pswitch_f
    :sswitch_4
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, v0, p4, p4}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto/16 :goto_4

    :sswitch_5
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p4}, Ly1/c;->J()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x2

    :cond_13
    invoke-virtual {p3, v0}, Ln1/k;->H(I)Ly1/c;

    move-result-object v1

    invoke-virtual {p3, v0}, Ln1/k;->F(I)Z

    move-result p3

    invoke-static {p4, v1}, Ln1/x;->d(Ly1/c;Ly1/c;)Ly1/c;

    move-result-object v0

    if-eqz p3, :cond_15

    sget-object p3, Ly1/c;->C:Ly1/c;

    if-ne v0, p3, :cond_14

    goto :goto_2

    :cond_14
    invoke-virtual {v0}, Ly1/c;->x()Ly1/c;

    move-result-object p3

    :goto_2
    move-object p4, p3

    :cond_15
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v2, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v1, v0, v2, p4}, Ln1/q;->h(Ln1/l;Ly1/c;Ly1/c;Ly1/c;)V

    goto :goto_4

    :sswitch_6
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v2}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-static {p4, p3}, Ln1/x;->d(Ly1/c;Ly1/c;)Ly1/c;

    move-result-object p3

    sget-object p4, Ly1/c;->C:Ly1/c;

    if-ne p3, p4, :cond_16

    goto :goto_3

    :cond_16
    invoke-virtual {p3}, Ly1/c;->x()Ly1/c;

    move-result-object p4

    :goto_3
    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v2, Ly1/c;->y:Ly1/c;

    invoke-interface {v0, v1, p3, v2}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto :goto_4

    :cond_17
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_4

    :cond_18
    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    invoke-virtual {p3}, Ln1/l;->e()Ln1/k;

    move-result-object p3

    invoke-virtual {p3, v1}, Ln1/k;->H(I)Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->I()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Ln1/x$a;->d:Ln1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type mismatch: expected array type but encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Ln1/x;->c(Ln1/x;Ljava/lang/String;)V

    :cond_19
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_4

    :cond_1a
    :sswitch_7
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3}, Ln1/q;->b()V

    :cond_1b
    :goto_4
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4}, Ln1/q;->f(Ly1/c;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p4, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p4, p2, p1}, Ln1/q;->j(Ln1/l;II)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2e -> :sswitch_6
        0x4f -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6c -> :sswitch_4
        0x70 -> :sswitch_4
        0x74 -> :sswitch_3
        0x78 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7c -> :sswitch_2
        0x7e -> :sswitch_4
        0x80 -> :sswitch_4
        0x82 -> :sswitch_4
        0xac -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x85
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(IILx1/e0;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lx1/e0;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p2, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    iget-object p2, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p2, p4}, Ln1/q;->l(Ljava/util/ArrayList;)V

    iget-object p2, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p2, p3}, Ln1/q;->g(Lx1/a;)V

    iget-object p2, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p3, p0, Ln1/x$a;->b:Ln1/l;

    const/16 p4, 0xbc

    invoke-interface {p2, p3, p1, p4}, Ln1/q;->j(Ln1/l;II)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ln1/x$a;->c:I

    return v0
.end method

.method public e(IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0, p1, p2, p3}, Ln1/x$a;->h(III)V

    return-void

    :pswitch_0
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_0

    :pswitch_1
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3}, Ln1/q;->b()V

    goto :goto_0

    :pswitch_2
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-interface {p3, v0, v1, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto :goto_0

    :pswitch_3
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, v1, v1}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto :goto_0

    :pswitch_4
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    :goto_0
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4}, Ln1/q;->d(I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p4, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p4, p2, p1}, Ln1/q;->j(Ln1/l;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Ln1/x$a;->c:I

    return-void
.end method

.method public g(IIILn1/y;I)V
    .locals 2

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p5}, Ln1/q;->o(I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4}, Ln1/q;->k(Ln1/y;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p4, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p4, p2, p1}, Ln1/q;->j(Ln1/l;II)V

    return-void
.end method

.method public h(III)V
    .locals 1

    new-instance p2, Ln1/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid opcode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i(IIILx1/a;I)V
    .locals 3

    const/16 p3, 0x12

    if-eq p1, p3, :cond_6

    const/16 p3, 0x13

    if-eq p1, p3, :cond_6

    const/16 p3, 0xbd

    if-eq p1, p3, :cond_5

    const/16 p3, 0xc5

    if-eq p1, p3, :cond_4

    const/16 p3, 0xc0

    if-eq p1, p3, :cond_3

    const/16 p3, 0xc1

    if-eq p1, p3, :cond_3

    packed-switch p1, :pswitch_data_0

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3}, Ln1/q;->b()V

    goto/16 :goto_1

    :pswitch_0
    iget-object p3, p0, Ln1/x$a;->d:Ln1/x;

    invoke-static {p3, p1}, Ln1/x;->h(Ln1/x;I)V

    check-cast p4, Lx1/r;

    invoke-virtual {p4}, Lx1/r;->B()Ly1/a;

    move-result-object p3

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {v0, v1, p3}, Ln1/q;->a(Ln1/l;Ly1/a;)V

    invoke-virtual {p4}, Lx1/r;->n()Lx1/j;

    move-result-object p4

    goto/16 :goto_1

    :pswitch_1
    instance-of p3, p4, Lx1/q;

    if-eqz p3, :cond_0

    check-cast p4, Lx1/q;

    invoke-virtual {p4}, Lx1/q;->E()Lx1/z;

    move-result-object p4

    iget-object p3, p0, Ln1/x$a;->d:Ln1/x;

    invoke-static {p3, p1, p4}, Ln1/x;->f(Ln1/x;ILx1/z;)V

    :cond_0
    instance-of p3, p4, Lx1/z;

    if-eqz p3, :cond_1

    move-object p3, p4

    check-cast p3, Lx1/z;

    invoke-virtual {p3}, Lx1/e;->D()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Ln1/x$a;->d:Ln1/x;

    invoke-static {p3, p1}, Ln1/x;->g(Ln1/x;I)V

    :cond_1
    const/16 p3, 0xb8

    if-ne p1, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    move-object v0, p4

    check-cast v0, Lx1/z;

    invoke-virtual {v0, p3}, Lx1/e;->A(Z)Ly1/a;

    move-result-object p3

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {v0, v1, p3}, Ln1/q;->a(Ln1/l;Ly1/a;)V

    goto :goto_1

    :pswitch_2
    move-object p3, p4

    check-cast p3, Lx1/n;

    invoke-virtual {p3}, Lx1/n;->getType()Ly1/c;

    move-result-object p3

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v2, Ly1/c;->K:Ly1/c;

    invoke-interface {v0, v1, v2, p3}, Ln1/q;->q(Ln1/l;Ly1/c;Ly1/c;)V

    goto :goto_1

    :pswitch_3
    move-object p3, p4

    check-cast p3, Lx1/n;

    invoke-virtual {p3}, Lx1/n;->getType()Ly1/c;

    move-result-object p3

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {v0, v1, p3}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_1

    :cond_3
    :pswitch_4
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_1

    :cond_4
    sget-object p3, Ly1/c;->B:Ly1/c;

    invoke-static {p3, p5}, Ly1/a;->v(Ly1/c;I)Ly1/a;

    move-result-object p3

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v1, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {v0, v1, p3}, Ln1/q;->a(Ln1/l;Ly1/a;)V

    goto :goto_1

    :cond_5
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object v0, p0, Ln1/x$a;->b:Ln1/l;

    sget-object v1, Ly1/c;->y:Ly1/c;

    invoke-interface {p3, v0, v1}, Ln1/q;->p(Ln1/l;Ly1/c;)V

    goto :goto_1

    :cond_6
    instance-of p3, p4, Lx1/y;

    if-nez p3, :cond_7

    instance-of p3, p4, Lx1/b0;

    if-eqz p3, :cond_8

    :cond_7
    iget-object p3, p0, Ln1/x$a;->d:Ln1/x;

    invoke-static {p3, p4}, Ln1/x;->i(Ln1/x;Lx1/a;)V

    :cond_8
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3}, Ln1/q;->b()V

    :goto_1
    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p5}, Ln1/q;->o(I)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {p3, p4}, Ln1/q;->g(Lx1/a;)V

    iget-object p3, p0, Ln1/x$a;->a:Ln1/q;

    iget-object p4, p0, Ln1/x$a;->b:Ln1/l;

    invoke-interface {p3, p4, p2, p1}, Ln1/q;->j(Ln1/l;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ly1/c;)V
    .locals 4

    iget-object v0, p0, Ln1/x$a;->a:Ln1/q;

    invoke-interface {v0}, Ln1/q;->c()Ly1/a;

    move-result-object v0

    invoke-virtual {v0}, Ly1/a;->n()Ly1/c;

    move-result-object v0

    invoke-static {v0, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ln1/x$a;->d:Ln1/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return type mismatch: prototype indicates "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but encountered type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln1/x;->c(Ln1/x;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ln1/l;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/x$a;->b:Ln1/l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "frame == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
