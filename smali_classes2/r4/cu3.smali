.class public final Lr4/cu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/fx3;
.implements Lr4/us3;


# instance fields
.field public final a:J

.field public final b:Landroid/net/Uri;

.field public final c:Lr4/sx3;

.field public final d:Lr4/xt3;

.field public final e:Lr4/d04;

.field public final f:Lr4/ma;

.field public final g:Lr4/w04;

.field public volatile h:Z

.field public i:Z

.field public j:J

.field public k:Lr4/vc;

.field public l:J

.field public m:Lr4/d14;

.field public n:Z

.field public final synthetic o:Lr4/hu3;


# direct methods
.method public constructor <init>(Lr4/hu3;Landroid/net/Uri;Lr4/o8;Lr4/xt3;Lr4/d04;Lr4/ma;)V
    .locals 0

    iput-object p1, p0, Lr4/cu3;->o:Lr4/hu3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/cu3;->b:Landroid/net/Uri;

    new-instance p1, Lr4/sx3;

    invoke-direct {p1, p3}, Lr4/sx3;-><init>(Lr4/o8;)V

    iput-object p1, p0, Lr4/cu3;->c:Lr4/sx3;

    iput-object p4, p0, Lr4/cu3;->d:Lr4/xt3;

    iput-object p5, p0, Lr4/cu3;->e:Lr4/d04;

    iput-object p6, p0, Lr4/cu3;->f:Lr4/ma;

    new-instance p1, Lr4/w04;

    invoke-direct {p1}, Lr4/w04;-><init>()V

    iput-object p1, p0, Lr4/cu3;->g:Lr4/w04;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/cu3;->i:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lr4/cu3;->l:J

    invoke-static {}, Lr4/ws3;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lr4/cu3;->a:J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lr4/cu3;->j(J)Lr4/vc;

    move-result-object p1

    iput-object p1, p0, Lr4/cu3;->k:Lr4/vc;

    return-void
.end method

.method public static synthetic b(Lr4/cu3;)J
    .locals 2

    iget-wide v0, p0, Lr4/cu3;->a:J

    return-wide v0
.end method

.method public static synthetic c(Lr4/cu3;)Lr4/sx3;
    .locals 0

    iget-object p0, p0, Lr4/cu3;->c:Lr4/sx3;

    return-object p0
.end method

.method public static synthetic d(Lr4/cu3;)J
    .locals 2

    iget-wide v0, p0, Lr4/cu3;->j:J

    return-wide v0
.end method

.method public static synthetic e(Lr4/cu3;)Lr4/vc;
    .locals 0

    iget-object p0, p0, Lr4/cu3;->k:Lr4/vc;

    return-object p0
.end method

.method public static synthetic h(Lr4/cu3;)J
    .locals 2

    iget-wide v0, p0, Lr4/cu3;->l:J

    return-wide v0
.end method

