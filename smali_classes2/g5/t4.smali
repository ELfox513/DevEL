.class public final Lg5/t4;
.super Lg5/r9;
.source "SourceFile"

# interfaces
.implements Lg5/f;


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb5/x3;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lp/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/e<",
            "Ljava/lang/String;",
            "Lb5/c1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lb5/sf;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/ba;)V
    .locals 1

    invoke-direct {p0, p1}, Lg5/r9;-><init>(Lg5/ba;)V

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->d:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->e:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->f:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->g:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->k:Ljava/util/Map;

    new-instance p1, Lp/a;

    invoke-direct {p1}, Lp/a;-><init>()V

    iput-object p1, p0, Lg5/t4;->h:Ljava/util/Map;

    new-instance p1, Lg5/q4;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lg5/q4;-><init>(Lg5/t4;I)V

    iput-object p1, p0, Lg5/t4;->i:Lp/e;

    new-instance p1, Lg5/r4;

    invoke-direct {p1, p0}, Lg5/r4;-><init>(Lg5/t4;)V

    iput-object p1, p0, Lg5/t4;->j:Lb5/sf;

    return-void
.end method

.method public static bridge synthetic i(Lg5/t4;Ljava/lang/String;)Lb5/c1;
    .locals 3

    invoke-virtual {p0}, Lg5/r9;->d()V

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->x0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lg5/t4;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/x3;

    invoke-virtual {p0, p1, v0}, Lg5/t4;->y(Ljava/lang/String;Lb5/x3;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lg5/t4;->i:Lp/e;

    invoke-virtual {p0}, Lp/e;->h()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lb5/c1;

    :goto_1
    return-object v2
.end method

.method public static bridge synthetic l(Lg5/t4;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lg5/t4;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static final z(Lb5/x3;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/x3;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb5/x3;->D()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/z3;

    invoke-virtual {v1}, Lb5/z3;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lb5/z3;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/t4;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/t4;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final j(Ljava/lang/String;)Lb5/x3;
    .locals 1

    invoke-virtual {p0}, Lg5/r9;->d()V

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/x3;

    return-object p1
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/t4;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/t4;->k:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/t4;->j(Ljava/lang/String;)Lb5/x3;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lb5/x3;->G()Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->x0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/x3;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lb5/x3;->s()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v0}, Lg5/t4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg5/t4;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/t4;->x(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg5/t4;->q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lg5/t4;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lg5/ia;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lg5/t4;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v0}, Lg5/t4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final u(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lg5/r9;->d()V

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lg5/t4;->v(Ljava/lang/String;[B)Lb5/x3;

    move-result-object v0

    invoke-virtual {v0}, Lb5/x8;->l()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/w3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lg5/t4;->w(Ljava/lang/String;Lb5/w3;)V

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    sget-object v2, Lg5/c3;->x0:Lg5/b3;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v1

    check-cast v1, Lb5/x3;

    invoke-virtual {p0, p1, v1}, Lg5/t4;->y(Ljava/lang/String;Lb5/x3;)V

    :cond_1
    iget-object v1, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v2

    check-cast v2, Lb5/x3;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/t4;->k:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/t4;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v2

    check-cast v2, Lb5/x3;

    invoke-static {v2}, Lg5/t4;->z(Lb5/x3;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->V()Lg5/k;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb5/w3;->z()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lg5/k;->j(Ljava/lang/String;Ljava/util/List;)V

    :try_start_0
    invoke-virtual {v0}, Lb5/w3;->v()Lb5/w3;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v1

    check-cast v1, Lb5/x3;

    invoke-virtual {v1}, Lb5/f7;->e()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->r()Lg5/o3;

    move-result-object v2

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-virtual {v2, v5, v4, v1}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lb5/ke;->b()Z

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    sget-object v2, Lg5/c3;->u0:Lg5/b3;

    invoke-virtual {v1, v3, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v1}, Lg5/ba;->V()Lg5/k;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lg5/k;->n(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {p3}, Lg5/ba;->V()Lg5/k;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v3}, Lg5/k;->n(Ljava/lang/String;[BLjava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object p3

    check-cast p3, Lb5/x3;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final v(Ljava/lang/String;[B)Lb5/x3;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    invoke-static {}, Lb5/x3;->z()Lb5/x3;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lb5/x3;->w()Lb5/w3;

    move-result-object v1

    invoke-static {v1, p2}, Lg5/da;->y(Lb5/da;[B)Lb5/da;

    move-result-object p2

    check-cast p2, Lb5/w3;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/x3;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    invoke-virtual {p2}, Lb5/x3;->I()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lb5/x3;->u()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {p2}, Lb5/x3;->H()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lb5/x3;->A()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lb5/h9; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lb5/x3;->z()Lb5/x3;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lb5/x3;->z()Lb5/x3;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/lang/String;Lb5/w3;)V
    .locals 8

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    new-instance v2, Lp/a;

    invoke-direct {v2}, Lp/a;-><init>()V

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Lb5/w3;->t()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Lb5/w3;->u(I)Lb5/v3;

    move-result-object v4

    invoke-virtual {v4}, Lb5/x8;->l()Lb5/u8;

    move-result-object v4

    check-cast v4, Lb5/t3;

    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->r()Lg5/o3;

    move-result-object v4

    const-string v5, "EventConfig contained null event name"

    invoke-virtual {v4, v5}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg5/z5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v6}, Lb5/t3;->u(Ljava/lang/String;)Lb5/t3;

    invoke-virtual {p2, v3, v4}, Lb5/w3;->x(ILb5/t3;)Lb5/w3;

    :cond_1
    invoke-virtual {v4}, Lb5/t3;->x()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lb5/t3;->z()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lb5/t3;->A()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lb5/t3;->t()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    invoke-virtual {v4}, Lb5/t3;->t()I

    move-result v5

    const v6, 0xffff

    if-le v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lb5/t3;->t()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->F()Lg5/q3;

    move-result-object v5

    invoke-virtual {v5}, Lg5/q3;->r()Lg5/o3;

    move-result-object v5

    invoke-virtual {v4}, Lb5/t3;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lb5/t3;->t()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v5, v7, v6, v4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lg5/t4;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg5/t4;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg5/t4;->h:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lg5/r9;->d()V

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->V()Lg5/k;

    move-result-object v0

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/r9;->d()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lg5/k;->R()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "remote_config"

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const-string v3, "config_last_modified_time"

    const/4 v11, 0x1

    aput-object v3, v4, v11

    new-array v6, v11, [Ljava/lang/String;

    aput-object p1, v6, v10

    const-string v3, "apps"

    const-string v5, "app_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->F()Lg5/q3;

    move-result-object v5

    invoke-virtual {v5}, Lg5/q3;->m()Lg5/o3;

    move-result-object v5

    const-string v6, "Got multiple records for app config, expected one. appId"

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v4, "Error querying remote config. appId"

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v5, v1

    :goto_2
    if-nez v5, :cond_4

    iget-object v0, p0, Lg5/t4;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/t4;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/t4;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/t4;->k:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/t4;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lg5/t4;->v(Ljava/lang/String;[B)Lb5/x3;

    move-result-object v0

    invoke-virtual {v0}, Lb5/x8;->l()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/w3;

    invoke-virtual {p0, p1, v0}, Lg5/t4;->w(Ljava/lang/String;Lb5/w3;)V

    iget-object v2, p0, Lg5/t4;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v3

    check-cast v3, Lb5/x3;

    invoke-static {v3}, Lg5/t4;->z(Lb5/x3;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg5/t4;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v3

    check-cast v3, Lb5/x3;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lb5/qe;->b()Z

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    sget-object v3, Lg5/c3;->x0:Lg5/b3;

    invoke-virtual {v2, v1, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v0

    check-cast v0, Lb5/x3;

    invoke-virtual {p0, p1, v0}, Lg5/t4;->y(Ljava/lang/String;Lb5/x3;)V

    :cond_5
    invoke-static {}, Lb5/ke;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v2, Lg5/c3;->u0:Lg5/b3;

    invoke-virtual {v0, v1, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg5/t4;->k:Ljava/util/Map;

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    iget-object v0, p0, Lg5/t4;->k:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1

    :cond_8
    return-void
.end method

.method public final y(Ljava/lang/String;Lb5/x3;)V
    .locals 3

    invoke-virtual {p2}, Lb5/x3;->s()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    invoke-virtual {p2}, Lb5/x3;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EES programs found"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lb5/x3;->C()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/k5;

    :try_start_0
    new-instance v0, Lb5/c1;

    invoke-direct {v0}, Lb5/c1;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Lg5/n4;

    invoke-direct {v2, p0, p1}, Lg5/n4;-><init>(Lg5/t4;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb5/c1;->d(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v1, Lg5/p4;

    invoke-direct {v1, p0, p1}, Lg5/p4;-><init>(Lg5/t4;Ljava/lang/String;)V

    const-string v2, "internal.appMetadata"

    invoke-virtual {v0, v2, v1}, Lb5/c1;->d(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v1, Lg5/m4;

    invoke-direct {v1, p0}, Lg5/m4;-><init>(Lg5/t4;)V

    const-string v2, "internal.logger"

    invoke-virtual {v0, v2, v1}, Lb5/c1;->d(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p2}, Lb5/c1;->c(Lb5/k5;)V

    iget-object v1, p0, Lg5/t4;->i:Lp/e;

    invoke-virtual {v1, p1, v0}, Lp/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    const-string v1, "EES program loaded for appId, activities"

    invoke-virtual {p2}, Lb5/k5;->s()Lb5/g5;

    move-result-object v2

    invoke-virtual {v2}, Lb5/g5;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lb5/k5;->s()Lb5/g5;

    move-result-object p2

    invoke-virtual {p2}, Lb5/g5;->v()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/i5;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Lb5/i5;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lb5/y1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string v0, "Failed to load EES program. appId"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p2, p0, Lg5/t4;->i:Lp/e;

    invoke-virtual {p2, p1}, Lp/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
