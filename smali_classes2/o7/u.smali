.class public final Lo7/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo7/u$b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lo7/u;


# instance fields
.field public final a:Lo7/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/k1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo7/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo7/u;-><init>(Z)V

    sput-object v0, Lo7/u;->d:Lo7/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    invoke-static {v0}, Lo7/k1;->q(I)Lo7/k1;

    move-result-object v0

    iput-object v0, p0, Lo7/u;->a:Lo7/k1;

    return-void
.end method

.method public constructor <init>(Lo7/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/k1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {p0}, Lo7/u;->t()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lo7/k1;->q(I)Lo7/k1;

    move-result-object p1

    invoke-direct {p0, p1}, Lo7/u;-><init>(Lo7/k1;)V

    invoke-virtual {p0}, Lo7/u;->t()V

    return-void
.end method

.method public static A(Lo7/k;Lo7/u1$b;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lo7/u$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of p1, p2, Lo7/a0$c;

    if-eqz p1, :cond_0

    check-cast p2, Lo7/a0$c;

    invoke-interface {p2}, Lo7/a0$c;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->q0(I)V

    goto/16 :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->q0(I)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->Q0(J)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->O0(I)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->M0(J)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->K0(I)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->V0(I)V

    goto/16 :goto_0

    :pswitch_6
    instance-of p1, p2, Lo7/h;

    if-eqz p1, :cond_1

    check-cast p2, Lo7/h;

    invoke-virtual {p0, p2}, Lo7/k;->m0(Lo7/h;)V

    goto/16 :goto_0

    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lo7/k;->j0([B)V

    goto/16 :goto_0

    :pswitch_7
    instance-of p1, p2, Lo7/h;

    if-eqz p1, :cond_2

    check-cast p2, Lo7/h;

    invoke-virtual {p0, p2}, Lo7/k;->m0(Lo7/h;)V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lo7/k;->S0(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Lo7/s0;

    invoke-virtual {p0, p2}, Lo7/k;->G0(Lo7/s0;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lo7/s0;

    invoke-virtual {p0, p2}, Lo7/k;->z0(Lo7/s0;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->i0(Z)V

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->s0(I)V

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->u0(J)V

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->C0(I)V

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->X0(J)V

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->E0(J)V

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lo7/k;->w0(F)V

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lo7/k;->o0(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static d(Lo7/u1$b;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lo7/k;->U(I)I

    move-result p1

    sget-object v0, Lo7/u1$b;->w:Lo7/u1$b;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lo7/u;->e(Lo7/u1$b;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(Lo7/u1$b;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lo7/u$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lo7/a0$c;

    if-eqz p0, :cond_0

    check-cast p1, Lo7/a0$c;

    invoke-interface {p1}, Lo7/a0$c;->e()I

    move-result p0

    invoke-static {p0}, Lo7/k;->l(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->l(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->R(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->P(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->N(J)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->L(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->W(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lo7/h;

    if-eqz p0, :cond_1

    check-cast p1, Lo7/h;

    invoke-static {p1}, Lo7/k;->h(Lo7/h;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lo7/k;->f([B)I

    move-result p0

    return p0

    :pswitch_7
    instance-of p0, p1, Lo7/h;

    if-eqz p0, :cond_2

    check-cast p1, Lo7/h;

    invoke-static {p1}, Lo7/k;->h(Lo7/h;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lo7/k;->T(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    instance-of p0, p1, Lo7/e0;

    if-eqz p0, :cond_3

    check-cast p1, Lo7/e0;

    invoke-static {p1}, Lo7/k;->B(Lo7/f0;)I

    move-result p0

    return p0

    :cond_3
    check-cast p1, Lo7/s0;

    invoke-static {p1}, Lo7/k;->G(Lo7/s0;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lo7/s0;

    invoke-static {p1}, Lo7/k;->t(Lo7/s0;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lo7/k;->e(Z)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->n(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->p(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lo7/k;->w(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->Y(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->y(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lo7/k;->r(F)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lo7/k;->j(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

.method public static f(Lo7/u$b;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lo7/u$b;->k()Lo7/u1$b;

    move-result-object v0

    invoke-interface {p0}, Lo7/u$b;->e()I

    move-result v1

    invoke-interface {p0}, Lo7/u$b;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lo7/u$b;->y()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo7/u;->e(Lo7/u1$b;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lo7/k;->U(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lo7/k;->J(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lo7/u;->d(Lo7/u1$b;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lo7/u;->d(Lo7/u1$b;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h()Lo7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo7/u$b<",
            "TT;>;>()",
            "Lo7/u<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo7/u;->d:Lo7/u;

    return-object v0
.end method

.method public static m(Lo7/u1$b;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lo7/u1$b;->d()I

    move-result p0

    return p0
.end method

.method public static q(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo7/u$b<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/u$b;

    invoke-interface {v0}, Lo7/u$b;->w()Lo7/u1$c;

    move-result-object v1

    sget-object v2, Lo7/u1$c;->u:Lo7/u1$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lo7/u$b;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/s0;

    invoke-interface {v0}, Lo7/t0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lo7/s0;

    if-eqz v0, :cond_2

    check-cast p0, Lo7/s0;

    invoke-interface {p0}, Lo7/t0;->a()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lo7/e0;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static r(Lo7/u1$b;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Lo7/a0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo7/u$a;->a:[I

    invoke-virtual {p0}, Lo7/u1$b;->c()Lo7/u1$c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of p0, p1, Lo7/s0;

    if-nez p0, :cond_1

    instance-of p0, p1, Lo7/e0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lo7/a0$c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0

    :pswitch_2
    instance-of p0, p1, Lo7/h;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    return v0

    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static w()Lo7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo7/u$b<",
            "TT;>;>()",
            "Lo7/u<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo7/u;

    invoke-direct {v0}, Lo7/u;-><init>()V

    return-object v0
.end method

.method public static z(Lo7/k;Lo7/u1$b;ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lo7/u1$b;->w:Lo7/u1$b;

    if-ne p1, v0, :cond_0

    check-cast p3, Lo7/s0;

    invoke-virtual {p0, p2, p3}, Lo7/k;->x0(ILo7/s0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo7/u;->m(Lo7/u1$b;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lo7/k;->T0(II)V

    invoke-static {p0, p1, p3}, Lo7/u;->A(Lo7/k;Lo7/u1$b;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lo7/u$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lo7/u$b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo7/u$b;->k()Lo7/u1$b;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo7/u;->y(Lo7/u1$b;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lo7/u;->i(Lo7/u$b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1, p1, v0}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lo7/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/u<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lo7/u;->w()Lo7/u;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2}, Lo7/k1;->k()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2, v1}, Lo7/k1;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo7/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1}, Lo7/k1;->m()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo7/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo7/u;->x(Lo7/u$b;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lo7/u;->c:Z

    iput-boolean v1, v0, Lo7/u;->c:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo7/u;->b()Lo7/u;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo7/u;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lo7/u;

    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    iget-object p1, p1, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0, p1}, Lo7/k1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lo7/u;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo7/e0$c;

    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1}, Lo7/k1;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo7/e0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Lo7/u$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0, p1}, Lo7/k1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lo7/e0;

    if-eqz v0, :cond_0

    check-cast p1, Lo7/e0;

    invoke-virtual {p1}, Lo7/e0;->f()Lo7/s0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public j()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2}, Lo7/k1;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2, v0}, Lo7/k1;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo7/u;->k(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p0, v2}, Lo7/u;->k(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final k(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/u$b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lo7/u$b;->w()Lo7/u1$c;

    move-result-object v2

    sget-object v3, Lo7/u1$c;->u:Lo7/u1$c;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lo7/u$b;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lo7/u$b;->y()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lo7/e0;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/u$b;

    invoke-interface {p1}, Lo7/u$b;->e()I

    move-result p1

    check-cast v1, Lo7/e0;

    invoke-static {p1, v1}, Lo7/k;->z(ILo7/f0;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/u$b;

    invoke-interface {p1}, Lo7/u$b;->e()I

    move-result p1

    check-cast v1, Lo7/s0;

    invoke-static {p1, v1}, Lo7/k;->D(ILo7/s0;)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v0, v1}, Lo7/u;->f(Lo7/u$b;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public l()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2}, Lo7/k1;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2, v0}, Lo7/k1;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo7/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo7/u;->f(Lo7/u$b;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo7/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo7/u;->f(Lo7/u$b;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lo7/u;->b:Z

    return v0
.end method

.method public p()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2}, Lo7/k1;->k()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v2, v1}, Lo7/k1;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lo7/u;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1}, Lo7/k1;->m()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lo7/u;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public s()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lo7/u;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo7/e0$c;

    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1}, Lo7/k1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo7/e0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 1

    iget-boolean v0, p0, Lo7/u;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0}, Lo7/k1;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo7/u;->b:Z

    return-void
.end method

.method public u(Lo7/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/u<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1}, Lo7/k1;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1, v0}, Lo7/k1;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo7/u;->v(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo7/u;->a:Lo7/k1;

    invoke-virtual {p1}, Lo7/k1;->m()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lo7/u;->v(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final v(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/u$b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lo7/e0;

    if-eqz v1, :cond_0

    check-cast p1, Lo7/e0;

    invoke-virtual {p1}, Lo7/e0;->f()Lo7/s0;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lo7/u$b;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lo7/u;->i(Lo7/u$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lo7/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {p1, v0, v1}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lo7/u$b;->w()Lo7/u1$c;

    move-result-object v1

    sget-object v2, Lo7/u1$c;->u:Lo7/u1$c;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lo7/u;->i(Lo7/u$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-static {p1}, Lo7/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    check-cast v1, Lo7/s0;

    invoke-interface {v1}, Lo7/s0;->f()Lo7/s0$a;

    move-result-object v1

    check-cast p1, Lo7/s0;

    invoke-interface {v0, v1, p1}, Lo7/u$b;->r(Lo7/s0$a;Lo7/s0;)Lo7/s0$a;

    move-result-object p1

    invoke-interface {p1}, Lo7/s0$a;->build()Lo7/s0;

    move-result-object p1

    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v1, v0, p1}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lo7/u;->a:Lo7/k1;

    invoke-static {p1}, Lo7/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public x(Lo7/u$b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lo7/u$b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lo7/u$b;->k()Lo7/u1$b;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lo7/u;->y(Lo7/u1$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lo7/u$b;->k()Lo7/u1$b;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo7/u;->y(Lo7/u1$b;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lo7/e0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo7/u;->c:Z

    :cond_3
    iget-object v0, p0, Lo7/u;->a:Lo7/k1;

    invoke-virtual {v0, p1, p2}, Lo7/k1;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final y(Lo7/u1$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lo7/u;->r(Lo7/u1$b;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