.method public static synthetic i(Lr4/cu3;JJ)V
    .locals 1

    iget-object v0, p0, Lr4/cu3;->g:Lr4/w04;

    iput-wide p1, v0, Lr4/w04;->a:J

    iput-wide p3, p0, Lr4/cu3;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/cu3;->i:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/cu3;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Lr4/xb;)V
    .locals 9

    iget-boolean v0, p0, Lr4/cu3;->n:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lr4/cu3;->j:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v0}, Lr4/hu3;->v(Lr4/hu3;)J

    move-result-wide v0

    iget-wide v2, p0, Lr4/cu3;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v6

    iget-object v2, p0, Lr4/cu3;->m:Lr4/d14;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v6}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lr4/d14;->e(JIIILr4/c14;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/cu3;->n:Z

    return-void
.end method

.method public final f()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    :cond_0
    iget-boolean v2, v1, Lr4/cu3;->h:Z

    if-nez v2, :cond_18

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v1, Lr4/cu3;->g:Lr4/w04;

    iget-wide v13, v6, Lr4/w04;->a:J

    invoke-virtual {v1, v13, v14}, Lr4/cu3;->j(J)Lr4/vc;

    move-result-object v6

    iput-object v6, v1, Lr4/cu3;->k:Lr4/vc;

    iget-object v7, v1, Lr4/cu3;->c:Lr4/sx3;

    invoke-virtual {v7, v6}, Lr4/sx3;->g(Lr4/vc;)J

    move-result-wide v6

    iput-wide v6, v1, Lr4/cu3;->l:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    add-long/2addr v6, v13

    iput-wide v6, v1, Lr4/cu3;->l:J

    :cond_1
    iget-object v6, v1, Lr4/cu3;->o:Lr4/hu3;

    iget-object v7, v1, Lr4/cu3;->c:Lr4/sx3;

    invoke-virtual {v7}, Lr4/sx3;->d()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v12, "Invalid bitrate: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v12, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    :goto_0
    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x0

    const/4 v11, -0x1

    :goto_1
    move/from16 v16, v11

    goto :goto_3

    :catch_0
    const/4 v11, -0x1

    :catch_1
    :try_start_4
    const-string v12, "Invalid bitrate header: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v11

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    const/16 v16, -0x1

    :goto_3
    const-string v11, "icy-genre"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v12

    :goto_4
    const-string v11, "icy-name"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_7

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v18, v8

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v18, v12

    :goto_5
    const-string v11, "icy-url"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_8

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v19, v12

    :goto_6
    const-string v11, "icy-pub"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_9

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v20, v8

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/16 v20, 0x0

    :goto_7
    const-string v11, "icy-metaint"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lez v11, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    :try_start_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    :cond_b
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v9, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v11, -0x1

    :goto_9
    move/from16 v21, v11

    goto :goto_b

    :catch_2
    const/4 v11, -0x1

    :catch_3
    :try_start_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_c
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    const/16 v21, -0x1

    :goto_b
    if-eqz v8, :cond_e

    new-instance v12, Lr4/v8;

    move-object v15, v12

    invoke-direct/range {v15 .. v21}, Lr4/v8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_e
    invoke-static {v6, v12}, Lr4/hu3;->R(Lr4/hu3;Lr4/v8;)Lr4/v8;

    iget-object v6, v1, Lr4/cu3;->c:Lr4/sx3;

    iget-object v7, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v7}, Lr4/hu3;->S(Lr4/hu3;)Lr4/v8;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v7}, Lr4/hu3;->S(Lr4/hu3;)Lr4/v8;

    move-result-object v7

    iget v7, v7, Lr4/v8;->q:I

    if-eq v7, v10, :cond_f

    new-instance v6, Lr4/vs3;

    iget-object v7, v1, Lr4/cu3;->c:Lr4/sx3;

    iget-object v8, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v8}, Lr4/hu3;->S(Lr4/hu3;)Lr4/v8;

    move-result-object v8

    iget v8, v8, Lr4/v8;->q:I

    invoke-direct {v6, v7, v8, v1}, Lr4/vs3;-><init>(Lr4/o8;ILr4/us3;)V

    iget-object v7, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-virtual {v7}, Lr4/hu3;->u()Lr4/d14;

    move-result-object v7

    iput-object v7, v1, Lr4/cu3;->m:Lr4/d14;

    invoke-static {}, Lr4/hu3;->N()Lr4/e5;

    move-result-object v8

    invoke-interface {v7, v8}, Lr4/d14;->f(Lr4/e5;)V

    :cond_f
    move-object v8, v6

    iget-object v7, v1, Lr4/cu3;->d:Lr4/xt3;

    iget-object v9, v1, Lr4/cu3;->b:Landroid/net/Uri;

    iget-object v6, v1, Lr4/cu3;->c:Lr4/sx3;

    invoke-virtual {v6}, Lr4/sx3;->d()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lr4/cu3;->l:J

    iget-object v15, v1, Lr4/cu3;->e:Lr4/d04;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v2, v13

    move-wide/from16 v13, v16

    invoke-interface/range {v7 .. v15}, Lr4/xt3;->c(Lr4/k6;Landroid/net/Uri;Ljava/util/Map;JJLr4/d04;)V

    iget-object v6, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v6}, Lr4/hu3;->S(Lr4/hu3;)Lr4/v8;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v6}, Lr4/xt3;->b()V

    :cond_10
    iget-boolean v6, v1, Lr4/cu3;->i:Z

    if-eqz v6, :cond_11

    iget-object v6, v1, Lr4/cu3;->d:Lr4/xt3;

    iget-wide v7, v1, Lr4/cu3;->j:J

    invoke-interface {v6, v2, v3, v7, v8}, Lr4/xt3;->l(JJ)V

    iput-boolean v5, v1, Lr4/cu3;->i:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_11
    move-wide v13, v2

    const/4 v2, 0x0

    :cond_12
    :goto_c
    if-nez v2, :cond_14

    :try_start_8
    iget-boolean v3, v1, Lr4/cu3;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_13

    :try_start_9
    iget-object v3, v1, Lr4/cu3;->f:Lr4/ma;

    invoke-virtual {v3}, Lr4/ma;->c()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v3, v1, Lr4/cu3;->d:Lr4/xt3;

    iget-object v6, v1, Lr4/cu3;->g:Lr4/w04;

    invoke-interface {v3, v6}, Lr4/xt3;->d(Lr4/w04;)I

    move-result v2

    iget-object v3, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v3}, Lr4/xt3;->e()J

    move-result-wide v6

    iget-object v3, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v3}, Lr4/hu3;->O(Lr4/hu3;)J

    move-result-wide v8

    add-long/2addr v8, v13

    cmp-long v3, v6, v8

    if-lez v3, :cond_12

    iget-object v3, v1, Lr4/cu3;->f:Lr4/ma;

    invoke-virtual {v3}, Lr4/ma;->b()Z

    iget-object v3, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v3}, Lr4/hu3;->Q(Lr4/hu3;)Landroid/os/Handler;

    move-result-object v3

    iget-object v8, v1, Lr4/cu3;->o:Lr4/hu3;

    invoke-static {v8}, Lr4/hu3;->P(Lr4/hu3;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v6

    goto :goto_c

    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    move v5, v2

    goto :goto_f

    :cond_14
    :goto_d
    if-ne v2, v4, :cond_15

    goto :goto_e

    :cond_15
    iget-object v3, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v3}, Lr4/xt3;->e()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    iget-object v3, v1, Lr4/cu3;->g:Lr4/w04;

    iget-object v4, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v4}, Lr4/xt3;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lr4/w04;->a:J

    :cond_16
    move v5, v2

    :goto_e
    iget-object v2, v1, Lr4/cu3;->c:Lr4/sx3;

    invoke-static {v2}, Lr4/lc;->R(Lr4/o8;)V

    if-eqz v5, :cond_0

    goto :goto_10

    :catchall_1
    move-exception v0

    :goto_f
    if-eq v5, v4, :cond_17

    iget-object v2, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v2}, Lr4/xt3;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_17

    iget-object v2, v1, Lr4/cu3;->g:Lr4/w04;

    iget-object v3, v1, Lr4/cu3;->d:Lr4/xt3;

    invoke-interface {v3}, Lr4/xt3;->e()J

    move-result-wide v3

    iput-wide v3, v2, Lr4/w04;->a:J

    :cond_17
    iget-object v2, v1, Lr4/cu3;->c:Lr4/sx3;

    invoke-static {v2}, Lr4/lc;->R(Lr4/o8;)V

    throw v0

    :cond_18
    :goto_10
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/cu3;->h:Z

    return-void
.end method

.method public final j(J)Lr4/vc;
    .locals 2

    new-instance v0, Lr4/qa;

    invoke-direct {v0}, Lr4/qa;-><init>()V

    iget-object v1, p0, Lr4/cu3;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lr4/qa;->a(Landroid/net/Uri;)Lr4/qa;

    invoke-virtual {v0, p1, p2}, Lr4/qa;->c(J)Lr4/qa;

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lr4/qa;->d(I)Lr4/qa;

    invoke-static {}, Lr4/hu3;->M()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/qa;->b(Ljava/util/Map;)Lr4/qa;

    invoke-virtual {v0}, Lr4/qa;->e()Lr4/vc;

    move-result-object p1

    return-object p1
.end method
