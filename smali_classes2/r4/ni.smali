.class public final Lr4/ni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rk;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lr4/fk;

.field public final c:Lr4/oi;

.field public final d:Lr4/xk;

.field public final e:Lr4/uf;

.field public volatile f:Z

.field public g:Z

.field public h:J

.field public i:J

.field public final synthetic j:Lr4/qi;


# direct methods
.method public constructor <init>(Lr4/qi;Landroid/net/Uri;Lr4/fk;Lr4/oi;Lr4/xk;)V
    .locals 0

    iput-object p1, p0, Lr4/ni;->j:Lr4/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lr4/ni;->a:Landroid/net/Uri;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lr4/ni;->b:Lr4/fk;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lr4/ni;->c:Lr4/oi;

    iput-object p5, p0, Lr4/ni;->d:Lr4/xk;

    new-instance p1, Lr4/uf;

    invoke-direct {p1}, Lr4/uf;-><init>()V

    iput-object p1, p0, Lr4/ni;->e:Lr4/uf;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/ni;->g:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lr4/ni;->i:J

    return-void
.end method

.method public static synthetic a(Lr4/ni;)J
    .locals 2

    iget-wide v0, p0, Lr4/ni;->i:J

    return-wide v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ni;->f:Z

    return-void
.end method

.method public final c()V
    .locals 20

    move-object/from16 v1, p0

    :cond_0
    iget-boolean v0, v1, Lr4/ni;->f:Z

    if-nez v0, :cond_8

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lr4/ni;->e:Lr4/uf;

    iget-wide v14, v0, Lr4/uf;->a:J

    iget-object v0, v1, Lr4/ni;->b:Lr4/fk;

    new-instance v13, Lr4/ik;

    iget-object v5, v1, Lr4/ni;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const-wide/16 v11, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v4, v13

    move-wide v7, v14

    move-wide v9, v14

    move-object v2, v13

    move-object/from16 v13, v16

    move-wide/from16 v18, v14

    move/from16 v14, v17

    invoke-direct/range {v4 .. v14}, Lr4/ik;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    invoke-interface {v0, v2}, Lr4/fk;->d(Lr4/ik;)J

    move-result-wide v4

    iput-wide v4, v1, Lr4/ni;->i:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move-wide/from16 v10, v18

    add-long/2addr v4, v10

    iput-wide v4, v1, Lr4/ni;->i:J

    goto :goto_0

    :cond_1
    move-wide/from16 v10, v18

    :goto_0
    move-wide v8, v4

    new-instance v2, Lr4/of;

    iget-object v5, v1, Lr4/ni;->b:Lr4/fk;

    move-object v4, v2

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lr4/of;-><init>(Lr4/fk;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, v1, Lr4/ni;->c:Lr4/oi;

    iget-object v4, v1, Lr4/ni;->b:Lr4/fk;

    invoke-interface {v4}, Lr4/fk;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lr4/oi;->b(Lr4/of;Landroid/net/Uri;)Lr4/pf;

    move-result-object v0

    iget-boolean v4, v1, Lr4/ni;->g:Z

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lr4/ni;->h:J

    invoke-interface {v0, v10, v11, v4, v5}, Lr4/pf;->l(JJ)V

    iput-boolean v3, v1, Lr4/ni;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move-wide v14, v10

    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-nez v4, :cond_5

    :try_start_2
    iget-boolean v5, v1, Lr4/ni;->f:Z

    if-nez v5, :cond_4

    iget-object v5, v1, Lr4/ni;->d:Lr4/xk;

    invoke-virtual {v5}, Lr4/xk;->c()V

    iget-object v5, v1, Lr4/ni;->e:Lr4/uf;

    invoke-interface {v0, v2, v5}, Lr4/pf;->m(Lr4/of;Lr4/uf;)I

    move-result v4

    invoke-virtual {v2}, Lr4/of;->h()J

    move-result-wide v5

    iget-object v7, v1, Lr4/ni;->j:Lr4/qi;

    invoke-static {v7}, Lr4/qi;->w(Lr4/qi;)J

    move-result-wide v7

    add-long/2addr v7, v14

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    invoke-virtual {v2}, Lr4/of;->h()J

    move-result-wide v14

    iget-object v5, v1, Lr4/ni;->d:Lr4/xk;

    invoke-virtual {v5}, Lr4/xk;->b()Z

    iget-object v5, v1, Lr4/ni;->j:Lr4/qi;

    invoke-static {v5}, Lr4/qi;->y(Lr4/qi;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, v1, Lr4/ni;->j:Lr4/qi;

    invoke-static {v6}, Lr4/qi;->x(Lr4/qi;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move v3, v4

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lr4/ni;->e:Lr4/uf;

    invoke-virtual {v2}, Lr4/of;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lr4/uf;->a:J

    move v3, v4

    :goto_3
    iget-object v0, v1, Lr4/ni;->b:Lr4/fk;

    invoke-static {v0}, Lr4/ll;->c(Lr4/fk;)V

    if-eqz v3, :cond_0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v3, v1, Lr4/ni;->e:Lr4/uf;

    invoke-virtual {v2}, Lr4/of;->h()J

    move-result-wide v4

    iput-wide v4, v3, Lr4/uf;->a:J

    :cond_7
    iget-object v2, v1, Lr4/ni;->b:Lr4/fk;

    invoke-static {v2}, Lr4/ll;->c(Lr4/fk;)V

    throw v0

    :cond_8
    :goto_5
    return-void
.end method

.method public final d(JJ)V
    .locals 1

    iget-object v0, p0, Lr4/ni;->e:Lr4/uf;

    iput-wide p1, v0, Lr4/uf;->a:J

    iput-wide p3, p0, Lr4/ni;->h:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/ni;->g:Z

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lr4/ni;->f:Z

    return v0
.end method
