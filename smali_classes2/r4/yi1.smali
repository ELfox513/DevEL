.class public final Lr4/yi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lr4/zi1;


# direct methods
.method public constructor <init>(Lr4/zi1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    iput-object p2, p0, Lr4/yi1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 4

    sget-object v0, Lr4/rz;->f1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lr4/mm;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {p1}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {p1}, Lr4/zi1;->z(Lr4/zi1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lr4/yi1;->a:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {p1}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v0

    invoke-interface {v0}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {v2}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v2

    invoke-interface {v2}, Lr4/al1;->h()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {v3}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v3

    invoke-interface {v3}, Lr4/al1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lr4/zi1;->J(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lr4/mm;->j:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {p1}, Lr4/zi1;->z(Lr4/zi1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lr4/yi1;->a:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {p1}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v0

    invoke-interface {v0}, Lr4/al1;->L0()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {v2}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v2

    invoke-interface {v2}, Lr4/al1;->h()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lr4/yi1;->b:Lr4/zi1;

    invoke-static {v3}, Lr4/zi1;->y(Lr4/zi1;)Lr4/al1;

    move-result-object v3

    invoke-interface {v3}, Lr4/al1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lr4/zi1;->J(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method
