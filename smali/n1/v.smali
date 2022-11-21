.class public final Ln1/v;
.super Ln1/z;
.source "SourceFile"


# static fields
.field public static final E:Lx1/e0;

.field public static final F:Lx1/z;


# instance fields
.field public A:Z

.field public B:Ln1/t;

.field public C:Lw1/t;

.field public D:Lw1/w;

.field public final o:Ln1/u;

.field public final p:Ln1/j;

.field public final q:Lq1/h;

.field public final r:Lw1/a0;

.field public final s:I

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw1/h;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ly1/e;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lx1/e0;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Ly1/c;->E(Ljava/lang/String;)Ly1/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lx1/e0;-><init>(Ly1/c;)V

    sput-object v0, Ln1/v;->E:Lx1/e0;

    new-instance v1, Lx1/z;

    new-instance v2, Lx1/a0;

    new-instance v3, Lx1/d0;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lx1/d0;-><init>(Ljava/lang/String;)V

    new-instance v4, Lx1/d0;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Lx1/d0;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    invoke-direct {v1, v0, v2}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    sput-object v1, Ln1/v;->F:Lx1/z;

    return-void
.end method

.method public constructor <init>(Ln1/u;Ln1/j;Lw1/a0;Lq1/h;)V
    .locals 1

    invoke-virtual {p2}, Ln1/j;->b()Ly1/a;

    move-result-object v0

    invoke-direct {p0, v0}, Ln1/z;-><init>(Ly1/a;)V

    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Ln1/v;->o:Ln1/u;

    iput-object p2, p0, Ln1/v;->p:Ln1/j;

    iput-object p4, p0, Ln1/v;->q:Lq1/h;

    iput-object p3, p0, Ln1/v;->r:Lw1/a0;

    invoke-virtual {p2}, Ln1/j;->i()I

    move-result p1

    iput p1, p0, Ln1/v;->s:I

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ln1/v;->t:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Ln1/v;->u:Ly1/e;

    const/4 p2, 0x0

    iput-boolean p2, p0, Ln1/v;->v:Z

    iput-boolean p2, p0, Ln1/v;->w:Z

    const/4 p3, -0x1

    iput p3, p0, Ln1/v;->x:I

    iput p2, p0, Ln1/v;->y:I

    iput-boolean p2, p0, Ln1/v;->A:Z

    iput-object p1, p0, Ln1/v;->C:Lw1/t;

    iput-object p1, p0, Ln1/v;->D:Lw1/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ropper == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "methods == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public I()Z
    .locals 1

    iget-boolean v0, p0, Ln1/v;->A:Z

    return v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Ln1/v;->y:I

    return v0
.end method

.method public K()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lw1/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln1/v;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Ln1/v;->x:I

    return v0
.end method

.method public M()Ln1/t;
    .locals 1

    iget-object v0, p0, Ln1/v;->B:Ln1/t;

    return-object v0
.end method

.method public N()Lw1/t;
    .locals 1

    iget-object v0, p0, Ln1/v;->C:Lw1/t;

    return-object v0
.end method

.method public O()Lw1/w;
    .locals 1

    iget-object v0, p0, Ln1/v;->D:Lw1/w;

    return-object v0
.end method

