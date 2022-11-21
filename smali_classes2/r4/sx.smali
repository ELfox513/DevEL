.class public final Lr4/sx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/location/Location;

.field public final g:Landroid/os/Bundle;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Landroid/os/Bundle;

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final q:I


# direct methods
.method public constructor <init>(Lr4/rx;Ll3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/rx;->k(Lr4/rx;)Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->a:Ljava/util/Date;

    invoke-static {p1}, Lr4/rx;->l(Lr4/rx;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->b:Ljava/lang/String;

    invoke-static {p1}, Lr4/rx;->m(Lr4/rx;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->c:Ljava/util/List;

    invoke-static {p1}, Lr4/rx;->n(Lr4/rx;)I

    move-result p2

    iput p2, p0, Lr4/sx;->d:I

    invoke-static {p1}, Lr4/rx;->e(Lr4/rx;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->e:Ljava/util/Set;

    invoke-static {p1}, Lr4/rx;->o(Lr4/rx;)Landroid/location/Location;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->f:Landroid/location/Location;

    invoke-static {p1}, Lr4/rx;->f(Lr4/rx;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->g:Landroid/os/Bundle;

    invoke-static {p1}, Lr4/rx;->g(Lr4/rx;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->h:Ljava/util/Map;

    invoke-static {p1}, Lr4/rx;->p(Lr4/rx;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->i:Ljava/lang/String;

    invoke-static {p1}, Lr4/rx;->q(Lr4/rx;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->j:Ljava/lang/String;

    invoke-static {p1}, Lr4/rx;->r(Lr4/rx;)I

    move-result p2

    iput p2, p0, Lr4/sx;->k:I

    invoke-static {p1}, Lr4/rx;->h(Lr4/rx;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->l:Ljava/util/Set;

    invoke-static {p1}, Lr4/rx;->i(Lr4/rx;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->m:Landroid/os/Bundle;

    invoke-static {p1}, Lr4/rx;->j(Lr4/rx;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->n:Ljava/util/Set;

    invoke-static {p1}, Lr4/rx;->s(Lr4/rx;)Z

    move-result p2

    iput-boolean p2, p0, Lr4/sx;->o:Z

    invoke-static {p1}, Lr4/rx;->t(Lr4/rx;)Li3/a;

    invoke-static {p1}, Lr4/rx;->u(Lr4/rx;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lr4/sx;->p:Ljava/lang/String;

    invoke-static {p1}, Lr4/rx;->v(Lr4/rx;)I

    move-result p1

    iput p1, p0, Lr4/sx;->q:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/sx;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/sx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
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

    iget-object v1, p0, Lr4/sx;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lr4/sx;->d:I

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lr4/sx;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final g(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx;->g:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/sx;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/sx;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ll3/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v0

    invoke-virtual {v0}, Lr4/zx;->i()Lt2/t;

    move-result-object v0

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {p1}, Lr4/vl0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lr4/sx;->l:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lt2/t;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/sx;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lr4/sx;->k:I

    return v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lr4/sx;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/sx;->n:Ljava/util/Set;

    return-object v0
.end method

.method public final q()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/sx;->o:Z

    return v0
.end method

.method public final r()Li3/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/sx;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lr4/sx;->q:I

    return v0
.end method
