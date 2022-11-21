.class public final Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/i$b;,
        Ln1/i$a;,
        Ln1/i$c;
    }
.end annotation


# static fields
.field public static final c:Ln1/i$c;


# instance fields
.field public final a:Lb2/d;

.field public final b:Lx1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln1/i$a;

    invoke-direct {v0}, Ln1/i$a;-><init>()V

    sput-object v0, Ln1/i;->c:Ln1/i$c;

    return-void
.end method

.method public constructor <init>(Lb2/d;Lx1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Ln1/i;->a:Lb2/d;

    iput-object p2, p0, Ln1/i;->b:Lx1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pool == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public b(Ln1/i$c;)V
    .locals 3

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->q()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1, p1}, Ln1/i;->d(ILn1/i$c;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lb2/d;
    .locals 1

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    return-object v0
.end method

.method public d(ILn1/i$c;)I
    .locals 11

    const-string v0, "...at bytecode offset "

    if-nez p2, :cond_0

    sget-object p2, Ln1/i;->c:Ln1/i$c;

    :cond_0
    move-object v1, p2

    :try_start_0
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {p2, p1}, Lb2/d;->l(I)I

    move-result v2

    invoke-static {v2}, Ln1/h;->a(I)I

    const/4 p2, 0x0

    const/4 v7, 0x5

    const/16 v3, 0xac

    const/16 v4, 0x4f

    const/16 v5, 0x2e

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    invoke-interface {v1, v2, p1, v10}, Ln1/i$c;->h(III)V

    goto/16 :goto_3

    :pswitch_0
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->i(I)I

    move-result p2

    add-int/2addr p2, p1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa7

    goto :goto_0

    :cond_1
    const/16 v2, 0xa8

    :goto_0
    invoke-interface {v1, v2, p1, v7, p2}, Ln1/i$c;->e(IIII)V

    return v7

    :pswitch_1
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->n(I)I

    move-result p2

    iget-object v3, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Lb2/d;->l(I)I

    move-result v6

    iget-object v3, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v3, p2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    const/4 v4, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    const/4 p1, 0x4

    return p1

    :pswitch_2
    invoke-virtual {p0, p1, v1}, Ln1/i;->h(ILn1/i$c;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p0, p1, v1}, Ln1/i;->f(ILn1/i$c;)I

    move-result p1

    return p1

    :pswitch_4
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->n(I)I

    move-result p2

    iget-object v3, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v3, p2}, Lx1/b;->get(I)Lx1/a;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lx1/r;

    const/4 v4, 0x5

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v7

    :pswitch_5
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->n(I)I

    move-result p2

    iget-object v3, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Lb2/d;->l(I)I

    move-result v3

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v5, p1, 0x4

    invoke-virtual {v4, v5}, Lb2/d;->l(I)I

    move-result v4

    iget-object v5, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v5, p2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    const/4 p2, 0x5

    shl-int/lit8 v4, v4, 0x8

    or-int v6, v3, v4

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v7

    :pswitch_6
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->n(I)I

    move-result p2

    iget-object v3, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v3, p2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v8

    :pswitch_7
    sget-object p2, Ly1/c;->B:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_8
    sget-object p2, Ly1/c;->K:Ly1/c;

    invoke-interface {v1, v3, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_9
    sget-object p2, Ly1/c;->w:Ly1/c;

    invoke-interface {v1, v3, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_a
    sget-object p2, Ly1/c;->x:Ly1/c;

    invoke-interface {v1, v3, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_b
    sget-object p2, Ly1/c;->z:Ly1/c;

    invoke-interface {v1, v3, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_c
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-interface {v1, v3, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_d
    invoke-virtual {p0, p1, v1}, Ln1/i;->e(ILn1/i$c;)I

    move-result p1

    return p1

    :pswitch_e
    invoke-virtual {p0, p1, v1}, Ln1/i;->g(ILn1/i$c;)I

    move-result p1

    return p1

    :pswitch_f
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->l(I)I

    move-result v5

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->D:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_10
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->k(I)I

    move-result p2

    add-int/2addr p2, p1

    invoke-interface {v1, v2, p1, v8, p2}, Ln1/i$c;->e(IIII)V

    return v8

    :pswitch_11
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_12
    sget-object p2, Ly1/c;->w:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_13
    sget-object p2, Ly1/c;->x:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_14
    sget-object p2, Ly1/c;->z:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_15
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lb2/d;->l(I)I

    move-result v5

    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p2, v3}, Lb2/d;->f(I)I

    move-result v7

    const/4 v4, 0x3

    sget-object v6, Ly1/c;->y:Ly1/c;

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v8

    :pswitch_16
    sub-int/2addr v2, v8

    sget-object p2, Ly1/c;->w:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_17
    sub-int/2addr v2, v9

    sget-object p2, Ly1/c;->x:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_18
    sub-int/2addr v2, v10

    sget-object p2, Ly1/c;->z:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_19
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1a
    sget-object p2, Ly1/c;->B:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1b
    sget-object p2, Ly1/c;->A:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1c
    sget-object p2, Ly1/c;->v:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1d
    sget-object p2, Ly1/c;->u:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1e
    sget-object p2, Ly1/c;->K:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_1f
    sget-object p2, Ly1/c;->w:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_20
    sget-object p2, Ly1/c;->x:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_21
    sget-object p2, Ly1/c;->z:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_22
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-interface {v1, v4, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_23
    add-int/lit8 v5, v2, -0x4b

    const/16 v2, 0x36

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->K:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_24
    add-int/lit8 v5, v2, -0x47

    const/16 v2, 0x36

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->w:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_25
    add-int/lit8 v5, v2, -0x43

    const/16 v2, 0x36

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->x:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_26
    add-int/lit8 v5, v2, -0x3f

    const/16 v2, 0x36

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->z:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_27
    add-int/lit8 v5, v2, -0x3b

    const/16 v2, 0x36

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->y:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_28
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->K:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_29
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->w:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_2a
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->x:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_2b
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->z:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_2c
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->y:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_2d
    sget-object p2, Ly1/c;->A:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_2e
    sget-object p2, Ly1/c;->v:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_2f
    sget-object p2, Ly1/c;->u:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_30
    sget-object p2, Ly1/c;->K:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_31
    sget-object p2, Ly1/c;->w:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_32
    sget-object p2, Ly1/c;->x:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_33
    sget-object p2, Ly1/c;->z:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_34
    sget-object p2, Ly1/c;->y:Ly1/c;

    invoke-interface {v1, v5, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V

    return v10

    :pswitch_35
    add-int/lit8 v5, v2, -0x2a

    const/16 v2, 0x15

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->K:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_36
    add-int/lit8 v5, v2, -0x26

    const/16 v2, 0x15

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->w:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_37
    add-int/lit8 v5, v2, -0x22

    const/16 v2, 0x15

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->x:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_38
    add-int/lit8 v5, v2, -0x1e

    const/16 v2, 0x15

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->z:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_39
    add-int/lit8 v5, v2, -0x1a

    const/16 v2, 0x15

    const/4 v4, 0x1

    sget-object v6, Ly1/c;->y:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v10

    :pswitch_3a
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->K:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_3b
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->w:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_3c
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->x:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_3d
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->z:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_3e
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->l(I)I

    move-result v5

    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Ly1/c;->y:Ly1/c;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v9

    :pswitch_3f
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->n(I)I

    move-result p2

    iget-object v2, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v2, p2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    const/16 v2, 0x14

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v8

    :pswitch_40
    iget-object v2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lb2/d;->n(I)I

    move-result v2

    iget-object v3, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v3, v2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    instance-of v2, v5, Lx1/p;

    if-eqz v2, :cond_2

    move-object p2, v5

    check-cast p2, Lx1/p;

    invoke-virtual {p2}, Lx1/p;->B()I

    move-result p2

    move v6, p2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/16 v2, 0x12

    const/4 v4, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v8

    :pswitch_41
    iget-object v2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lb2/d;->l(I)I

    move-result v2

    iget-object v3, p0, Ln1/i;->b:Lx1/b;

    invoke-interface {v3, v2}, Lx1/b;->get(I)Lx1/a;

    move-result-object v5

    instance-of v2, v5, Lx1/p;

    if-eqz v2, :cond_3

    move-object p2, v5

    check-cast p2, Lx1/p;

    invoke-virtual {p2}, Lx1/p;->B()I

    move-result p2

    move v6, p2

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v9

    :pswitch_42
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->k(I)I

    move-result v6

    const/16 v2, 0x12

    const/4 v4, 0x3

    invoke-static {v6}, Lx1/p;->C(I)Lx1/p;

    move-result-object v5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v8

    :pswitch_43
    iget-object p2, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lb2/d;->f(I)I

    move-result v6

    const/16 v2, 0x12

    const/4 v4, 0x2

    invoke-static {v6}, Lx1/p;->C(I)Lx1/p;

    move-result-object v5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v9

    :pswitch_44
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/l;->d:Lx1/l;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_45
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/l;->b:Lx1/l;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_46
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/o;->k:Lx1/o;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_47
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/o;->d:Lx1/o;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_48
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/o;->b:Lx1/o;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_49
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/w;->d:Lx1/w;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4a
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/w;->b:Lx1/w;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4b
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->t:Lx1/p;

    const/4 v6, 0x5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4c
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->s:Lx1/p;

    const/4 v6, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4d
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->r:Lx1/p;

    const/4 v6, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4e
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->q:Lx1/p;

    const/4 v6, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_4f
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->p:Lx1/p;

    const/4 v6, 0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_50
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->k:Lx1/p;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_51
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/p;->d:Lx1/p;

    const/4 v6, -0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_52
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lx1/s;->a:Lx1/s;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Ln1/i$c;->i(IIILx1/a;I)V

    return v10

    :pswitch_53
    sget-object p2, Ly1/c;->B:Ly1/c;

    invoke-interface {v1, v2, p1, v10, p2}, Ln1/i$c;->b(IIILy1/c;)V
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v10

    :catch_0
    move-exception p2

    new-instance v1, Ln1/w;

    invoke-direct {v1, p2}, Ln1/w;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ll1/d;->a(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
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
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(ILn1/i$c;)I
    .locals 9

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    shl-int/lit8 v3, v8, 0x8

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v4, v1}, Lb2/d;->l(I)I

    move-result v4

    or-int v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v1, v0}, Lb2/d;->i(I)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v3, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v3, v4}, Lb2/d;->i(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x8

    new-instance v7, Ln1/y;

    invoke-direct {v7, v3}, Ln1/y;-><init>(I)V

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v4, v0}, Lb2/d;->i(I)I

    move-result v4

    iget-object v5, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v6}, Lb2/d;->i(I)I

    move-result v5

    add-int/2addr v5, p1

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v4, v5}, Ln1/y;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v1}, Ln1/y;->F(I)V

    invoke-virtual {v7}, Ln1/y;->E()V

    invoke-virtual {v7}, Ln1/y;->setImmutable()V

    sub-int/2addr v0, p1

    const/16 v4, 0xab

    move-object v3, p2

    move v5, p1

    move v6, v0

    invoke-interface/range {v3 .. v8}, Ln1/i$c;->g(IIILn1/y;I)V

    return v0
.end method

.method public final f(ILn1/i$c;)I
    .locals 12

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lb2/d;->l(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ln1/w;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad newarray code "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v1, Lx1/e0;->D:Lx1/e0;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lx1/e0;->E:Lx1/e0;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lx1/e0;->F:Lx1/e0;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lx1/e0;->z:Lx1/e0;

    goto :goto_0

    :pswitch_4
    sget-object v1, Lx1/e0;->B:Lx1/e0;

    goto :goto_0

    :pswitch_5
    sget-object v1, Lx1/e0;->C:Lx1/e0;

    goto :goto_0

    :pswitch_6
    sget-object v1, Lx1/e0;->A:Lx1/e0;

    goto :goto_0

    :pswitch_7
    sget-object v1, Lx1/e0;->y:Lx1/e0;

    :goto_0
    invoke-interface {p2}, Ln1/i$c;->d()I

    move-result v2

    new-instance v3, Ln1/i$b;

    invoke-direct {v3, p0}, Ln1/i$b;-><init>(Ln1/i;)V

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2, v3}, Ln1/i;->d(ILn1/i$c;)I

    iget-object v5, v3, Ln1/i$b;->b:Lx1/a;

    instance-of v5, v5, Lx1/p;

    if-eqz v5, :cond_0

    iget v5, v3, Ln1/i$b;->c:I

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_0

    iget v2, v3, Ln1/i$b;->d:I

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, p1, 0x2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_7

    const/4 v7, 0x0

    :goto_2
    iget-object v8, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v5}, Lb2/d;->l(I)I

    move-result v8

    const/16 v10, 0x59

    if-eq v8, v10, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, v9, v3}, Ln1/i;->d(ILn1/i$c;)I

    iget v8, v3, Ln1/i$b;->c:I

    if-eqz v8, :cond_6

    iget-object v10, v3, Ln1/i$b;->b:Lx1/a;

    instance-of v10, v10, Lx1/p;

    if-eqz v10, :cond_6

    iget v10, v3, Ln1/i$b;->d:I

    if-eq v10, v7, :cond_2

    goto :goto_4

    :cond_2
    add-int/2addr v9, v8

    invoke-virtual {p0, v9, v3}, Ln1/i;->d(ILn1/i$c;)I

    iget v8, v3, Ln1/i$b;->c:I

    if-eqz v8, :cond_6

    iget-object v10, v3, Ln1/i$b;->b:Lx1/a;

    instance-of v11, v10, Lx1/v;

    if-nez v11, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr v9, v8

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v9}, Lb2/d;->l(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_8
    const/16 v11, 0x50

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_9
    const/16 v11, 0x4f

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_a
    const/16 v11, 0x56

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_b
    const/16 v11, 0x52

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_c
    const/16 v11, 0x51

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_d
    const/16 v11, 0x55

    if-eq v8, v11, :cond_4

    goto :goto_3

    :pswitch_e
    const/16 v11, 0x54

    if-eq v8, v11, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_2

    :cond_6
    :goto_4
    move v4, v7

    :cond_7
    const/4 v0, 0x2

    if-lt v4, v0, :cond_9

    if-eq v4, v2, :cond_8

    goto :goto_5

    :cond_8
    sub-int/2addr v5, p1

    invoke-interface {p2, p1, v5, v1, v6}, Ln1/i$c;->c(IILx1/e0;Ljava/util/ArrayList;)V

    return v5

    :cond_9
    :goto_5
    const/4 v2, 0x0

    invoke-interface {p2, p1, v0, v1, v2}, Ln1/i$c;->c(IILx1/e0;Ljava/util/ArrayList;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final g(ILn1/i$c;)I
    .locals 9

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    shl-int/lit8 v3, v8, 0x8

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v4, v1}, Lb2/d;->l(I)I

    move-result v4

    or-int v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v1, v0}, Lb2/d;->i(I)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v3, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v3, v4}, Lb2/d;->i(I)I

    move-result v3

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v5}, Lb2/d;->i(I)I

    move-result v4

    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0xc

    if-gt v3, v4, :cond_2

    new-instance v7, Ln1/y;

    invoke-direct {v7, v5}, Ln1/y;-><init>(I)V

    :goto_1
    if-ge v2, v5, :cond_1

    iget-object v4, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v4, v0}, Lb2/d;->i(I)I

    move-result v4

    add-int/2addr v4, p1

    add-int/lit8 v0, v0, 0x4

    add-int v6, v3, v2

    invoke-virtual {v7, v6, v4}, Ln1/y;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v1}, Ln1/y;->F(I)V

    invoke-virtual {v7}, Ln1/y;->E()V

    invoke-virtual {v7}, Ln1/y;->setImmutable()V

    sub-int/2addr v0, p1

    const/16 v4, 0xab

    move-object v3, p2

    move v5, p1

    move v6, v0

    invoke-interface/range {v3 .. v8}, Ln1/i$c;->g(IIILn1/y;I)V

    return v0

    :cond_2
    new-instance p1, Ln1/w;

    const-string p2, "low / high inversion"

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final h(ILn1/i$c;)I
    .locals 11

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lb2/d;->l(I)I

    move-result v3

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lb2/d;->n(I)I

    move-result v8

    const/16 v0, 0x84

    if-eq v3, v0, :cond_1

    const/16 v0, 0xa9

    const/4 v1, 0x4

    if-eq v3, v0, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const/16 v0, 0xc4

    const/4 v1, 0x1

    invoke-interface {p2, v0, p1, v1}, Ln1/i$c;->h(III)V

    return v1

    :pswitch_0
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->K:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_1
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->w:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_2
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->x:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_3
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->z:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_4
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->y:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_5
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->K:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_6
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->w:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_7
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->x:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_8
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->z:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :pswitch_9
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Ly1/c;->y:Ly1/c;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :cond_0
    const/4 v5, 0x4

    sget-object v7, Ly1/c;->D:Ly1/c;

    const/4 v0, 0x0

    move-object v2, p2

    move v4, p1

    move v6, v8

    move v8, v0

    invoke-interface/range {v2 .. v8}, Ln1/i$c;->a(IIIILy1/c;I)V

    return v1

    :cond_1
    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Lb2/d;->k(I)I

    move-result v0

    const/4 v5, 0x6

    sget-object v7, Ly1/c;->y:Ly1/c;

    move-object v2, p2

    move v4, p1

    move v6, v8

    move v8, v0

    invoke-interface/range {v2 .. v8}, Ln1/i$c;->a(IIIILy1/c;I)V

    const/4 p1, 0x6

    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i([ILn1/i$c;)V
    .locals 1

    if-eqz p2, :cond_1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb2/c;->e([II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0}, Lb2/c;->c([II)V

    invoke-virtual {p0, v0, p2}, Ln1/i;->d(ILn1/i$c;)I

    invoke-interface {p2, v0}, Ln1/i$c;->f(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "visitor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Ln1/i;->a:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->q()I

    move-result v0

    return v0
.end method
