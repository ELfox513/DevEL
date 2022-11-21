.class public final Lz4/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lz4/h0<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lz4/f0;


# instance fields
.field public final a:Lz4/i2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/i2<",
            "TFieldDescriptorType;",
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

    new-instance v0, Lz4/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz4/f0;-><init>(Z)V

    sput-object v0, Lz4/f0;->d:Lz4/f0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz4/f0;->c:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lz4/i2;->f(I)Lz4/i2;

    move-result-object v0

    iput-object v0, p0, Lz4/f0;->a:Lz4/i2;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz4/f0;->c:Z

    invoke-static {p1}, Lz4/i2;->f(I)Lz4/i2;

    move-result-object p1

    iput-object p1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {p0}, Lz4/f0;->m()V

    return-void
.end method

.method public static e(Lz4/l3;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lz4/x;->q(I)I

    move-result p1

    sget-object v0, Lz4/l3;->w:Lz4/l3;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lz4/r1;

    invoke-static {v0}, Lz4/o0;->i(Lz4/r1;)Z

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p0, p2}, Lz4/f0;->k(Lz4/l3;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static i(Lz4/l3;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lz4/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz4/g0;->a:[I

    invoke-virtual {p0}, Lz4/l3;->c()Lz4/q3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, p1, Lz4/r1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lz4/u0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lz4/p0;

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_2
    instance-of p0, p1, Lz4/i;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2

    nop

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

.method public static j(Lz4/h0;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/h0<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lz4/h0;->G()Lz4/l3;

    move-result-object v0

    invoke-interface {p0}, Lz4/h0;->g()I

    move-result v1

    invoke-interface {p0}, Lz4/h0;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lz4/h0;->m()Z

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

    invoke-static {v0, p1}, Lz4/f0;->k(Lz4/l3;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lz4/x;->q(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lz4/x;->y(I)I

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

    invoke-static {v0, v1, p1}, Lz4/f0;->e(Lz4/l3;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lz4/f0;->e(Lz4/l3;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static k(Lz4/l3;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lz4/g0;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lz4/p0;

    if-eqz p0, :cond_0

    check-cast p1, Lz4/p0;

    invoke-interface {p1}, Lz4/p0;->g()I

    move-result p0

    invoke-static {p0}, Lz4/x;->w(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->w(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->y0(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->t(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->A0(J)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->v(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->s(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lz4/i;

    if-eqz p0, :cond_1

    check-cast p1, Lz4/i;

    invoke-static {p1}, Lz4/x;->H(Lz4/i;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lz4/x;->S([B)I

    move-result p0

    return p0

    :pswitch_7
    instance-of p0, p1, Lz4/i;

    if-eqz p0, :cond_2

    check-cast p1, Lz4/i;

    invoke-static {p1}, Lz4/x;->H(Lz4/i;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lz4/x;->t0(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    instance-of p0, p1, Lz4/u0;

    if-eqz p0, :cond_3

    check-cast p1, Lz4/u0;

    invoke-static {p1}, Lz4/x;->c(Lz4/y0;)I

    move-result p0

    return p0

    :cond_3
    check-cast p1, Lz4/r1;

    invoke-static {p1}, Lz4/x;->R(Lz4/r1;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lz4/r1;

    invoke-static {p1}, Lz4/x;->c0(Lz4/r1;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lz4/x;->d0(Z)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->u(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->z0(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lz4/x;->r(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->x0(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->w0(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lz4/x;->A(F)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lz4/x;->z(D)I

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

.method public static l(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/h0;

    invoke-interface {v0}, Lz4/h0;->q()Lz4/q3;

    move-result-object v1

    sget-object v2, Lz4/q3;->u:Lz4/q3;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lz4/h0;->s()Z

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

    check-cast v0, Lz4/r1;

    invoke-interface {v0}, Lz4/t1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lz4/r1;

    if-eqz v0, :cond_2

    check-cast p0, Lz4/r1;

    invoke-interface {p0}, Lz4/t1;->a()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lz4/u0;

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

.method public static o()Lz4/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lz4/h0<",
            "TT;>;>()",
            "Lz4/f0<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lz4/f0;->d:Lz4/f0;

    return-object v0
.end method

.method public static q(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/h0;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lz4/h0;->q()Lz4/q3;

    move-result-object v2

    sget-object v3, Lz4/q3;->u:Lz4/q3;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lz4/h0;->s()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lz4/h0;->m()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lz4/u0;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/h0;

    invoke-interface {p0}, Lz4/h0;->g()I

    move-result p0

    check-cast v1, Lz4/u0;

    invoke-static {p0, v1}, Lz4/x;->E(ILz4/y0;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/h0;

    invoke-interface {p0}, Lz4/h0;->g()I

    move-result p0

    check-cast v1, Lz4/r1;

    invoke-static {p0, v1}, Lz4/x;->F(ILz4/r1;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v0, v1}, Lz4/f0;->j(Lz4/h0;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lz4/x1;

    if-eqz v0, :cond_0

    check-cast p0, Lz4/x1;

    invoke-interface {p0}, Lz4/x1;->R()Lz4/x1;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/f0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lz4/x0;

    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->o()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lz4/x0;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0}, Lz4/i2;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lz4/f0;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2}, Lz4/i2;->m()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2, v1}, Lz4/i2;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lz4/f0;->l(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->n()Ljava/lang/Iterable;

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

    invoke-static {v2}, Lz4/f0;->l(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lz4/f0;

    invoke-direct {v0}, Lz4/f0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2}, Lz4/i2;->m()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2, v1}, Lz4/i2;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz4/h0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lz4/f0;->h(Lz4/h0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->n()Ljava/lang/Iterable;

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

    check-cast v3, Lz4/h0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lz4/f0;->h(Lz4/h0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lz4/f0;->c:Z

    iput-boolean v1, v0, Lz4/f0;->c:Z

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/f0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lz4/x0;

    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lz4/x0;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0}, Lz4/i2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lz4/f0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lz4/f0;

    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    iget-object p1, p1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0, p1}, Lz4/i2;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lz4/h0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0, p1}, Lz4/i2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lz4/u0;

    if-eqz v0, :cond_0

    invoke-static {}, Lz4/u0;->e()Lz4/r1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final g(Lz4/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/f0<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1}, Lz4/i2;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1, v0}, Lz4/i2;->g(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lz4/f0;->n(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {p1}, Lz4/i2;->n()Ljava/lang/Iterable;

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

    invoke-virtual {p0, v0}, Lz4/f0;->n(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final h(Lz4/h0;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lz4/h0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lz4/h0;->G()Lz4/l3;

    move-result-object v3

    invoke-static {v3, v2}, Lz4/f0;->i(Lz4/l3;Ljava/lang/Object;)V

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
    invoke-interface {p1}, Lz4/h0;->G()Lz4/l3;

    move-result-object v0

    invoke-static {v0, p2}, Lz4/f0;->i(Lz4/l3;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lz4/u0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/f0;->c:Z

    :cond_3
    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0, p1, p2}, Lz4/i2;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0}, Lz4/i2;->hashCode()I

    move-result v0

    return v0
.end method

.method public final m()V
    .locals 1

    iget-boolean v0, p0, Lz4/f0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0}, Lz4/i2;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/f0;->b:Z

    return-void
.end method

.method public final n(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/h0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lz4/u0;

    if-eqz v1, :cond_0

    invoke-static {}, Lz4/u0;->e()Lz4/r1;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lz4/h0;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lz4/f0;->f(Lz4/h0;)Ljava/lang/Object;

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

    invoke-static {v2}, Lz4/f0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {p1, v0, v1}, Lz4/i2;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-interface {v0}, Lz4/h0;->q()Lz4/q3;

    move-result-object v1

    sget-object v2, Lz4/q3;->u:Lz4/q3;

    if-ne v1, v2, :cond_6

    invoke-virtual {p0, v0}, Lz4/f0;->f(Lz4/h0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-static {p1}, Lz4/f0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lz4/i2;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v2, v1, Lz4/x1;

    if-eqz v2, :cond_5

    check-cast v1, Lz4/x1;

    check-cast p1, Lz4/x1;

    invoke-interface {v0, v1, p1}, Lz4/h0;->t(Lz4/x1;Lz4/x1;)Lz4/x1;

    move-result-object p1

    goto :goto_1

    :cond_5
    check-cast v1, Lz4/r1;

    invoke-interface {v1}, Lz4/r1;->i()Lz4/s1;

    move-result-object v1

    check-cast p1, Lz4/r1;

    invoke-interface {v0, v1, p1}, Lz4/h0;->o(Lz4/s1;Lz4/r1;)Lz4/s1;

    move-result-object p1

    invoke-interface {p1}, Lz4/s1;->k()Lz4/r1;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v1, v0, p1}, Lz4/i2;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    iget-object v1, p0, Lz4/f0;->a:Lz4/i2;

    invoke-static {p1}, Lz4/f0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lz4/i2;->c(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2}, Lz4/i2;->m()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v2, v0}, Lz4/i2;->g(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lz4/f0;->q(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz4/f0;->a:Lz4/i2;

    invoke-virtual {v0}, Lz4/i2;->n()Ljava/lang/Iterable;

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

    invoke-static {v2}, Lz4/f0;->q(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method
