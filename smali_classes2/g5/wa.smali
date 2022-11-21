.class public final Lg5/wa;
.super Lg5/xa;
.source "SourceFile"


# instance fields
.field public final g:Lb5/d3;

.field public final synthetic h:Lg5/za;


# direct methods
.method public constructor <init>(Lg5/za;Ljava/lang/String;ILb5/d3;)V
    .locals 0

    iput-object p1, p0, Lg5/wa;->h:Lg5/za;

    invoke-direct {p0, p2, p3}, Lg5/xa;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lg5/wa;->g:Lb5/d3;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v0}, Lb5/d3;->t()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v0}, Lb5/d3;->G()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k(Ljava/lang/Long;Ljava/lang/Long;Lb5/j4;JLg5/q;Z)Z
    .locals 15

    move-object v0, p0

    invoke-static {}, Lb5/id;->b()Z

    iget-object v1, v0, Lg5/wa;->h:Lg5/za;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    iget-object v2, v0, Lg5/xa;->a:Ljava/lang/String;

    sget-object v3, Lg5/c3;->a0:Lg5/b3;

    invoke-virtual {v1, v2, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    iget-object v2, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v2}, Lb5/d3;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p6

    iget-wide v2, v2, Lg5/q;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p4

    :goto_0
    iget-object v4, v0, Lg5/wa;->h:Lg5/za;

    iget-object v4, v4, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->x()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lg5/wa;->h:Lg5/za;

    iget-object v4, v4, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    iget v6, v0, Lg5/xa;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v7}, Lb5/d3;->H()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v7}, Lb5/d3;->t()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    iget-object v8, v0, Lg5/wa;->h:Lg5/za;

    iget-object v8, v8, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->y()Lg5/l3;

    move-result-object v8

    iget-object v9, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v9}, Lb5/d3;->z()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, event"

    invoke-virtual {v4, v9, v6, v7, v8}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, Lg5/wa;->h:Lg5/za;

    iget-object v4, v4, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    iget-object v6, v0, Lg5/wa;->h:Lg5/za;

    iget-object v6, v6, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v6}, Lg5/ba;->f0()Lg5/da;

    move-result-object v6

    iget-object v7, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v6, v7}, Lg5/da;->A(Lb5/d3;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual {v4, v7, v6}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v4, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v4}, Lb5/d3;->H()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2b

    iget-object v4, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v4}, Lb5/d3;->t()I

    move-result v4

    const/16 v7, 0x100

    if-le v4, v7, :cond_3

    goto/16 :goto_e

    :cond_3
    iget-object v4, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v4}, Lb5/d3;->D()Z

    move-result v4

    iget-object v7, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v7}, Lb5/d3;->E()Z

    move-result v7

    iget-object v8, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v8}, Lb5/d3;->F()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v4, :cond_5

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz p7, :cond_7

    if-nez v4, :cond_7

    iget-object v1, v0, Lg5/wa;->h:Lg5/za;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    iget v2, v0, Lg5/xa;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v3}, Lb5/d3;->H()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v3}, Lb5/d3;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_6
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {v1, v3, v2, v5}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_7
    iget-object v7, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual/range {p3 .. p3}, Lb5/j4;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lb5/d3;->G()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lb5/d3;->x()Lb5/k3;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lg5/xa;->h(JLb5/k3;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7}, Lb5/d3;->A()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb5/f3;

    invoke-virtual {v10}, Lb5/f3;->w()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "null or empty param name in filter. event"

    invoke-virtual {v2, v7, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v10}, Lb5/f3;->w()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v3, Lp/a;

    invoke-direct {v3}, Lp/a;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lb5/j4;->B()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb5/n4;

    invoke-virtual {v11}, Lb5/n4;->z()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v11}, Lb5/n4;->Q()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v11}, Lb5/n4;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lb5/n4;->Q()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Lb5/n4;->v()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_6

    :cond_d
    move-object v11, v5

    :goto_6
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    invoke-virtual {v11}, Lb5/n4;->O()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v11}, Lb5/n4;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lb5/n4;->O()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v11}, Lb5/n4;->s()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_7

    :cond_f
    move-object v11, v5

    :goto_7
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    invoke-virtual {v11}, Lb5/n4;->S()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v11}, Lb5/n4;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lb5/n4;->A()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v11}, Lb5/n4;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown value for param. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_12
    invoke-virtual {v7}, Lb5/d3;->A()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb5/f3;

    invoke-virtual {v7}, Lb5/f3;->A()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v7}, Lb5/f3;->z()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    goto :goto_8

    :cond_14
    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v7}, Lb5/f3;->w()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "Event has empty param name. event"

    invoke-virtual {v2, v7, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_15
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_18

    invoke-virtual {v7}, Lb5/f3;->B()Z

    move-result v13

    if-nez v13, :cond_16

    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v7, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long param. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_16
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Lb5/f3;->u()Lb5/k3;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lg5/xa;->h(JLb5/k3;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_17

    goto/16 :goto_a

    :cond_17
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    :cond_18
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_1b

    invoke-virtual {v7}, Lb5/f3;->B()Z

    move-result v13

    if-nez v13, :cond_19

    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v7, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double param. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_19
    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v7}, Lb5/f3;->u()Lb5/k3;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lg5/xa;->g(DLb5/k3;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_1a

    goto/16 :goto_a

    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    :cond_1b
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_20

    invoke-virtual {v7}, Lb5/f3;->D()Z

    move-result v13

    if-eqz v13, :cond_1c

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7}, Lb5/f3;->v()Lb5/r3;

    move-result-object v7

    iget-object v11, v0, Lg5/wa;->h:Lg5/za;

    iget-object v11, v11, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v11}, Lg5/b5;->F()Lg5/q3;

    move-result-object v11

    invoke-static {v12, v7, v11}, Lg5/xa;->f(Ljava/lang/String;Lb5/r3;Lg5/q3;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_9

    :cond_1c
    invoke-virtual {v7}, Lb5/f3;->B()Z

    move-result v13

    if-eqz v13, :cond_1f

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lg5/da;->M(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-virtual {v7}, Lb5/f3;->u()Lb5/k3;

    move-result-object v7

    invoke-static {v12, v7}, Lg5/xa;->i(Ljava/lang/String;Lb5/k3;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_9
    if-nez v7, :cond_1d

    goto/16 :goto_a

    :cond_1d
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_13

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    :cond_1e
    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v7, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid param value for number filter. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1f
    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v7, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No filter for String param. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    if-nez v12, :cond_21

    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->q()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lg5/wa;->h:Lg5/za;

    iget-object v5, v5, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->y()Lg5/l3;

    move-result-object v5

    invoke-virtual {v5, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Missing param for filter. event, param"

    invoke-virtual {v2, v7, v3, v5}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_21
    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->h:Lg5/za;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v8}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lg5/wa;->h:Lg5/za;

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->y()Lg5/l3;

    move-result-object v7

    invoke-virtual {v7, v11}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown param type. event, param"

    invoke-virtual {v2, v8, v3, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    iget-object v2, v0, Lg5/wa;->h:Lg5/za;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->q()Lg5/o3;

    move-result-object v2

    if-nez v5, :cond_23

    const-string v3, "null"

    goto :goto_b

    :cond_23
    move-object v3, v5

    :goto_b
    const-string v7, "Event filter result"

    invoke-virtual {v2, v7, v3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_24

    return v6

    :cond_24
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lg5/xa;->c:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_25

    return v9

    :cond_25
    iput-object v2, v0, Lg5/xa;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lb5/j4;->O()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lb5/j4;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v3}, Lb5/d3;->E()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v1, :cond_27

    iget-object v1, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v1}, Lb5/d3;->G()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_c

    :cond_26
    move-object/from16 v2, p1

    :cond_27
    :goto_c
    iput-object v2, v0, Lg5/xa;->f:Ljava/lang/Long;

    goto :goto_d

    :cond_28
    if-eqz v1, :cond_29

    iget-object v1, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v1}, Lb5/d3;->G()Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v2, p2

    :cond_29
    iput-object v2, v0, Lg5/xa;->e:Ljava/lang/Long;

    :cond_2a
    :goto_d
    return v9

    :cond_2b
    :goto_e
    iget-object v1, v0, Lg5/wa;->h:Lg5/za;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    iget-object v2, v0, Lg5/xa;->a:Ljava/lang/String;

    invoke-static {v2}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v3}, Lb5/d3;->H()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lg5/wa;->g:Lb5/d3;

    invoke-virtual {v3}, Lb5/d3;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    invoke-virtual {v1, v4, v2, v3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6
.end method
