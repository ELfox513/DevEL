.class public final Lr4/ic0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/s;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:I

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Landroid/location/Location;

.field public final f:I

.field public final g:Lr4/d20;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILr4/d20;Ljava/util/List;ZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lr4/d20;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ic0;->a:Ljava/util/Date;

    iput p2, p0, Lr4/ic0;->b:I

    iput-object p3, p0, Lr4/ic0;->c:Ljava/util/Set;

    iput-object p4, p0, Lr4/ic0;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lr4/ic0;->d:Z

    iput p6, p0, Lr4/ic0;->f:I

    iput-object p7, p0, Lr4/ic0;->g:Lr4/d20;

    iput-boolean p9, p0, Lr4/ic0;->i:Z

    iput-object p11, p0, Lr4/ic0;->k:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/ic0;->h:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr4/ic0;->j:Ljava/util/Map;

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "custom:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ":"

    const/4 p4, 0x3

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    if-ne p3, p4, :cond_0

    const/4 p3, 0x2

    aget-object p4, p2, p3

    const-string p5, "true"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_1

    iget-object p3, p0, Lr4/ic0;->j:Ljava/util/Map;

    aget-object p2, p2, p5

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object p3, p2, p3

    const-string p4, "false"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lr4/ic0;->j:Ljava/util/Map;

    aget-object p2, p2, p5

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lr4/ic0;->h:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ic0;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lg3/d;
    .locals 1

    iget-object v0, p0, Lr4/ic0;->g:Lr4/d20;

    invoke-static {v0}, Lr4/d20;->X0(Lr4/d20;)Lg3/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lr4/ic0;->f:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lr4/ic0;->h:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lr4/ic0;->i:Z

    return v0
.end method

.method public final f()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/ic0;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ic0;->d:Z

    return v0
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ic0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final i()Lv2/e;
    .locals 4

    iget-object v0, p0, Lr4/ic0;->g:Lr4/d20;

    new-instance v1, Lv2/e$a;

    invoke-direct {v1}, Lv2/e$a;-><init>()V

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lv2/e$a;->a()Lv2/e;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget v2, v0, Lr4/d20;->a:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lr4/d20;->r:Z

    invoke-virtual {v1, v2}, Lv2/e$a;->e(Z)Lv2/e$a;

    iget v2, v0, Lr4/d20;->s:I

    invoke-virtual {v1, v2}, Lv2/e$a;->d(I)Lv2/e$a;

    :cond_2
    iget-object v2, v0, Lr4/d20;->q:Lr4/xy;

    if-eqz v2, :cond_3

    new-instance v3, Lt2/w;

    invoke-direct {v3, v2}, Lt2/w;-><init>(Lr4/xy;)V

    invoke-virtual {v1, v3}, Lv2/e$a;->h(Lt2/w;)Lv2/e$a;

    :cond_3
    iget v2, v0, Lr4/d20;->p:I

    invoke-virtual {v1, v2}, Lv2/e$a;->b(I)Lv2/e$a;

    :goto_0
    iget-boolean v2, v0, Lr4/d20;->b:Z

    invoke-virtual {v1, v2}, Lv2/e$a;->g(Z)Lv2/e$a;

    iget v2, v0, Lr4/d20;->d:I

    invoke-virtual {v1, v2}, Lv2/e$a;->c(I)Lv2/e$a;

    iget-boolean v0, v0, Lr4/d20;->k:Z

    invoke-virtual {v1, v0}, Lv2/e$a;->f(Z)Lv2/e$a;

    invoke-virtual {v1}, Lv2/e$a;->a()Lv2/e;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final j()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lr4/ic0;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lr4/ic0;->b:I

    return v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lr4/ic0;->h:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
