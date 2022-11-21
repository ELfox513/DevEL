.class public final Lg5/q6;
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

    iput-object p1, p0, Lg5/q6;->b:Lg5/i7;

    iput-object p2, p0, Lg5/q6;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "app_id"

    iget-object v2, v0, Lg5/q6;->b:Lg5/i7;

    iget-object v3, v0, Lg5/q6;->a:Landroid/os/Bundle;

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v2}, Lg5/f4;->d()V

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "origin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "value"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->j()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v1, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v16, Lg5/ea;

    const-string v7, "triggered_timestamp"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v5, v16

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lg5/ea;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "triggered_event_name"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "triggered_event_params"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v4

    invoke-virtual/range {v7 .. v15}, Lg5/ia;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;

    move-result-object v18

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "timed_out_event_name"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "timed_out_event_params"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v4

    invoke-virtual/range {v7 .. v15}, Lg5/ia;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;

    move-result-object v5

    iget-object v6, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "expired_event_name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "expired_event_params"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v4

    invoke-virtual/range {v7 .. v15}, Lg5/ia;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;

    move-result-object v21
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Lg5/c;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "creation_timestamp"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x0

    const-string v1, "trigger_event_name"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "trigger_timeout"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    const-string v1, "time_to_live"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object v7, v6

    move-object v9, v4

    move-object/from16 v10, v16

    move-object v15, v5

    move-wide/from16 v16, v19

    move-wide/from16 v19, v22

    invoke-direct/range {v7 .. v21}, Lg5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg5/ea;JZLjava/lang/String;Lg5/u;JLg5/u;JLg5/u;)V

    iget-object v1, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->I()Lg5/w8;

    move-result-object v1

    invoke-virtual {v1, v6}, Lg5/w8;->n(Lg5/c;)V

    :catch_0
    return-void
.end method
