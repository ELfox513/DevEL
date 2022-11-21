.class public final Lg5/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lg5/r6;->b:Lg5/i7;

    iput-object p2, p0, Lg5/r6;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    move-object/from16 v0, p0

    const-string v1, "creation_timestamp"

    const-string v2, "app_id"

    iget-object v3, v0, Lg5/r6;->b:Lg5/i7;

    iget-object v4, v0, Lg5/r6;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Lg5/v5;->c()V

    invoke-virtual {v3}, Lg5/f4;->d()V

    invoke-static {v4}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->j()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->u()Lg5/g;

    move-result-object v6

    sget-object v7, Lg5/c3;->r0:Lg5/b3;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lg5/ea;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Lg5/ea;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lg5/ea;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Lg5/ea;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object/from16 v24, v6

    :try_start_0
    iget-object v5, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v9

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "expired_event_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "expired_event_params"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v5, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->u()Lg5/g;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    const-string v14, "origin"

    if-eqz v5, :cond_1

    move-object v13, v6

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    :goto_1
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const/4 v5, 0x1

    const/16 v17, 0x1

    move-object/from16 v36, v14

    move-wide v14, v15

    move/from16 v16, v5

    invoke-virtual/range {v9 .. v17}, Lg5/ia;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;

    move-result-object v35
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v5, Lg5/c;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    iget-object v2, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v23, v6

    goto :goto_2

    :cond_2
    move-object/from16 v2, v36

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    const-string v1, "active"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    const-string v1, "trigger_event_name"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const-string v1, "trigger_timeout"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    const/16 v32, 0x0

    const-string v1, "time_to_live"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v33

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v35}, Lg5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg5/ea;JZLjava/lang/String;Lg5/u;JLg5/u;JLg5/u;)V

    iget-object v1, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->I()Lg5/w8;

    move-result-object v1

    invoke-virtual {v1, v5}, Lg5/w8;->n(Lg5/c;)V

    :catch_0
    return-void

    :cond_3
    iget-object v1, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Conditional property not cleared since app measurement is disabled"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void
.end method
