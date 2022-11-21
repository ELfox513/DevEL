.class public final Lg5/w7;
.super Lg5/f4;
.source "SourceFile"


# instance fields
.field public volatile c:Lg5/p7;

.field public volatile d:Lg5/p7;

.field public e:Lg5/p7;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lg5/p7;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:Lg5/p7;

.field public j:Lg5/p7;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public m:Lg5/p7;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/f4;-><init>(Lg5/b5;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/w7;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lg5/w7;->f:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic m(Lg5/w7;)Lg5/p7;
    .locals 0

    iget-object p0, p0, Lg5/w7;->j:Lg5/p7;

    return-object p0
.end method

.method public static bridge synthetic q(Lg5/w7;Lg5/p7;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lg5/w7;->j:Lg5/p7;

    return-void
.end method

.method public static bridge synthetic r(Lg5/w7;Lg5/p7;Lg5/p7;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lg5/w7;->k(Lg5/p7;Lg5/p7;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic s(Lg5/w7;Landroid/os/Bundle;Lg5/p7;Lg5/p7;J)V
    .locals 8

    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_view"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->v0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Lg5/w7;->k(Lg5/p7;Lg5/p7;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic t(Lg5/w7;Lg5/p7;ZJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/w7;->l(Lg5/p7;ZJ)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;J)V
    .locals 12

    iget-object v0, p0, Lg5/w7;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg5/w7;->k:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "Cannot log screen view event when the app is in the background."

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "screen_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x64

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->u()Lg5/g;

    if-le v2, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "Invalid screen name length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    const-string v2, "screen_class"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->u()Lg5/g;

    if-le v4, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "Invalid screen class length for screen view. Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_4
    if-nez v2, :cond_6

    iget-object v1, p0, Lg5/w7;->g:Landroid/app/Activity;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {p0, v1, v2}, Lg5/w7;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "Activity"

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_6
    move-object v4, v2

    :goto_1
    iget-object v1, p0, Lg5/w7;->c:Lg5/p7;

    iget-boolean v2, p0, Lg5/w7;->h:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lg5/w7;->h:Z

    iget-object v2, v1, Lg5/p7;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v1, v1, Lg5/p7;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "Ignoring call to log screen view event with duplicate parameters."

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    if-nez v3, :cond_8

    const-string v1, "null"

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    if-nez v4, :cond_9

    const-string v2, "null"

    goto :goto_3

    :cond_9
    move-object v2, v4

    :goto_3
    const-string v5, "Logging screen view with name, class"

    invoke-virtual {v0, v5, v1, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lg5/w7;->c:Lg5/p7;

    if-nez v0, :cond_a

    iget-object v0, p0, Lg5/w7;->d:Lg5/p7;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lg5/w7;->c:Lg5/p7;

    :goto_4
    new-instance v1, Lg5/p7;

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {v2}, Lg5/ia;->r0()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v1

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v1, p0, Lg5/w7;->c:Lg5/p7;

    iput-object v0, p0, Lg5/w7;->d:Lg5/p7;

    iput-object v1, p0, Lg5/w7;->i:Lg5/p7;

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->Q()Lc4/f;

    move-result-object p2

    invoke-interface {p2}, Lc4/f;->b()J

    move-result-wide v10

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->P()Lg5/y4;

    move-result-object p2

    new-instance p3, Lg5/q7;

    move-object v5, p3

    move-object v6, p0

    move-object v7, p1

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v5 .. v11}, Lg5/q7;-><init>(Lg5/w7;Landroid/os/Bundle;Lg5/p7;Lg5/p7;J)V

    invoke-virtual {p2, p3}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final B(Ljava/lang/String;Lg5/p7;)V
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg5/w7;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lg5/w7;->n:Ljava/lang/String;

    iput-object p2, p0, Lg5/w7;->m:Lg5/p7;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final C(Landroid/app/Activity;)Lg5/p7;
    .locals 5

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/p7;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {p0, v0, v1}, Lg5/w7;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lg5/p7;

    const/4 v2, 0x0

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->K()Lg5/ia;

    move-result-object v3

    invoke-virtual {v3}, Lg5/ia;->r0()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lg5/w7;->i:Lg5/p7;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg5/w7;->i:Lg5/p7;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Landroid/app/Activity;Lg5/p7;Z)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    iget-object v1, v7, Lg5/w7;->c:Lg5/p7;

    if-nez v1, :cond_0

    iget-object v1, v7, Lg5/w7;->d:Lg5/p7;

    goto :goto_0

    :cond_0
    iget-object v1, v7, Lg5/w7;->c:Lg5/p7;

    :goto_0
    move-object v3, v1

    iget-object v1, v0, Lg5/p7;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {v7, v1, v2}, Lg5/w7;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v10, v1

    new-instance v1, Lg5/p7;

    iget-object v9, v0, Lg5/p7;->a:Ljava/lang/String;

    iget-wide v11, v0, Lg5/p7;->c:J

    iget-boolean v13, v0, Lg5/p7;->e:Z

    iget-wide v14, v0, Lg5/p7;->f:J

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iget-object v0, v7, Lg5/w7;->c:Lg5/p7;

    iput-object v0, v7, Lg5/w7;->d:Lg5/p7;

    iput-object v2, v7, Lg5/w7;->c:Lg5/p7;

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v4

    iget-object v0, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v8

    new-instance v9, Lg5/r7;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lg5/r7;-><init>(Lg5/w7;Lg5/p7;Lg5/p7;JZ)V

    invoke-virtual {v8, v9}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lg5/p7;Lg5/p7;JZLandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual {p0}, Lg5/v5;->c()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-wide v8, v2, Lg5/p7;->c:J

    iget-wide v10, v1, Lg5/p7;->c:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    iget-object v8, v2, Lg5/p7;->b:Ljava/lang/String;

    iget-object v9, v1, Lg5/p7;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lg5/p7;->a:Ljava/lang/String;

    iget-object v9, v1, Lg5/p7;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz p5, :cond_2

    iget-object v9, v0, Lg5/w7;->e:Lg5/p7;

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v8, :cond_c

    if-eqz v5, :cond_3

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :goto_2
    move-object v14, v8

    invoke-static {v1, v14, v7}, Lg5/ia;->s(Lg5/p7;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lg5/p7;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lg5/p7;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    invoke-virtual {v14, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v8, v2, Lg5/p7;->c:J

    const-string v2, "_pi"

    invoke-virtual {v14, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->J()Lg5/m9;

    move-result-object v2

    iget-object v2, v2, Lg5/m9;->e:Lg5/k9;

    iget-wide v10, v2, Lg5/k9;->b:J

    sub-long v10, v3, v10

    iput-wide v3, v2, Lg5/k9;->b:J

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {v2, v14, v10, v11}, Lg5/ia;->q(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g;->y()Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v10, 0x1

    const-string v2, "_mst"

    invoke-virtual {v14, v2, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-boolean v2, v1, Lg5/p7;->e:Z

    if-eq v7, v2, :cond_9

    const-string v2, "auto"

    goto :goto_3

    :cond_9
    const-string v2, "app"

    :goto_3
    move-object v10, v2

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->Q()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->a()J

    move-result-wide v11

    iget-boolean v2, v1, Lg5/p7;->e:Z

    if-eqz v2, :cond_b

    move-wide/from16 p5, v11

    iget-wide v11, v1, Lg5/p7;->f:J

    cmp-long v2, v11, v8

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    move-wide v12, v11

    goto :goto_5

    :cond_b
    move-wide/from16 p5, v11

    :goto_4
    move-wide/from16 v12, p5

    :goto_5
    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->D()Lg5/i7;

    move-result-object v9

    const-string v11, "_vs"

    invoke-virtual/range {v9 .. v14}, Lg5/i7;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lg5/w7;->e:Lg5/p7;

    invoke-virtual {p0, v2, v7, v3, v4}, Lg5/w7;->l(Lg5/p7;ZJ)V

    :cond_d
    iput-object v1, v0, Lg5/w7;->e:Lg5/p7;

    iget-boolean v2, v1, Lg5/p7;->e:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lg5/w7;->j:Lg5/p7;

    :cond_e
    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->I()Lg5/w8;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg5/w8;->p(Lg5/p7;)V

    return-void
.end method

.method public final l(Lg5/p7;ZJ)V
    .locals 3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->t()Lg5/d2;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg5/d2;->i(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lg5/p7;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->J()Lg5/m9;

    move-result-object v2

    iget-object v2, v2, Lg5/m9;->e:Lg5/k9;

    invoke-virtual {v2, v1, p2, p3, p4}, Lg5/k9;->d(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lg5/p7;->d:Z

    :cond_1
    return-void
.end method

.method public final n()Lg5/p7;
    .locals 1

    iget-object v0, p0, Lg5/w7;->c:Lg5/p7;

    return-object v0
.end method

.method public final o(Z)Lg5/p7;
    .locals 0

    invoke-virtual {p0}, Lg5/f4;->d()V

    invoke-virtual {p0}, Lg5/v5;->c()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lg5/w7;->e:Lg5/p7;

    return-object p1

    :cond_0
    iget-object p1, p0, Lg5/w7;->e:Lg5/p7;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lg5/w7;->j:Lg5/p7;

    return-object p1
.end method

.method public final p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->u()Lg5/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final u(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, Lg5/p7;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final v(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lg5/w7;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg5/w7;->g:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lg5/w7;->g:Landroid/app/Activity;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lg5/w7;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lg5/w7;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg5/w7;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g;->y()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lg5/w7;->c:Lg5/p7;

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    new-instance v2, Lg5/t7;

    invoke-direct {v2, p0, v0, v1}, Lg5/t7;-><init>(Lg5/w7;J)V

    invoke-virtual {p1, v2}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lg5/w7;->C(Landroid/app/Activity;)Lg5/p7;

    move-result-object p1

    iget-object v2, p0, Lg5/w7;->c:Lg5/p7;

    iput-object v2, p0, Lg5/w7;->d:Lg5/p7;

    iput-object v3, p0, Lg5/w7;->c:Lg5/p7;

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->P()Lg5/y4;

    move-result-object v2

    new-instance v3, Lg5/u7;

    invoke-direct {v3, p0, p1, v0, v1}, Lg5/u7;-><init>(Lg5/w7;Lg5/p7;J)V

    invoke-virtual {v2, v3}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final x(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lg5/w7;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lg5/w7;->k:Z

    iget-object v1, p0, Lg5/w7;->g:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lg5/w7;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lg5/w7;->g:Landroid/app/Activity;

    iput-boolean v2, p0, Lg5/w7;->h:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    invoke-virtual {v1}, Lg5/g;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lg5/w7;->i:Lg5/p7;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->P()Lg5/y4;

    move-result-object v1

    new-instance v3, Lg5/v7;

    invoke-direct {v3, p0}, Lg5/v7;-><init>(Lg5/w7;)V

    invoke-virtual {v1, v3}, Lg5/y4;->u(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lg5/w7;->i:Lg5/p7;

    iput-object p1, p0, Lg5/w7;->c:Lg5/p7;

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->P()Lg5/y4;

    move-result-object p1

    new-instance v0, Lg5/s7;

    invoke-direct {v0, p0}, Lg5/s7;-><init>(Lg5/w7;)V

    invoke-virtual {p1, v0}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lg5/w7;->C(Landroid/app/Activity;)Lg5/p7;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lg5/w7;->j(Landroid/app/Activity;Lg5/p7;Z)V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->t()Lg5/d2;

    move-result-object p1

    iget-object v0, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-object v2, p1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->P()Lg5/y4;

    move-result-object v2

    new-instance v3, Lg5/c1;

    invoke-direct {v3, p1, v0, v1}, Lg5/c1;-><init>(Lg5/d2;J)V

    invoke-virtual {v2, v3}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final y(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/p7;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lg5/p7;->c:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p1, Lg5/p7;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lg5/p7;->b:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final z(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lg5/w7;->c:Lg5/p7;

    if-nez v0, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v1, "Activity"

    invoke-virtual {p0, p3, v1}, Lg5/w7;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v1, v0, Lg5/p7;->b:Ljava/lang/String;

    invoke-static {v1, p3}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iget-object v0, v0, Lg5/p7;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/16 v0, 0x64

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    if-gt v1, v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    if-gt v1, v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->s()Lg5/o3;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    if-nez p2, :cond_a

    const-string v1, "null"

    goto :goto_3

    :cond_a
    move-object v1, p2

    :goto_3
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lg5/p7;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    invoke-virtual {v1}, Lg5/ia;->r0()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lg5/p7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lg5/w7;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lg5/w7;->j(Landroid/app/Activity;Lg5/p7;Z)V

    return-void
.end method
