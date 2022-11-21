.class public Lw1/j;
.super Lw1/h;
.source "SourceFile"


# static fields
.field public static final t:Lx1/d0;

.field public static final u:Lx1/d0;

.field public static final v:Lx1/d0;


# instance fields
.field public final p:Ly1/e;

.field public final q:Lx1/z;

.field public final r:Lx1/z;

.field public final s:Lx1/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/d0;

    const-string v1, "([Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw1/j;->t:Lx1/d0;

    new-instance v0, Lx1/d0;

    const-string v1, "([Ljava/lang/Object;)V"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw1/j;->u:Lx1/d0;

    new-instance v0, Lx1/d0;

    const-string v1, "([Ljava/lang/Object;)Z"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw1/j;->v:Lx1/d0;

    return-void
.end method

.method public constructor <init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    if-eqz p4, :cond_2

    iput-object p4, p0, Lw1/j;->p:Ly1/e;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lx1/e;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p5, p0, Lw1/j;->q:Lx1/z;

    invoke-static {p5}, Lw1/j;->y(Lx1/z;)Lx1/z;

    move-result-object p1

    iput-object p1, p0, Lw1/j;->r:Lx1/z;

    invoke-static {p5}, Lw1/j;->x(Lx1/z;)Lx1/b0;

    move-result-object p1

    iput-object p1, p0, Lw1/j;->s:Lx1/b0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callSiteMethod is not signature polymorphic"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSiteMethod == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opcode with invalid branchingness: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static x(Lx1/z;)Lx1/b0;
    .locals 2

    new-instance v0, Lx1/b0;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lx1/e;->A(Z)Ly1/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lx1/b0;-><init>(Ly1/a;)V

    return-object v0
.end method

.method public static y(Lx1/z;)Lx1/z;
    .locals 5

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object v0

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v1

    invoke-virtual {v1}, Lx1/a0;->x()Lx1/d0;

    move-result-object v1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v2

    invoke-virtual {v2}, Lx1/a0;->x()Lx1/d0;

    move-result-object v2

    invoke-virtual {v2}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lx1/e0;->G:Lx1/e0;

    invoke-virtual {v0, v3}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "invoke"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "invokeExact"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance p0, Lx1/a0;

    sget-object v2, Lw1/j;->t:Lx1/d0;

    invoke-direct {p0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    new-instance v1, Lx1/z;

    invoke-direct {v1, v0, p0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    return-object v1

    :cond_1
    sget-object v3, Lx1/e0;->H:Lx1/e0;

    invoke-virtual {v0, v3}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "weakCompareAndSetRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "getAndSetAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "compareAndExchange"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "getAndBitwiseOr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "getAndBitwiseXorAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "getAndAddAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "compareAndExchangeAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "getOpaque"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "setOpaque"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "getAndBitwiseAndAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "getAndSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "getAndAdd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "getVolatile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "setVolatile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "getAndBitwiseOrAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "get"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "getAndSetRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "getAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "setRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "weakCompareAndSetAcquire"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "weakCompareAndSetPlain"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "getAndBitwiseXorRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "getAndBitwiseXor"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_18
    const-string v4, "getAndBitwiseAnd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_19
    const-string v4, "getAndAddRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v4, "weakCompareAndSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v4, "compareAndExchangeRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v4, "compareAndSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v4, "getAndBitwiseAndRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v4, "getAndBitwiseOrRelease"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_0

    :cond_20
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p0, Lx1/a0;

    sget-object v2, Lw1/j;->u:Lx1/d0;

    invoke-direct {p0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    new-instance v1, Lx1/z;

    invoke-direct {v1, v0, p0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    return-object v1

    :pswitch_1
    new-instance p0, Lx1/a0;

    sget-object v2, Lw1/j;->v:Lx1/d0;

    invoke-direct {p0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    new-instance v1, Lx1/z;

    invoke-direct {v1, v0, p0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    return-object v1

    :pswitch_2
    new-instance p0, Lx1/a0;

    sget-object v2, Lw1/j;->t:Lx1/d0;

    invoke-direct {p0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    new-instance v1, Lx1/z;

    invoke-direct {v1, v0, p0}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    return-object v1

    :cond_21
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature polymorphic method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74054ecc -> :sswitch_1e
        -0x64896c60 -> :sswitch_1d
        -0x639aefb0 -> :sswitch_1c
        -0x4d038cae -> :sswitch_1b
        -0x42a27c48 -> :sswitch_1a
        -0x41bf8e59 -> :sswitch_19
        -0x3d910599 -> :sswitch_18
        -0x3d90af15 -> :sswitch_17
        -0x2f5b5f64 -> :sswitch_16
        -0x21ce070e -> :sswitch_15
        -0xe5aaa02 -> :sswitch_14
        -0xdc04ebb -> :sswitch_13
        -0x7976360 -> :sswitch_12
        -0x23e5d3a -> :sswitch_11
        0x18f56 -> :sswitch_10
        0x1bc62 -> :sswitch_f
        0x594ea03 -> :sswitch_e
        0x6099c1e -> :sswitch_d
        0xb513b12 -> :sswitch_c
        0x10d9c640 -> :sswitch_b
        0x10da0a01 -> :sswitch_a
        0x1510cc6f -> :sswitch_9
        0x1c0e5b23 -> :sswitch_8
        0x28d92717 -> :sswitch_7
        0x2c96ac21 -> :sswitch_6
        0x37daaa76 -> :sswitch_5
        0x4a3ed96b -> :sswitch_4
        0x50983b53 -> :sswitch_3
        0x58737ef5 -> :sswitch_2
        0x775bdb95 -> :sswitch_1
        0x780b1d2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lw1/h$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lw1/h$b;->visitInvokePolymorphicInsn(Lw1/j;)V

    return-void
.end method

.method public e()Ly1/e;
    .locals 1

    iget-object v0, p0, Lw1/j;->p:Ly1/e;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lw1/j;->w()Lx1/z;

    move-result-object v1

    invoke-virtual {v1}, Lx1/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/j;->u()Lx1/b0;

    move-result-object v2

    invoke-virtual {v2}, Lx1/b0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/j;->p:Ly1/e;

    invoke-static {v1}, Lw1/z;->t(Ly1/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ly1/c;)Lw1/h;
    .locals 7

    new-instance v6, Lw1/j;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    invoke-virtual {p0}, Lw1/h;->m()Lw1/r;

    move-result-object v3

    iget-object v0, p0, Lw1/j;->p:Ly1/e;

    invoke-interface {v0, p1}, Ly1/e;->d(Ly1/c;)Ly1/e;

    move-result-object v4

    invoke-virtual {p0}, Lw1/j;->t()Lx1/z;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw1/j;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/z;)V

    return-object v6
.end method

.method public r(Lw1/q;Lw1/r;)Lw1/h;
    .locals 6

    new-instance p1, Lw1/j;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    iget-object v4, p0, Lw1/j;->p:Ly1/e;

    invoke-virtual {p0}, Lw1/j;->t()Lx1/z;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lw1/j;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/z;)V

    return-object p1
.end method

.method public t()Lx1/z;
    .locals 1

    iget-object v0, p0, Lw1/j;->q:Lx1/z;

    return-object v0
.end method

.method public u()Lx1/b0;
    .locals 1

    iget-object v0, p0, Lw1/j;->s:Lx1/b0;

    return-object v0
.end method

.method public w()Lx1/z;
    .locals 1

    iget-object v0, p0, Lw1/j;->r:Lx1/z;

    return-object v0
.end method
