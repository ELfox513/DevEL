.class public final Lg5/h3;
.super Lg5/f4;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public final i:J

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg5/b5;J)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/f4;-><init>(Lg5/b5;)V

    iput-wide p2, p0, Lg5/h3;->i:J

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 13

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "unknown"

    if-nez v1, :cond_1

    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->m()Lg5/o3;

    move-result-object v7

    invoke-static {v0}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v7, v9, v8}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v2

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->m()Lg5/o3;

    move-result-object v7

    invoke-static {v0}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v6, :cond_2

    const-string v6, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v5

    :cond_3
    :goto_1
    :try_start_1
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v2

    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v3, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v2

    move-object v2, v8

    goto :goto_3

    :catch_2
    move-object v7, v2

    :goto_3
    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->F()Lg5/q3;

    move-result-object v8

    invoke-virtual {v8}, Lg5/q3;->m()Lg5/o3;

    move-result-object v8

    invoke-static {v0}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    invoke-virtual {v8, v10, v9, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v7

    :goto_4
    iput-object v0, p0, Lg5/h3;->c:Ljava/lang/String;

    iput-object v6, p0, Lg5/h3;->f:Ljava/lang/String;

    iput-object v2, p0, Lg5/h3;->d:Ljava/lang/String;

    iput v3, p0, Lg5/h3;->e:I

    iput-object v8, p0, Lg5/h3;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lg5/h3;->h:J

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->M()Ljava/lang/String;

    move-result-object v2

    const-string v6, "am"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iget-object v6, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->s()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->p()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->p()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->s()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->q()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->p()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->p()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->q()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->p()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->F()Lg5/q3;

    move-result-object v7

    invoke-virtual {v7}, Lg5/q3;->q()Lg5/o3;

    move-result-object v7

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v7, v8}, Lg5/o3;->a(Ljava/lang/String;)V

    :goto_6
    iput-object v5, p0, Lg5/h3;->l:Ljava/lang/String;

    iput-object v5, p0, Lg5/h3;->m:Ljava/lang/String;

    iput-object v5, p0, Lg5/h3;->n:Ljava/lang/String;

    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->G()Lg5/b;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->L()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg5/h3;->m:Ljava/lang/String;

    :cond_6
    const/4 v2, 0x0

    :try_start_3
    iget-object v7, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->R()Ljava/lang/String;

    move-result-object v8

    const-string v9, "google_app_id"

    invoke-static {v7, v9, v8}, Lg5/o7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v3, v8, :cond_7

    move-object v8, v7

    goto :goto_7

    :cond_7
    move-object v8, v5

    :goto_7
    iput-object v8, p0, Lg5/h3;->l:Ljava/lang/String;

    invoke-static {}, Lb5/ud;->b()Z

    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->u()Lg5/g;

    move-result-object v8

    sget-object v9, Lg5/c3;->f0:Lg5/b3;

    invoke-virtual {v8, v2, v9}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v9, "admob_app_id"

    if-eqz v8, :cond_b

    :try_start_4
    iget-object v8, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->R()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v8}, Lg5/u4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    const-string v8, "ga_app_id"

    invoke-static {v8, v11, v10}, Lg5/u4;->b(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eq v3, v12, :cond_9

    move-object v5, v8

    :cond_9
    iput-object v5, p0, Lg5/h3;->n:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_a
    invoke-static {v9, v11, v10}, Lg5/u4;->b(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lg5/h3;->m:Ljava/lang/String;

    goto :goto_a

    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->R()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_9

    :cond_c
    invoke-static {v3}, Lg5/u4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-static {v9, v7, v5}, Lg5/u4;->b(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lg5/h3;->m:Ljava/lang/String;

    :cond_d
    :goto_a
    if-nez v6, :cond_f

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->q()Lg5/o3;

    move-result-object v3

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lg5/h3;->c:Ljava/lang/String;

    iget-object v7, p0, Lg5/h3;->l:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lg5/h3;->m:Ljava/lang/String;

    goto :goto_b

    :cond_e
    iget-object v7, p0, Lg5/h3;->l:Ljava/lang/String;

    :goto_b
    invoke-virtual {v3, v5, v6, v7}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception v3

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->F()Lg5/q3;

    move-result-object v5

    invoke-virtual {v5}, Lg5/q3;->m()Lg5/o3;

    move-result-object v5

    invoke-static {v0}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v5, v6, v0, v3}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    :goto_c
    iput-object v2, p0, Lg5/h3;->j:Ljava/util/List;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->G()Lg5/b;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Lg5/g;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_d

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->s()Lg5/o3;

    move-result-object v0

    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v5

    const-string v6, "safelisted event"

    invoke-virtual {v5, v6, v3}, Lg5/ia;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_e

    :cond_13
    :goto_d
    iput-object v0, p0, Lg5/h3;->j:Ljava/util/List;

    :goto_e
    if-eqz v1, :cond_14

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld4/b;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lg5/h3;->k:I

    return-void

    :cond_14
    iput v4, p0, Lg5/h3;->k:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget v0, p0, Lg5/h3;->k:I

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget v0, p0, Lg5/h3;->e:I

    return v0
.end method

.method public final l(Ljava/lang/String;)Lg5/pa;
    .locals 34

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lg5/v5;->c()V

    new-instance v31, Lg5/pa;

    invoke-virtual/range {p0 .. p0}, Lg5/h3;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lg5/h3;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget-object v5, v1, Lg5/h3;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget v0, v1, Lg5/h3;->e:I

    int-to-long v6, v0

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget-object v0, v1, Lg5/h3;->f:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lg5/h3;->f:Ljava/lang/String;

    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->l()J

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    invoke-virtual/range {p0 .. p0}, Lg5/v5;->c()V

    iget-wide v9, v1, Lg5/h3;->h:J

    const-wide/16 v11, 0x0

    const/4 v2, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_4

    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v9

    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lg5/v5;->c()V

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "MD5"

    invoke-static {v14}, Lg5/ia;->n(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    const-wide/16 v15, -0x1

    if-nez v14, :cond_0

    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v9, "Could not get MD5 instance"

    invoke-virtual {v0, v9}, Lg5/o3;->a(Ljava/lang/String;)V

    :goto_0
    move-wide v9, v15

    goto :goto_1

    :cond_0
    if-eqz v13, :cond_3

    :try_start_0
    invoke-virtual {v9, v0, v10}, Lg5/ia;->U(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v0}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object v0

    iget-object v10, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x40

    invoke-virtual {v0, v10, v13}, Ld4/d;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v10, v0

    if-lez v10, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lg5/ia;->q0([B)J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v10, "Could not get signatures"

    invoke-virtual {v0, v10}, Lg5/o3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-wide v15, v11

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v9, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->F()Lg5/q3;

    move-result-object v9

    invoke-virtual {v9}, Lg5/q3;->m()Lg5/o3;

    move-result-object v9

    const-string v10, "Package name not found"

    invoke-virtual {v9, v10, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v9, v11

    :goto_1
    iput-wide v9, v1, Lg5/h3;->h:J

    :cond_4
    move-wide v13, v9

    iget-object v0, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->j()Z

    move-result v0

    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->A()Lg5/g4;

    move-result-object v9

    iget-boolean v9, v9, Lg5/g4;->p:Z

    const/4 v10, 0x1

    xor-int/lit8 v15, v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lg5/v5;->c()V

    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->j()Z

    move-result v9

    const/4 v11, 0x0

    if-nez v9, :cond_5

    :goto_2
    move-object/from16 v20, v11

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lb5/gf;->b()Z

    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->u()Lg5/g;

    move-result-object v9

    sget-object v12, Lg5/c3;->h0:Lg5/b3;

    invoke-virtual {v9, v11, v12}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->F()Lg5/q3;

    move-result-object v9

    invoke-virtual {v9}, Lg5/q3;->q()Lg5/o3;

    move-result-object v9

    const-string v12, "Disabled IID for tests."

    invoke-virtual {v9, v12}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v12, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v9, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    :try_start_2
    new-array v12, v10, [Ljava/lang/Class;

    const-class v18, Landroid/content/Context;

    aput-object v18, v12, v2

    const-string v11, "getInstance"

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v10

    aput-object v10, v12, v2

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    :try_start_3
    const-string v10, "getFirebaseInstanceId"

    new-array v12, v2, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v20, v9

    goto :goto_4

    :catch_1
    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->F()Lg5/q3;

    move-result-object v9

    invoke-virtual {v9}, Lg5/q3;->s()Lg5/o3;

    move-result-object v9

    const-string v10, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v9, v10}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->F()Lg5/q3;

    move-result-object v9

    invoke-virtual {v9}, Lg5/q3;->t()Lg5/o3;

    move-result-object v9

    const-string v10, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v9, v10}, Lg5/o3;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    nop

    :goto_3
    const/16 v20, 0x0

    :goto_4
    iget-object v9, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->A()Lg5/g4;

    move-result-object v10

    iget-object v10, v10, Lg5/g4;->e:Lg5/b4;

    invoke-virtual {v10}, Lg5/b4;->a()J

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-nez v12, :cond_9

    iget-wide v9, v9, Lg5/b5;->G:J

    move-object v12, v3

    move-wide/from16 v21, v9

    goto :goto_5

    :cond_9
    move-object v12, v3

    iget-wide v2, v9, Lg5/b5;->G:J

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide/from16 v21, v2

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget v11, v1, Lg5/h3;->k:I

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g;->v()Z

    move-result v23

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v2}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "deferred_analytics_collection"

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lg5/f4;->d()V

    iget-object v3, v1, Lg5/h3;->m:Ljava/lang/String;

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    const-string v9, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v2, v9}, Lg5/g;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_a

    const/16 v25, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v9, 0x1

    xor-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_6
    iget-wide v9, v1, Lg5/h3;->i:J

    iget-object v2, v1, Lg5/h3;->j:Ljava/util/List;

    invoke-static {}, Lb5/ud;->b()Z

    move-object/from16 v16, v2

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    move-object/from16 v19, v3

    sget-object v3, Lg5/c3;->f0:Lg5/b3;

    move-wide/from16 v26, v9

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lg5/h3;->o()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v29, v2

    goto :goto_7

    :cond_b
    move-object/from16 v29, v9

    :goto_7
    const-wide/32 v9, 0xa822

    const-wide/16 v17, 0x0

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g4;->l()Lg5/h;

    move-result-object v2

    invoke-virtual {v2}, Lg5/h;->i()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v28, v16

    move-object/from16 v2, v31

    move-object/from16 v32, v19

    move-object v3, v12

    move/from16 v33, v11

    move-wide v11, v13

    move-object/from16 v13, p1

    move v14, v0

    move-object/from16 v16, v20

    move-wide/from16 v19, v21

    move/from16 v21, v33

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v32

    invoke-direct/range {v2 .. v30}, Lg5/pa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/h3;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/h3;->c:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/h3;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/h3;->n:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/h3;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lb5/fd;->b()Z

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    sget-object v1, Lg5/c3;->w0:Lg5/b3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg5/v5;->c()V

    :cond_0
    invoke-virtual {p0}, Lg5/f4;->d()V

    iget-object v0, p0, Lg5/h3;->l:Ljava/lang/String;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/h3;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg5/h3;->j:Ljava/util/List;

    return-object v0
.end method
