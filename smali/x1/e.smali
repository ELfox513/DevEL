.class public abstract Lx1/e;
.super Lx1/x;
.source "SourceFile"


# instance fields
.field public final d:Ly1/a;

.field public k:Ly1/a;


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/a0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/x;-><init>(Lx1/e0;Lx1/a0;)V

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/a0;->n()Lx1/d0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lx1/e;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ly1/a;->f(Ljava/lang/String;)Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lx1/e;->d:Ly1/a;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ly1/a;->p(Ljava/lang/String;)Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lx1/e;->d:Ly1/a;

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lx1/e;->k:Ly1/a;

    return-void
.end method


# virtual methods
.method public final A(Z)Ly1/a;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx1/e;->d:Ly1/a;

    return-object p1

    :cond_0
    iget-object p1, p0, Lx1/e;->k:Ly1/a;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/e0;->x()Ly1/c;

    move-result-object p1

    iget-object v0, p0, Lx1/e;->d:Ly1/a;

    invoke-virtual {v0, p1}, Ly1/a;->A(Ly1/c;)Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lx1/e;->k:Ly1/a;

    :cond_1
    iget-object p1, p0, Lx1/e;->k:Ly1/a;

    return-object p1
.end method

.method public final B()Z
    .locals 1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->z()Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->A()Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 5

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object v0

    sget-object v1, Lx1/e0;->G:Lx1/e0;

    invoke-virtual {v0, v1}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "invoke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "invokeExact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    return v3

    :cond_1
    sget-object v1, Lx1/e0;->H:Lx1/e0;

    invoke-virtual {v0, v1}, Lx1/e0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "weakCompareAndSetRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "getAndSetAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "compareAndExchange"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "getAndBitwiseOr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "getAndBitwiseXorAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "getAndAddAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "compareAndExchangeAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "getOpaque"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "setOpaque"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "getAndBitwiseAndAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "getAndSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "getAndAdd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "getVolatile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "setVolatile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "getAndBitwiseOrAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "set"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "get"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "getAndSetRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "getAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "setRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "weakCompareAndSetAcquire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "weakCompareAndSetPlain"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "getAndBitwiseXorRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "getAndBitwiseXor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_18
    const-string v4, "getAndBitwiseAnd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_19
    const-string v4, "getAndAddRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1a
    const-string v4, "weakCompareAndSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1b
    const-string v4, "compareAndExchangeRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1c
    const-string v4, "compareAndSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1d
    const-string v4, "getAndBitwiseAndRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1e
    const-string v4, "getAndBitwiseOrRelease"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v3

    :cond_21
    :goto_1
    return v2

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lx1/a;)I
    .locals 1

    invoke-super {p0, p1}, Lx1/x;->d(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lx1/e;

    iget-object v0, p0, Lx1/e;->d:Ly1/a;

    iget-object p1, p1, Lx1/e;->d:Ly1/a;

    invoke-virtual {v0, p1}, Ly1/a;->d(Ly1/a;)I

    move-result p1

    return p1
.end method

.method public final getType()Ly1/c;
    .locals 1

    iget-object v0, p0, Lx1/e;->d:Ly1/a;

    invoke-virtual {v0}, Ly1/a;->n()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public final x(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lx1/e;->A(Z)Ly1/a;

    move-result-object p1

    invoke-virtual {p1}, Ly1/a;->l()Ly1/b;

    move-result-object p1

    invoke-virtual {p1}, Ly1/b;->B()I

    move-result p1

    return p1
.end method

.method public final z()Ly1/a;
    .locals 1

    iget-object v0, p0, Lx1/e;->d:Ly1/a;

    return-object v0
.end method
