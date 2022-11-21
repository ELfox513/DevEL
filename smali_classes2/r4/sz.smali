.class public final Lr4/sz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "gad:dynamite_module:experiment_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lr4/u00;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/u00;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->a:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->b:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->c:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->d:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->e:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->k:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->f:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->g:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->h:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->i:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    sget-object v1, Lr4/d10;->j:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lr4/p10;->a:Lr4/u00;

    invoke-static {v0, v1}, Lr4/sz;->c(Ljava/util/List;Lr4/u00;)V

    return-object v0
.end method

.method public static c(Ljava/util/List;Lr4/u00;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/u00<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
