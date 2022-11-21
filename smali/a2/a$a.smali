.class public La2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La2/a;


# direct methods
.method public constructor <init>(La2/a;)V
    .locals 0

    iput-object p1, p0, La2/a$a;->a:La2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    invoke-virtual {p0, p1}, La2/a$a;->d(Lz1/u;)V

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, La2/a$a;->d(Lz1/u;)V

    return-void
.end method

.method public c(Lz1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, La2/a$a;->d(Lz1/u;)V

    return-void
.end method

.method public final d(Lz1/u;)V
    .locals 4

    invoke-virtual {p1}, Lz1/u;->j()Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v1

    iget-object v2, p0, La2/a$a;->a:La2/a;

    invoke-static {v2}, La2/a;->f(La2/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, La2/a$a;->a:La2/a;

    invoke-static {v3}, La2/a;->f(La2/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Lz1/l;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lz1/u;->n()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    iget-object v0, p0, La2/a$a;->a:La2/a;

    invoke-static {v0}, La2/a;->g(La2/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lz1/l;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lz1/m;->a()Lw1/a0;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->o()Lw1/h;

    move-result-object v1

    invoke-virtual {v1}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lw1/a0;->a(Lw1/t;Lw1/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, La2/a$a;->a:La2/a;

    invoke-static {v0}, La2/a;->h(La2/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lz1/l;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lz1/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, La2/a$a;->a:La2/a;

    invoke-static {v0}, La2/a;->i(La2/a;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lz1/n;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method
