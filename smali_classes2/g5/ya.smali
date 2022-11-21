.class public final Lg5/ya;
.super Lg5/xa;
.source "SourceFile"


# instance fields
.field public final g:Lb5/m3;

.field public final synthetic h:Lg5/za;


# direct methods
.method public constructor <init>(Lg5/za;Ljava/lang/String;ILb5/m3;)V
    .locals 0

    iput-object p1, p0, Lg5/ya;->h:Lg5/za;

    invoke-direct {p0, p2, p3}, Lg5/xa;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lg5/ya;->g:Lb5/m3;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {v0}, Lb5/m3;->s()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Ljava/lang/Long;Ljava/lang/Long;Lb5/d5;Z)Z
    .locals 10

    invoke-static {}, Lb5/id;->b()Z

    iget-object v0, p0, Lg5/ya;->h:Lg5/za;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    iget-object v1, p0, Lg5/xa;->a:Ljava/lang/String;

    sget-object v2, Lg5/c3;->Y:Lg5/b3;

    invoke-virtual {v0, v1, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    iget-object v1, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {v1}, Lb5/m3;->z()Z

    move-result v1

    iget-object v2, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {v2}, Lb5/m3;->A()Z

    move-result v2

    iget-object v3, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {v3}, Lb5/m3;->B()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_3

    if-nez v1, :cond_3

    iget-object p1, p0, Lg5/ya;->h:Lg5/za;

    iget-object p1, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->q()Lg5/o3;

    move-result-object p1

    iget p2, p0, Lg5/xa;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p3}, Lb5/m3;->C()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p3}, Lb5/m3;->s()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, p3, p2, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_3
    iget-object v6, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {v6}, Lb5/m3;->t()Lb5/f3;

    move-result-object v6

    invoke-virtual {v6}, Lb5/f3;->z()Z

    move-result v7

    invoke-virtual {p3}, Lb5/d5;->J()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lb5/f3;->B()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->r()Lg5/o3;

    move-result-object v6

    iget-object v7, p0, Lg5/ya;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    invoke-virtual {v6, v8, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p3}, Lb5/d5;->t()J

    move-result-wide v8

    invoke-virtual {v6}, Lb5/f3;->u()Lb5/k3;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lg5/xa;->h(JLb5/k3;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v7}, Lg5/xa;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p3}, Lb5/d5;->I()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lb5/f3;->B()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->r()Lg5/o3;

    move-result-object v6

    iget-object v7, p0, Lg5/ya;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    invoke-virtual {v6, v8, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p3}, Lb5/d5;->s()D

    move-result-wide v8

    invoke-virtual {v6}, Lb5/f3;->u()Lb5/k3;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lg5/xa;->g(DLb5/k3;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v7}, Lg5/xa;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p3}, Lb5/d5;->L()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Lb5/f3;->D()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v6}, Lb5/f3;->B()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->r()Lg5/o3;

    move-result-object v6

    iget-object v7, p0, Lg5/ya;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    invoke-virtual {v6, v8, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p3}, Lb5/d5;->z()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lg5/da;->M(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p3}, Lb5/d5;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lb5/f3;->u()Lb5/k3;

    move-result-object v6

    invoke-static {v2, v6}, Lg5/xa;->i(Ljava/lang/String;Lb5/k3;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v7}, Lg5/xa;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->r()Lg5/o3;

    move-result-object v6

    iget-object v7, p0, Lg5/ya;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->z()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v6, v9, v7, v8}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p3}, Lb5/d5;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lb5/f3;->v()Lb5/r3;

    move-result-object v6

    iget-object v8, p0, Lg5/ya;->h:Lg5/za;

    iget-object v8, v8, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->F()Lg5/q3;

    move-result-object v8

    invoke-static {v2, v6, v8}, Lg5/xa;->f(Ljava/lang/String;Lb5/r3;Lg5/q3;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v7}, Lg5/xa;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_b
    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->r()Lg5/o3;

    move-result-object v6

    iget-object v7, p0, Lg5/ya;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {p3}, Lb5/d5;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    invoke-virtual {v6, v8, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    iget-object v6, p0, Lg5/ya;->h:Lg5/za;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->q()Lg5/o3;

    move-result-object v6

    if-nez v2, :cond_c

    const-string v7, "null"

    goto :goto_3

    :cond_c
    move-object v7, v2

    :goto_3
    const-string v8, "Property filter result"

    invoke-virtual {v6, v8, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_d

    return v4

    :cond_d
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lg5/xa;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    return v5

    :cond_f
    :goto_4
    if-eqz p4, :cond_10

    iget-object p4, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p4}, Lb5/m3;->z()Z

    move-result p4

    if-eqz p4, :cond_11

    :cond_10
    iput-object v2, p0, Lg5/xa;->d:Ljava/lang/Boolean;

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {p3}, Lb5/d5;->K()Z

    move-result p4

    if-eqz p4, :cond_15

    invoke-virtual {p3}, Lb5/d5;->u()J

    move-result-wide p3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_12
    if-eqz v0, :cond_13

    iget-object p1, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p1}, Lb5/m3;->z()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p1}, Lb5/m3;->A()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_13
    iget-object p1, p0, Lg5/ya;->g:Lb5/m3;

    invoke-virtual {p1}, Lb5/m3;->A()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lg5/xa;->f:Ljava/lang/Long;

    goto :goto_5

    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lg5/xa;->e:Ljava/lang/Long;

    :cond_15
    :goto_5
    return v5
.end method
