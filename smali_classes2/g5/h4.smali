.class public final Lg5/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb5/t0;

.field public final synthetic b:Landroid/content/ServiceConnection;

.field public final synthetic d:Lg5/i4;


# direct methods
.method public constructor <init>(Lg5/i4;Lb5/t0;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lg5/h4;->d:Lg5/i4;

    iput-object p2, p0, Lg5/h4;->a:Lb5/t0;

    iput-object p3, p0, Lg5/h4;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lg5/h4;->d:Lg5/i4;

    iget-object v1, v0, Lg5/i4;->b:Lg5/j4;

    invoke-static {v0}, Lg5/i4;->a(Lg5/i4;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lg5/h4;->a:Lb5/t0;

    iget-object v3, p0, Lg5/h4;->b:Landroid/content/ServiceConnection;

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->P()Lg5/y4;

    move-result-object v4

    invoke-virtual {v4}, Lg5/v5;->c()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package_name"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v4}, Lb5/t0;->C0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v4, "Install Referrer Service returned a null response"

    invoke-virtual {v2, v4}, Lg5/o3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v5, v2

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->m()Lg5/o3;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v4, v6, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->P()Lg5/y4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-static {}, Lg5/b5;->o()V

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v2, v8, v6

    if-nez v2, :cond_2

    iget-object v0, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v2, "Service response is missing Install Referrer install timestamp"

    invoke-virtual {v0, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "install_referrer"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    const-string v12, "InstallReferrer API result"

    invoke-virtual {v4, v12, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->K()Lg5/ia;

    move-result-object v4

    const-string v12, "?"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Lg5/ia;->t0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v0, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v2, "No campaign params defined in Install Referrer result"

    invoke-virtual {v0, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v4, "medium"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v12, "(not set)"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "organic"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "referrer_click_timestamp_seconds"

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long v4, v4, v10

    cmp-long v10, v4, v6

    if-nez v10, :cond_6

    iget-object v0, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    invoke-virtual {v0, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v6, "click_timestamp"

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->A()Lg5/g4;

    move-result-object v4

    iget-object v4, v4, Lg5/g4;->f:Lg5/b4;

    invoke-virtual {v4}, Lg5/b4;->a()J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_8

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    const-string v5, "Logging Install Referrer campaign from module while it may have already been logged."

    invoke-virtual {v4, v5}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->j()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->A()Lg5/g4;

    move-result-object v4

    iget-object v4, v4, Lg5/g4;->f:Lg5/b4;

    invoke-virtual {v4, v8, v9}, Lg5/b4;->b(J)V

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->q()Lg5/o3;

    move-result-object v4

    const-string v5, "Logging Install Referrer campaign from gmscore with "

    const-string v6, "referrer API v2"

    invoke-virtual {v4, v5, v6}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "_cis"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->D()Lg5/i7;

    move-result-object v4

    const-string v5, "auto"

    const-string v6, "_cmp"

    invoke-virtual {v4, v5, v6, v2, v0}, Lg5/i7;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v0, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v2, "No referrer defined in Install Referrer response"

    invoke-virtual {v0, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_a
    :goto_3
    invoke-static {}, Lb4/a;->b()Lb4/a;

    move-result-object v0

    iget-object v1, v1, Lg5/j4;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lb4/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