.method public final P(II)Lw1/r;
    .locals 6

    invoke-virtual {p0}, Ln1/a;->t()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lw1/r;->a:Lw1/r;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ln1/a;->B()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    new-instance p1, Lw1/r;

    invoke-direct {p1, v2}, Lw1/r;-><init>(I)V

    invoke-virtual {p0, v3}, Ln1/a;->s(I)Ly1/d;

    move-result-object p2

    invoke-static {v1, p2}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lw1/r;->F(ILw1/q;)V

    goto :goto_2

    :cond_1
    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ln1/a;->s(I)Ly1/d;

    move-result-object v5

    invoke-static {p2, v5}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lw1/r;->F(ILw1/q;)V

    invoke-virtual {v5}, Lw1/q;->x()I

    move-result v5

    add-int/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x4f

    const-string v4, "shouldn\'t happen"

    const/4 v5, 0x2

    if-eq p1, p2, :cond_5

    const/16 p2, 0xb5

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_4

    invoke-virtual {v1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {v1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lw1/r;->F(ILw1/q;)V

    invoke-virtual {v1, v2, p1}, Lw1/r;->F(ILw1/q;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    invoke-virtual {v1, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {v1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p2

    invoke-virtual {v1, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lw1/r;->F(ILw1/q;)V

    invoke-virtual {v1, v2, p1}, Lw1/r;->F(ILw1/q;)V

    invoke-virtual {v1, v5, p2}, Lw1/r;->F(ILw1/q;)V

    :goto_1
    move-object p1, v1

    :goto_2
    invoke-virtual {p1}, Lb2/o;->setImmutable()V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Ln1/v;->z:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-object v0, p0, Ln1/v;->B:Ln1/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final S(ILx1/a;)I
    .locals 3

    if-eqz p1, :cond_b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_a

    const/16 v1, 0x15

    if-eq p1, v1, :cond_9

    const/16 v2, 0xab

    if-eq p1, v2, :cond_8

    const/16 v2, 0xac

    if-eq p1, v2, :cond_7

    const/16 v2, 0xc6

    if-eq p1, v2, :cond_6

    const/16 v2, 0xc7

    if-eq p1, v2, :cond_5

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x34

    packed-switch p1, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p1, 0x25

    return p1

    :pswitch_1
    const/16 p1, 0x24

    return p1

    :pswitch_2
    const/16 p1, 0x2c

    return p1

    :pswitch_3
    const/16 p1, 0x2b

    return p1

    :pswitch_4
    const/16 p1, 0x23

    return p1

    :pswitch_5
    const/16 p1, 0x22

    return p1

    :pswitch_6
    const/16 p1, 0x29

    return p1

    :pswitch_7
    const/16 p1, 0x28

    return p1

    :pswitch_8
    const/16 p1, 0x3b

    return p1

    :pswitch_9
    const/16 p1, 0x35

    return p1

    :pswitch_a
    const/16 p1, 0x31

    return p1

    :pswitch_b
    check-cast p2, Lx1/z;

    invoke-virtual {p2}, Lx1/e;->C()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lx1/x;->n()Lx1/e0;

    move-result-object p1

    iget-object p2, p0, Ln1/v;->p:Ln1/j;

    invoke-virtual {p2}, Ln1/j;->c()Lx1/e0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x33

    return p1

    :cond_1
    :goto_0
    return v0

    :pswitch_c
    check-cast p2, Lx1/z;

    invoke-virtual {p2}, Lx1/x;->n()Lx1/e0;

    move-result-object p1

    iget-object v1, p0, Ln1/v;->p:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->c()Lx1/e0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Ln1/v;->q:Lq1/h;

    invoke-interface {v1}, Lq1/h;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Ln1/v;->q:Lq1/h;

    invoke-interface {v1, p1}, Lq1/h;->get(I)Lq1/g;

    move-result-object v1

    invoke-interface {v1}, Lq1/f;->a()I

    move-result v2

    invoke-static {v2}, Lw1/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lx1/x;->u()Lx1/a0;

    move-result-object v2

    invoke-interface {v1}, Lq1/f;->d()Lx1/a0;

    move-result-object v1

    invoke-virtual {v2, v1}, Lx1/a0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lx1/e;->D()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x3a

    return p1

    :cond_4
    const/16 p1, 0x32

    return p1

    :pswitch_d
    const/16 p1, 0x2f

    return p1

    :pswitch_e
    const/16 p1, 0x2d

    return p1

    :pswitch_f
    const/16 p1, 0x30

    return p1

    :pswitch_10
    const/16 p1, 0x2e

    return p1

    :pswitch_11
    const/4 p1, 0x6

    return p1

    :pswitch_12
    const/16 p1, 0xb

    return p1

    :pswitch_13
    const/16 p1, 0xc

    return p1

    :pswitch_14
    const/16 p1, 0xa

    return p1

    :pswitch_15
    const/16 p1, 0x9

    return p1

    :pswitch_16
    const/16 p1, 0x1c

    return p1

    :pswitch_17
    const/16 p1, 0x1b

    return p1

    :pswitch_18
    const/16 p1, 0x20

    return p1

    :pswitch_19
    const/16 p1, 0x1f

    return p1

    :pswitch_1a
    const/16 p1, 0x1e

    return p1

    :pswitch_1b
    const/16 p1, 0x1d

    return p1

    :sswitch_0
    const/16 p1, 0x16

    return p1

    :sswitch_1
    return v1

    :sswitch_2
    return v0

    :sswitch_3
    const/16 p1, 0x19

    return p1

    :sswitch_4
    const/16 p1, 0x18

    return p1

    :sswitch_5
    const/16 p1, 0x17

    return p1

    :sswitch_6
    const/16 p1, 0x13

    return p1

    :sswitch_7
    const/16 p1, 0x12

    return p1

    :sswitch_8
    const/16 p1, 0x11

    return p1

    :sswitch_9
    const/16 p1, 0x10

    return p1

    :sswitch_a
    const/16 p1, 0xf

    return p1

    :pswitch_1c
    :sswitch_b
    const/16 p1, 0xe

    return p1

    :sswitch_c
    const/16 p1, 0x27

    return p1

    :sswitch_d
    const/16 p1, 0x26

    return p1

    :cond_5
    :pswitch_1d
    const/16 p1, 0x8

    return p1

    :cond_6
    :pswitch_1e
    const/4 p1, 0x7

    return p1

    :cond_7
    :pswitch_1f
    const/16 p1, 0x21

    return p1

    :cond_8
    const/16 p1, 0xd

    return p1

    :cond_9
    :sswitch_e
    const/4 p1, 0x2

    return p1

    :cond_a
    :sswitch_f
    const/4 p1, 0x5

    return p1

    :cond_b
    :sswitch_10
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x12 -> :sswitch_f
        0x2e -> :sswitch_d
        0x36 -> :sswitch_e
        0x4f -> :sswitch_c
        0x60 -> :sswitch_b
        0x64 -> :sswitch_a
        0x68 -> :sswitch_9
        0x6c -> :sswitch_8
        0x70 -> :sswitch_7
        0x74 -> :sswitch_6
        0x78 -> :sswitch_5
        0x7a -> :sswitch_4
        0x7c -> :sswitch_3
        0x7e -> :sswitch_2
        0x80 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x84
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_1e
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1e
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1e
        :pswitch_1d
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb1
        :pswitch_1f
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final T(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)Lw1/h;
    .locals 6

    move-object v5, p5

    check-cast v5, Lx1/z;

    new-instance p5, Lw1/j;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lw1/j;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/z;)V

    return-object p5
.end method

.method public U()Z
    .locals 1

    iget-boolean v0, p0, Ln1/v;->w:Z

    return v0
.end method

.method public V(Ly1/e;)V
    .locals 0

    iput-object p1, p0, Ln1/v;->u:Ly1/e;

    iget-object p1, p0, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln1/v;->v:Z

    iput-boolean p1, p0, Ln1/v;->w:Z

    iput p1, p0, Ln1/v;->x:I

    iput p1, p0, Ln1/v;->y:I

    iput-boolean p1, p0, Ln1/v;->A:Z

    iput-boolean p1, p0, Ln1/v;->z:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ln1/v;->B:Ln1/t;

    return-void
.end method

.method public final W(Lw1/t;Lw1/w;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Ln1/v;->C:Lw1/t;

    if-nez v0, :cond_0

    iput-object p1, p0, Ln1/v;->C:Lw1/t;

    iput-object p2, p0, Ln1/v;->D:Lw1/w;

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_2

    invoke-virtual {p2}, Lw1/w;->a()I

    move-result p1

    iget-object v0, p0, Ln1/v;->D:Lw1/w;

    invoke-virtual {v0}, Lw1/w;->a()I

    move-result v0

    if-le p1, v0, :cond_1

    iput-object p2, p0, Ln1/v;->D:Lw1/w;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p2, Ln1/w;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return op mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ln1/v;->C:Lw1/t;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pos == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "op == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Ln1/v;->v:Z

    return v0
.end method

.method public j(Ln1/l;II)V
    .locals 20

    move-object/from16 v7, p0

    move/from16 v0, p3

    iget v1, v7, Ln1/v;->s:I

    invoke-virtual/range {p1 .. p1}, Ln1/l;->e()Ln1/k;

    move-result-object v2

    invoke-virtual {v2}, Ln1/k;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v7, v0, v1}, Ln1/v;->P(II)Lw1/r;

    move-result-object v11

    invoke-virtual {v11}, Lb2/f;->size()I

    move-result v2

    invoke-super/range {p0 .. p3}, Ln1/z;->j(Ln1/l;II)V

    iget-object v3, v7, Ln1/v;->p:Ln1/j;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ln1/j;->n(I)Lw1/w;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x36

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v7, v4}, Ln1/a;->C(Z)Lw1/q;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ln1/a;->E()I

    move-result v8

    if-nez v8, :cond_2

    const/16 v1, 0x57

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-eq v0, v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v8, v5, :cond_1e

    invoke-virtual {v7, v3}, Ln1/a;->D(I)Ly1/d;

    move-result-object v4

    invoke-static {v1, v4}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    move-object v1, v4

    goto :goto_2

    :cond_4
    sget-object v1, Ly1/c;->B:Ly1/c;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ln1/a;->w()Lx1/a;

    move-result-object v14

    const/16 v8, 0xc5

    if-ne v0, v8, :cond_7

    iput-boolean v5, v7, Ln1/v;->A:Z

    const/4 v0, 0x6

    iput v0, v7, Ln1/v;->y:I

    invoke-virtual {v4}, Lw1/q;->A()I

    move-result v0

    sget-object v13, Ly1/c;->c0:Ly1/c;

    invoke-static {v0, v13}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v0

    invoke-static {v13, v2}, Lw1/v;->j(Ly1/d;I)Lw1/t;

    move-result-object v9

    new-instance v12, Lw1/y;

    iget-object v10, v7, Ln1/v;->u:Ly1/e;

    sget-object v16, Lx1/e0;->E:Lx1/e0;

    move-object v8, v12

    move-object/from16 v17, v10

    move-object v10, v6

    move-object v15, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    iget-object v8, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Lw1/v;->D(Ly1/d;)Lw1/t;

    move-result-object v8

    new-instance v9, Lw1/o;

    sget-object v10, Lw1/r;->a:Lw1/r;

    invoke-direct {v9, v8, v6, v0, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    iget-object v8, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v14

    check-cast v8, Lx1/e0;

    invoke-virtual {v8}, Lx1/e0;->x()Ly1/c;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_5

    invoke-virtual {v8}, Ly1/c;->x()Ly1/c;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v9

    sget-object v10, Ly1/c;->F:Ly1/c;

    invoke-static {v9, v10}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v9

    invoke-virtual {v8}, Ly1/c;->M()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v8}, Lx1/n;->x(Ly1/c;)Lx1/n;

    move-result-object v17

    new-instance v8, Lw1/y;

    sget-object v13, Lw1/v;->w2:Lw1/t;

    sget-object v15, Lw1/r;->a:Lw1/r;

    iget-object v10, v7, Ln1/v;->u:Ly1/e;

    move-object v12, v8

    move-object v11, v14

    move-object v14, v6

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    goto :goto_4

    :cond_6
    move-object v11, v14

    new-instance v10, Lw1/y;

    sget-object v13, Lw1/v;->q:Lw1/t;

    sget-object v15, Lw1/r;->a:Lw1/r;

    iget-object v14, v7, Ln1/v;->u:Ly1/e;

    new-instance v12, Lx1/e0;

    invoke-direct {v12, v8}, Lx1/e0;-><init>(Ly1/c;)V

    move-object v8, v12

    move-object v12, v10

    move-object/from16 v16, v14

    move-object v14, v6

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    move-object v8, v10

    :goto_4
    iget-object v10, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lw1/q;->getType()Ly1/c;

    move-result-object v8

    invoke-static {v8}, Lw1/v;->E(Ly1/d;)Lw1/t;

    move-result-object v8

    new-instance v10, Lw1/o;

    sget-object v15, Lw1/r;->a:Lw1/r;

    invoke-direct {v10, v8, v6, v9, v15}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    iget-object v8, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v8

    sget-object v10, Ly1/c;->K:Ly1/c;

    invoke-static {v8, v10}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v8

    new-instance v10, Lw1/y;

    sget-object v18, Ln1/v;->F:Lx1/z;

    invoke-virtual/range {v18 .. v18}, Lx1/e;->z()Ly1/a;

    move-result-object v12

    invoke-static {v12}, Lw1/v;->w(Ly1/a;)Lw1/t;

    move-result-object v13

    invoke-static {v9, v0}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object v0

    iget-object v9, v7, Ln1/v;->u:Ly1/e;

    move-object v12, v10

    move-object v14, v6

    move-object v3, v15

    move-object v15, v0

    move-object/from16 v16, v9

    move-object/from16 v17, v18

    invoke-direct/range {v12 .. v17}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    iget-object v0, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v18}, Lx1/e;->z()Ly1/a;

    move-result-object v0

    invoke-virtual {v0}, Ly1/a;->n()Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lw1/v;->D(Ly1/d;)Lw1/t;

    move-result-object v0

    new-instance v9, Lw1/o;

    invoke-direct {v9, v0, v6, v8, v3}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    iget-object v0, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc0

    invoke-static {v8}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v3

    move-object/from16 v19, v11

    move-object v11, v3

    move-object/from16 v3, v19

    goto :goto_5

    :cond_7
    move-object v3, v14

    const/16 v8, 0xa8

    if-ne v0, v8, :cond_8

    iput-boolean v5, v7, Ln1/v;->z:Z

    return-void

    :cond_8
    const/16 v8, 0xa9

    if-ne v0, v8, :cond_9

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v8}, Ln1/a;->s(I)Ly1/d;

    move-result-object v0

    check-cast v0, Ln1/t;

    iput-object v0, v7, Ln1/v;->B:Ln1/t;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Argument to RET was not a ReturnAddress"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_5
    invoke-virtual {v7, v0, v3}, Ln1/v;->S(ILx1/a;)I

    move-result v8

    invoke-static {v8, v1, v11, v3}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v9

    if-eqz v4, :cond_b

    invoke-virtual {v9}, Lw1/t;->g()Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, v7, Ln1/v;->y:I

    add-int/2addr v10, v5

    iput v10, v7, Ln1/v;->y:I

    invoke-virtual {v9}, Lw1/t;->d()I

    move-result v10

    const/16 v12, 0x3b

    if-ne v10, v12, :cond_a

    move-object v14, v3

    check-cast v14, Lx1/j;

    invoke-virtual {v14}, Lx1/j;->x()Ly1/c;

    move-result-object v10

    goto :goto_6

    :cond_a
    move-object v14, v3

    check-cast v14, Lx1/z;

    invoke-virtual {v14}, Lx1/e;->z()Ly1/a;

    move-result-object v10

    invoke-virtual {v10}, Ly1/a;->n()Ly1/c;

    move-result-object v10

    :goto_6
    new-instance v15, Lw1/o;

    invoke-static {v10}, Lw1/v;->D(Ly1/d;)Lw1/t;

    move-result-object v10

    sget-object v12, Lw1/r;->a:Lw1/r;

    invoke-direct {v15, v10, v6, v4, v12}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v9}, Lw1/t;->a()Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v7, Ln1/v;->y:I

    add-int/2addr v10, v5

    iput v10, v7, Ln1/v;->y:I

    new-instance v15, Lw1/o;

    invoke-virtual {v4}, Lw1/q;->C()Ly1/d;

    move-result-object v10

    invoke-static {v10}, Lw1/v;->E(Ly1/d;)Lw1/t;

    move-result-object v10

    sget-object v12, Lw1/r;->a:Lw1/r;

    invoke-direct {v15, v10, v6, v4, v12}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    :goto_7
    move-object v10, v15

    const/4 v15, 0x0

    goto :goto_8

    :cond_c
    move-object v15, v4

    const/4 v10, 0x0

    :goto_8
    const/16 v4, 0x29

    if-ne v8, v4, :cond_d

    invoke-virtual {v9}, Lw1/t;->e()Ly1/c;

    move-result-object v1

    invoke-static {v1}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v1

    move-object v13, v9

    move-object v9, v1

    goto/16 :goto_a

    :cond_d
    if-nez v3, :cond_11

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    invoke-virtual {v11, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->C()Ly1/d;

    move-result-object v4

    invoke-interface {v4}, Ly1/d;->l()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-interface {v2}, Ly1/d;->l()Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_e
    iget-object v12, v7, Ln1/v;->r:Lw1/a0;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lw1/r;->A(I)Lw1/q;

    move-result-object v14

    invoke-virtual {v11, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v13

    invoke-interface {v12, v9, v14, v13}, Lw1/a0;->c(Lw1/t;Lw1/q;Lw1/q;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v4}, Ly1/d;->l()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v2, v4

    check-cast v2, Lx1/a;

    invoke-virtual {v11}, Lw1/r;->M()Lw1/r;

    move-result-object v3

    invoke-virtual {v9}, Lw1/t;->d()I

    move-result v9

    const/16 v11, 0xf

    if-ne v9, v11, :cond_10

    const/16 v2, 0xe

    check-cast v4, Lx1/p;

    invoke-virtual {v4}, Lx1/p;->B()I

    move-result v4

    neg-int v4, v4

    invoke-static {v4}, Lx1/p;->C(I)Lx1/p;

    move-result-object v4

    move-object v2, v4

    const/16 v8, 0xe

    goto :goto_9

    :cond_f
    check-cast v2, Lx1/a;

    invoke-virtual {v11}, Lw1/r;->L()Lw1/r;

    move-result-object v3

    :cond_10
    :goto_9
    invoke-static {v8, v1, v3, v2}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v1

    move-object v13, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_a

    :cond_11
    move-object v13, v9

    move-object v9, v3

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ln1/a;->v()Ln1/y;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ln1/a;->A()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual {v13}, Lw1/t;->a()Z

    move-result v2

    iget-boolean v3, v7, Ln1/v;->A:Z

    or-int/2addr v3, v2

    iput-boolean v3, v7, Ln1/v;->A:Z

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ln1/y;->size()I

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lw1/o;

    sget-object v1, Lw1/v;->s:Lw1/t;

    sget-object v2, Lw1/r;->a:Lw1/r;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v3, v2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    const/4 v1, 0x0

    iput v1, v7, Ln1/v;->x:I

    goto :goto_c

    :cond_12
    invoke-virtual {v1}, Ln1/y;->D()Lb2/j;

    move-result-object v0

    new-instance v1, Lw1/x;

    move-object v12, v1

    move-object v14, v6

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lw1/x;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lb2/j;)V

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    iput v0, v7, Ln1/v;->x:I

    :goto_b
    move-object v0, v1

    :goto_c
    move-object v3, v6

    const/4 v8, 0x1

    goto/16 :goto_11

    :cond_13
    const/4 v3, 0x0

    const/16 v1, 0x21

    if-ne v8, v1, :cond_16

    invoke-virtual {v11}, Lb2/f;->size()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object v2

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v7, Ln1/v;->t:Ljava/util/ArrayList;

    new-instance v8, Lw1/o;

    invoke-static {v2}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v11

    invoke-static {v0, v2}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v2

    invoke-direct {v8, v11, v6, v2, v1}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/q;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_d
    new-instance v1, Lw1/o;

    sget-object v2, Lw1/v;->s:Lw1/t;

    sget-object v4, Lw1/r;->a:Lw1/r;

    invoke-direct {v1, v2, v6, v3, v4}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    iput v0, v7, Ln1/v;->x:I

    invoke-virtual {v7, v13, v6}, Ln1/v;->W(Lw1/t;Lw1/w;)V

    iput-boolean v5, v7, Ln1/v;->w:Z

    goto :goto_b

    :cond_16
    if-eqz v9, :cond_19

    if-eqz v2, :cond_18

    invoke-virtual {v13}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_17

    iget-object v0, v7, Ln1/v;->u:Ly1/e;

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move-object v4, v11

    const/4 v8, 0x1

    move-object v5, v0

    move-object v0, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Ln1/v;->T(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)Lw1/h;

    move-result-object v1

    goto :goto_e

    :cond_17
    move-object v0, v6

    const/4 v8, 0x1

    new-instance v1, Lw1/y;

    iget-object v2, v7, Ln1/v;->u:Ly1/e;

    move-object v12, v1

    move-object v14, v0

    move-object v15, v11

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    :goto_e
    iput-boolean v8, v7, Ln1/v;->v:Z

    iget-object v2, v7, Ln1/v;->u:Ly1/e;

    invoke-interface {v2}, Ly1/e;->size()I

    move-result v2

    iput v2, v7, Ln1/v;->x:I

    goto :goto_f

    :cond_18
    move-object v0, v6

    const/4 v8, 0x1

    new-instance v1, Lw1/n;

    move-object v12, v1

    move-object v14, v0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    :goto_f
    move-object v3, v0

    :goto_10
    move-object v0, v1

    goto :goto_11

    :cond_19
    move-object v3, v6

    const/4 v8, 0x1

    if-eqz v2, :cond_1b

    new-instance v1, Lw1/z;

    iget-object v2, v7, Ln1/v;->u:Ly1/e;

    invoke-direct {v1, v13, v3, v11, v2}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    iput-boolean v8, v7, Ln1/v;->v:Z

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_1a

    const/4 v0, -0x1

    iput v0, v7, Ln1/v;->x:I

    goto :goto_10

    :cond_1a
    iget-object v0, v7, Ln1/v;->u:Ly1/e;

    invoke-interface {v0}, Ly1/e;->size()I

    move-result v0

    iput v0, v7, Ln1/v;->x:I

    goto :goto_10

    :cond_1b
    new-instance v0, Lw1/o;

    invoke-direct {v0, v13, v3, v15, v11}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    :goto_11
    iget-object v1, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_1c

    iget-object v0, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz v18, :cond_1d

    iget v0, v7, Ln1/v;->y:I

    add-int/2addr v0, v8

    iput v0, v7, Ln1/v;->y:I

    new-instance v0, Lw1/g;

    sget-object v13, Lw1/v;->Y2:Lw1/t;

    invoke-virtual {v10}, Lw1/h;->k()Lw1/q;

    move-result-object v1

    invoke-static {v1}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v15

    move-object v12, v0

    move-object v14, v3

    move-object/from16 v16, v18

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lw1/g;-><init>(Lw1/t;Lw1/w;Lw1/r;Ljava/util/ArrayList;Lx1/a;)V

    iget-object v1, v7, Ln1/v;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void

    :cond_1e
    move-object v3, v6

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v4, v7, Ln1/v;->o:Ln1/u;

    invoke-virtual {v4}, Ln1/u;->z()I

    move-result v4

    new-array v5, v2, [Lw1/q;

    :goto_12
    if-ge v0, v2, :cond_1f

    invoke-virtual {v11, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->C()Ly1/d;

    move-result-object v9

    invoke-virtual {v6, v4}, Lw1/q;->S(I)Lw1/q;

    move-result-object v10

    iget-object v12, v7, Ln1/v;->t:Ljava/util/ArrayList;

    new-instance v13, Lw1/o;

    invoke-static {v9}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v9

    invoke-direct {v13, v9, v3, v10, v6}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/q;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v10, v5, v0

    invoke-virtual {v6}, Lw1/q;->x()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Ln1/a;->x()I

    move-result v0

    :goto_13
    if-eqz v0, :cond_20

    and-int/lit8 v2, v0, 0xf

    sub-int/2addr v2, v8

    aget-object v2, v5, v2

    invoke-virtual {v2}, Lw1/q;->C()Ly1/d;

    move-result-object v4

    iget-object v6, v7, Ln1/v;->t:Ljava/util/ArrayList;

    new-instance v9, Lw1/o;

    invoke-static {v4}, Lw1/v;->A(Ly1/d;)Lw1/t;

    move-result-object v10

    invoke-virtual {v2, v1}, Lw1/q;->S(I)Lw1/q;

    move-result-object v11

    invoke-direct {v9, v10, v3, v11, v2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/q;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ly1/d;->getType()Ly1/c;

    move-result-object v2

    invoke-virtual {v2}, Ly1/c;->n()I

    move-result v2

    add-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x4

    goto :goto_13

    :cond_20
    return-void
.end method
