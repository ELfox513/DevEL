.class public final Lg5/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic p:Lg5/g7;


# direct methods
.method public constructor <init>(Lg5/g7;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/e7;->p:Lg5/g7;

    iput-boolean p2, p0, Lg5/e7;->a:Z

    iput-object p3, p0, Lg5/e7;->b:Landroid/net/Uri;

    iput-object p4, p0, Lg5/e7;->d:Ljava/lang/String;

    iput-object p5, p0, Lg5/e7;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lg5/e7;->p:Lg5/g7;

    iget-boolean v0, v1, Lg5/e7;->a:Z

    iget-object v3, v1, Lg5/e7;->b:Landroid/net/Uri;

    iget-object v4, v1, Lg5/e7;->d:Ljava/lang/String;

    iget-object v5, v1, Lg5/e7;->k:Ljava/lang/String;

    iget-object v6, v2, Lg5/g7;->a:Lg5/i7;

    invoke-virtual {v6}, Lg5/v5;->c()V

    :try_start_0
    iget-object v6, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->K()Lg5/ia;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "Activity created with data \'referrer\' without required params"

    const-string v9, "_cis"

    const-string v10, "utm_medium"

    const-string v11, "utm_source"

    const-string v12, "utm_campaign"

    const/4 v13, 0x0

    const-string v14, "gclid"

    if-eqz v7, :cond_0

    :goto_0
    move-object v6, v13

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, v6, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->F()Lg5/q3;

    move-result-object v6

    invoke-virtual {v6}, Lg5/q3;->l()Lg5/o3;

    move-result-object v6

    invoke-virtual {v6, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "https://google.com/search?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v15

    :goto_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lg5/ia;->t0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "referrer"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const-string v7, "_cmp"

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    invoke-virtual {v0, v3}, Lg5/ia;->t0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "intent"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v9

    const-string v9, "_cer"

    const-string v15, "gclid=%s"

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, v2, Lg5/g7;->a:Lg5/i7;

    invoke-virtual {v3, v4, v7, v0}, Lg5/i7;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v3, v3, Lg5/i7;->n:Lg5/ra;

    invoke-virtual {v3, v4, v0}, Lg5/ra;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v3, "Activity created with referrer"

    invoke-virtual {v0, v3, v5}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v3, Lg5/c3;->c0:Lg5/b3;

    invoke-virtual {v0, v13, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "_ldl"

    const-string v9, "auto"

    if-eqz v0, :cond_8

    if-eqz v6, :cond_7

    :try_start_3
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    invoke-virtual {v0, v4, v7, v6}, Lg5/i7;->p(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/i7;->n:Lg5/ra;

    invoke-virtual {v0, v4, v6}, Lg5/ra;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v4, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v4, v5}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    const/4 v4, 0x1

    invoke-virtual {v0, v9, v3, v13, v4}, Lg5/i7;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_8
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "utm_term"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "utm_content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    const/4 v4, 0x1

    invoke-virtual {v0, v9, v3, v5, v4}, Lg5/i7;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    iget-object v0, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    invoke-virtual {v0, v8}, Lg5/o3;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, v2, Lg5/g7;->a:Lg5/i7;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v3, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v2, v3, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
