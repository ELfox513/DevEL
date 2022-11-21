.class public final Lr4/o42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/y12<",
        "Lr4/zi1;",
        "Lr4/zp2;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/sh1;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/sh1;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o42;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/o42;->b:Lr4/sh1;

    iput-object p3, p0, Lr4/o42;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final c(Lr4/bp2;I)Z
    .locals 0

    iget-object p0, p0, Lr4/bp2;->a:Lr4/yo2;

    iget-object p0, p0, Lr4/yo2;->a:Lr4/hp2;

    iget-object p0, p0, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bp2;Lr4/no2;Lr4/t12;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/zp2;

    invoke-virtual {v0}, Lr4/zp2;->b()Lr4/qb0;

    move-result-object v0

    iget-object v1, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v1, Lr4/zp2;

    invoke-virtual {v1}, Lr4/zp2;->c()Lr4/rb0;

    move-result-object v1

    iget-object v2, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v2, Lr4/zp2;

    invoke-virtual {v2}, Lr4/zp2;->x()Lr4/ub0;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eqz v2, :cond_0

    invoke-static {p1, v4}, Lr4/o42;->c(Lr4/bp2;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lr4/ej1;->B(Lr4/ub0;)Lr4/ej1;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p1, v4}, Lr4/o42;->c(Lr4/bp2;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lr4/ej1;->E(Lr4/qb0;)Lr4/ej1;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lr4/o42;->c(Lr4/bp2;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lr4/ej1;->D(Lr4/qb0;)Lr4/ej1;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p1, v4}, Lr4/o42;->c(Lr4/bp2;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lr4/ej1;->F(Lr4/rb0;)Lr4/ej1;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    invoke-static {p1, v3}, Lr4/o42;->c(Lr4/bp2;I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Lr4/ej1;->C(Lr4/rb0;)Lr4/ej1;

    move-result-object v4

    :goto_0
    iget-object v5, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v5, v5, Lr4/yo2;->a:Lr4/hp2;

    iget-object v5, v5, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lr4/ej1;->d0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, p0, Lr4/o42;->b:Lr4/sh1;

    new-instance v5, Lr4/x31;

    iget-object v6, p3, Lr4/t12;->a:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance p1, Lr4/qj1;

    invoke-direct {p1, v4}, Lr4/qj1;-><init>(Lr4/ej1;)V

    new-instance p2, Lr4/fl1;

    const/4 v4, 0x0

    invoke-direct {p2, v1, v0, v2, v4}, Lr4/fl1;-><init>(Lr4/rb0;Lr4/qb0;Lr4/ub0;[B)V

    invoke-virtual {v3, v5, p1, p2}, Lr4/sh1;->d(Lr4/x31;Lr4/qj1;Lr4/fl1;)Lr4/gj1;

    move-result-object p1

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    check-cast p2, Lr4/n32;

    invoke-virtual {p1}, Lr4/j31;->f()Lr4/x62;

    move-result-object v0

    invoke-virtual {p2, v0}, Lr4/n32;->g7(Lr4/lb0;)V

    invoke-virtual {p1}, Lr4/j31;->a()Lr4/j81;

    move-result-object p2

    new-instance v0, Lr4/sy0;

    iget-object p3, p3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p3, Lr4/zp2;

    invoke-direct {v0, p3}, Lr4/sy0;-><init>(Lr4/zp2;)V

    iget-object p3, p0, Lr4/o42;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lr4/hj1;->h()Lr4/zi1;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lr4/j52;

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p1, v3, p2}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lr4/j52;

    const-string p2, "No native ad mappers"

    invoke-direct {p1, v3, p2}, Lr4/j52;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lr4/t12;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr4/zp2;

    iget-object v2, p0, Lr4/o42;->a:Landroid/content/Context;

    iget-object v0, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object v0, v0, Lr4/yo2;->a:Lr4/hp2;

    iget-object v3, v0, Lr4/hp2;->d:Lr4/tt;

    iget-object v0, p2, Lr4/no2;->v:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lr4/no2;->s:Lr4/uo2;

    invoke-static {p2}, Lb3/b1;->l(Lr4/uo2;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lr4/t12;->c:Lr4/u81;

    move-object v6, p2

    check-cast v6, Lr4/lb0;

    iget-object p1, p1, Lr4/bp2;->a:Lr4/yo2;

    iget-object p1, p1, Lr4/yo2;->a:Lr4/hp2;

    iget-object v7, p1, Lr4/hp2;->i:Lr4/d20;

    iget-object v8, p1, Lr4/hp2;->g:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v8}, Lr4/zp2;->r(Landroid/content/Context;Lr4/tt;Ljava/lang/String;Ljava/lang/String;Lr4/lb0;Lr4/d20;Ljava/util/List;)V

    return-void
.end method
