.class public final Lr4/g60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lr4/gt;",
        ":",
        "Lr4/tr0;",
        ":",
        "Lr4/cs0;",
        ":",
        "Lr4/e80;",
        ":",
        "Lr4/bt0;",
        ":",
        "Lr4/gt0;",
        ":",
        "Lr4/kt0;",
        ":",
        "Lr4/cf1;",
        ":",
        "Lr4/nt0;",
        ":",
        "Lr4/pt0;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lz2/b;

.field public final b:Lr4/ls1;

.field public final c:Lr4/xt2;

.field public final d:Lr4/hm0;

.field public final e:Lr4/zd0;

.field public final f:Lr4/c12;

.field public g:La3/v;


# direct methods
.method public constructor <init>(Lz2/b;Lr4/zd0;Lr4/c12;Lr4/ls1;Lr4/xt2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/g60;->g:La3/v;

    iput-object p1, p0, Lr4/g60;->a:Lz2/b;

    iput-object p2, p0, Lr4/g60;->e:Lr4/zd0;

    iput-object p3, p0, Lr4/g60;->f:Lr4/c12;

    iput-object p4, p0, Lr4/g60;->b:Lr4/ls1;

    iput-object p5, p0, Lr4/g60;->c:Lr4/xt2;

    new-instance p1, Lr4/hm0;

    invoke-direct {p1, v0}, Lr4/hm0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lr4/g60;->d:Lr4/hm0;

    return-void
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object p0

    invoke-virtual {p0}, Lb3/g;->h()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static e(Landroid/content/Context;Lr4/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lr4/u;->f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p0, p3, p4}, Lr4/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Lr4/v; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_1
    :goto_0
    return-object p2
.end method

.method public static f(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    :try_start_0
    const-string v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public static synthetic g(Lr4/g60;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/g60;->k(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lr4/gt;

    invoke-virtual {p0, p1, p2}, Lr4/g60;->b(Lr4/gt;Ljava/util/Map;)V

    return-void
.end method

.method public final b(Lr4/gt;Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "u"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v8

    check-cast v10, Lr4/cs0;

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lr4/kk0;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v11

    const-string v0, "a"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "Action missing from an open GMSG."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v7, Lr4/g60;->a:Lz2/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz2/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lr4/g60;->a:Lz2/b;

    invoke-virtual {v0, v11}, Lz2/b;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {v10}, Lr4/cs0;->G()Lr4/no2;

    move-result-object v0

    invoke-interface {v10}, Lr4/cs0;->M()Lr4/so2;

    move-result-object v3

    const/4 v12, 0x0

    const-string v4, ""

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v0, v0, Lr4/no2;->f0:Z

    iget-object v3, v3, Lr4/so2;->b:Ljava/lang/String;

    move v13, v0

    move-object v14, v3

    goto :goto_1

    :cond_3
    move-object v14, v4

    const/4 v13, 0x0

    :goto_1
    sget-object v0, Lr4/rz;->Z6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sc"

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    :goto_2
    const-string v0, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Lr4/cs0;->T()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v7, v12}, Lr4/g60;->j(Z)V

    move-object v0, v8

    check-cast v0, Lr4/kt0;

    invoke-static/range {p2 .. p2}, Lr4/g60;->c(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p2 .. p2}, Lr4/g60;->d(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v0, v1, v2, v6}, Lr4/kt0;->S0(ZIZ)V

    return-void

    :cond_6
    const-string v0, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7, v12}, Lr4/g60;->j(Z)V

    if-eqz v11, :cond_7

    move-object v0, v8

    check-cast v0, Lr4/kt0;

    invoke-static/range {p2 .. p2}, Lr4/g60;->c(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p2 .. p2}, Lr4/g60;->d(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v0, v1, v2, v11, v6}, Lr4/kt0;->m0(ZILjava/lang/String;Z)V

    return-void

    :cond_7
    move-object v15, v8

    check-cast v15, Lr4/kt0;

    invoke-static/range {p2 .. p2}, Lr4/g60;->c(Ljava/util/Map;)Z

    move-result v16

    invoke-static/range {p2 .. p2}, Lr4/g60;->d(Ljava/util/Map;)I

    move-result v17

    const-string v0, "html"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    const-string v0, "baseurl"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move/from16 v20, v6

    invoke-interface/range {v15 .. v20}, Lr4/kt0;->Q0(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_8
    const-string v0, "chrome_custom_tab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "true"

    if-eqz v0, :cond_13

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lr4/rz;->V2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    sget-object v1, Lr4/rz;->b3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "User opt out chrome custom tab."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    sget-object v1, Lr4/rz;->Z2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    const/4 v12, 0x1

    goto :goto_4

    :cond_b
    sget-object v1, Lr4/rz;->a3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x3b

    invoke-static {v4}, Lr4/m03;->b(C)Lr4/m03;

    move-result-object v4

    invoke-static {v4}, Lr4/j13;->b(Lr4/m03;)Lr4/j13;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/j13;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_3

    :cond_e
    :goto_4
    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr4/q00;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v12, :cond_12

    if-nez v0, :cond_f

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lr4/g60;->k(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {v7, v2}, Lr4/g60;->j(Z)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Cannot open browser with null or empty url"

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Lr4/g60;->k(I)V

    return-void

    :cond_10
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v10}, Lr4/cs0;->H()Lr4/u;

    move-result-object v2

    invoke-interface {v10}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v3

    invoke-interface {v10}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lr4/g60;->e(Landroid/content/Context;Lr4/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lr4/g60;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v13, :cond_11

    iget-object v1, v7, Lr4/g60;->f:Lr4/c12;

    if-eqz v1, :cond_11

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2, v14}, Lr4/g60;->h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    new-instance v1, Lr4/c60;

    invoke-direct {v1, v7}, Lr4/c60;-><init>(Lr4/g60;)V

    iput-object v1, v7, Lr4/g60;->g:La3/v;

    move-object v1, v8

    check-cast v1, Lr4/kt0;

    new-instance v2, La3/e;

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v7, Lr4/g60;->g:La3/v;

    invoke-static {v0}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v18}, La3/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    invoke-interface {v1, v2, v6}, Lr4/kt0;->C0(La3/e;Z)V

    return-void

    :cond_12
    :goto_5
    const-string v0, "use_first_package"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lr4/g60;->i(Lr4/gt;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_13
    const-string v0, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "system_browser"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lr4/g60;->i(Lr4/gt;Ljava/util/Map;ZLjava/lang/String;Z)V

    return-void

    :cond_15
    :goto_6
    const-string v0, "open_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "p"

    if-eqz v0, :cond_1c

    sget-object v0, Lr4/rz;->S5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {v7, v2}, Lr4/g60;->j(Z)V

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "Package name missing from open app action."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_17
    if-eqz v13, :cond_19

    iget-object v1, v7, Lr4/g60;->f:Lr4/c12;

    if-eqz v1, :cond_19

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v0, v14}, Lr4/g60;->h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    return-void

    :cond_19
    :goto_7
    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v0, "Cannot get package manager from open app action."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v8

    check-cast v1, Lr4/kt0;

    new-instance v2, La3/e;

    iget-object v3, v7, Lr4/g60;->g:La3/v;

    invoke-direct {v2, v0, v3}, La3/e;-><init>(Landroid/content/Intent;La3/v;)V

    invoke-interface {v1, v2, v6}, Lr4/kt0;->C0(La3/e;Z)V

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual {v7, v2}, Lr4/g60;->j(Z)V

    const-string v0, "intent_url"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1e

    :try_start_0
    invoke-static {v3, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error parsing the url: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1d

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v0, v5}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_9
    move-object v0, v4

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v10}, Lr4/cs0;->H()Lr4/u;

    move-result-object v5

    invoke-interface {v10}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v2

    invoke-interface {v10}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v4, v5, v3, v2, v12}, Lr4/g60;->e(Landroid/content/Context;Lr4/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lr4/g60;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Lr4/rz;->T5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_1f
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_20
    :goto_a
    sget-object v2, Lr4/rz;->e6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v12, "event_id"

    if-eqz v2, :cond_21

    const-string v2, "intent_async"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v16, 0x1

    goto :goto_b

    :cond_21
    const/16 v16, 0x0

    :goto_b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_22

    new-instance v4, Lr4/e60;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, p1

    move-object/from16 v18, v5

    move-object/from16 v19, v15

    move-object v15, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lr4/e60;-><init>(Lr4/g60;ZLr4/gt;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v15, v7, Lr4/g60;->g:La3/v;

    const/4 v6, 0x0

    goto :goto_c

    :cond_22
    move-object/from16 v18, v5

    move-object/from16 v19, v15

    :goto_c
    const-string v1, "openIntentAsync"

    if-eqz v0, :cond_25

    if-eqz v13, :cond_24

    iget-object v2, v7, Lr4/g60;->f:Lr4/c12;

    if-eqz v2, :cond_24

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v2, v3, v14}, Lr4/g60;->h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    if-eqz v16, :cond_23

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v18

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lr4/e80;

    invoke-interface {v0, v1, v3}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void

    :cond_24
    move-object v1, v8

    check-cast v1, Lr4/kt0;

    new-instance v2, La3/e;

    iget-object v3, v7, Lr4/g60;->g:La3/v;

    invoke-direct {v2, v0, v3}, La3/e;-><init>(Landroid/content/Intent;La3/v;)V

    invoke-interface {v1, v2, v6}, Lr4/kt0;->C0(La3/e;Z)V

    return-void

    :cond_25
    move-object/from16 v3, v18

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v10}, Lr4/cs0;->H()Lr4/u;

    move-result-object v4

    invoke-interface {v10}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v5

    invoke-interface {v10}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v2, v4, v0, v5, v11}, Lr4/g60;->e(Landroid/content/Context;Lr4/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lr4/g60;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_26
    if-eqz v13, :cond_28

    iget-object v0, v7, Lr4/g60;->f:Lr4/c12;

    if-eqz v0, :cond_28

    invoke-interface {v10}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v11, v14}, Lr4/g60;->h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v16, :cond_27

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lr4/e80;

    invoke-interface {v0, v1, v3}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    return-void

    :cond_28
    move-object v0, v8

    check-cast v0, Lr4/kt0;

    new-instance v1, La3/e;

    const-string v2, "i"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    const-string v2, "m"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    const-string v2, "c"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    const-string v2, "f"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    const-string v2, "e"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    iget-object v2, v7, Lr4/g60;->g:La3/v;

    move-object/from16 v20, v1

    move-object/from16 v22, v11

    move-object/from16 v28, v2

    invoke-direct/range {v20 .. v28}, La3/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La3/v;)V

    invoke-interface {v0, v1, v6}, Lr4/kt0;->C0(La3/e;Z)V

    return-void
.end method

.method public final h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p4

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p2}, Lb3/k2;->i(Landroid/content/Context;)Z

    move-result v7

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p2}, Lb3/k2;->d(Landroid/content/Context;)Lb3/y0;

    move-result-object v8

    iget-object v2, v0, Lr4/g60;->b:Lr4/ls1;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lr4/g60;->c:Lr4/xt2;

    iget-object v4, v0, Lr4/g60;->f:Lr4/c12;

    const-string v6, "offline_open"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lr4/k12;->h7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    check-cast v1, Lr4/cs0;

    invoke-interface {v1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/vt0;->g()Z

    move-result v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v7, :cond_2

    iget-object v1, v0, Lr4/g60;->f:Lr4/c12;

    iget-object v2, v0, Lr4/g60;->d:Lr4/hm0;

    invoke-virtual {v1, v2, v9}, Lr4/c12;->e(Lr4/hm0;Ljava/lang/String;)V

    return v11

    :cond_2
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p2}, Lr/x0;->b(Landroid/content/Context;)Lr/x0;

    move-result-object v3

    invoke-virtual {v3}, Lr/x0;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    sget-object v3, Lr4/rz;->a6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/vt0;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, v0, Lr4/g60;->f:Lr4/c12;

    iget-object v5, v0, Lr4/g60;->b:Lr4/ls1;

    iget-object v6, v0, Lr4/g60;->c:Lr4/xt2;

    move-object v3, v8

    move-object/from16 v7, p4

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lr4/k12;->g7(Landroid/app/Activity;La3/n;Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    check-cast v1, Lr4/kt0;

    iget-object v3, v0, Lr4/g60;->f:Lr4/c12;

    iget-object v4, v0, Lr4/g60;->b:Lr4/ls1;

    iget-object v5, v0, Lr4/g60;->c:Lr4/xt2;

    invoke-static {}, Lz2/t;->f()Lb3/g;

    move-result-object v2

    invoke-virtual {v2}, Lb3/g;->h()I

    move-result v11

    move-object v2, v8

    move-object/from16 v6, p4

    move-object v7, p3

    move v8, v11

    invoke-interface/range {v1 .. v8}, Lr4/kt0;->j0(Lb3/y0;Lr4/c12;Lr4/ls1;Lr4/xt2;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object v2, v0, Lr4/g60;->b:Lr4/ls1;

    if-eqz v2, :cond_5

    iget-object v3, v0, Lr4/g60;->c:Lr4/xt2;

    iget-object v4, v0, Lr4/g60;->f:Lr4/c12;

    const-string v6, "dialog_impression"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lr4/k12;->h7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Lr4/gt;->F0()V

    return v10

    :cond_6
    :goto_2
    iget-object v1, v0, Lr4/g60;->f:Lr4/c12;

    invoke-virtual {v1, v9}, Lr4/c12;->f(Ljava/lang/String;)V

    iget-object v1, v0, Lr4/g60;->b:Lr4/ls1;

    if-eqz v1, :cond_b

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {p2}, Lr/x0;->b(Landroid/content/Context;)Lr/x0;

    move-result-object v1

    invoke-virtual {v1}, Lr/x0;->a()Z

    move-result v1

    const-string v3, "dialog_not_shown_reason"

    if-nez v1, :cond_7

    const-string v1, "notifications_disabled"

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    const-string v1, "work_manager_unavailable"

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    sget-object v1, Lr4/rz;->a6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "notification_flow_disabled"

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v2, :cond_a

    const-string v1, "fullscreen_no_activity"

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    iget-object v2, v0, Lr4/g60;->b:Lr4/ls1;

    iget-object v3, v0, Lr4/g60;->c:Lr4/xt2;

    iget-object v4, v0, Lr4/g60;->f:Lr4/c12;

    const-string v6, "dialog_not_shown"

    move-object v1, p2

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lr4/k12;->i7(Landroid/content/Context;Lr4/ls1;Lr4/xt2;Lr4/c12;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    return v11
.end method

.method public final i(Lr4/gt;Ljava/util/Map;ZLjava/lang/String;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lr4/g60;->j(Z)V

    move-object v4, v0

    check-cast v4, Lr4/cs0;

    invoke-interface {v4}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lr4/cs0;->H()Lr4/u;

    move-result-object v6

    invoke-interface {v4}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const-string v9, "u"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v5, v6, v9, v7, v11}, Lr4/g60;->e(Landroid/content/Context;Lr4/u;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lr4/g60;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "use_first_package"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v12, "use_running_process"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "use_custom_tabs"

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lr4/rz;->T2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v14

    invoke-virtual {v14, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v14, "http"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v15, "https"

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    :cond_4
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v5, v6, v7}, Lr4/f60;->a(Landroid/net/Uri;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v11, v5, v6, v7}, Lr4/f60;->a(Landroid/net/Uri;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v3, :cond_5

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v5, v9}, Lb3/k2;->b0(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v5, v11}, Lb3/k2;->b0(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    invoke-static {v9, v2, v5, v6, v7}, Lr4/f60;->c(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v9, v3, v5, v6, v7}, Lr4/f60;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_7

    invoke-static {v11, v5, v6, v7}, Lr4/f60;->b(Landroid/content/Intent;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v9, v3, v5, v6, v7}, Lr4/f60;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {v11, v5, v6, v7}, Lr4/f60;->b(Landroid/content/Intent;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_b

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_b

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    add-int/lit8 v15, v11, 0x1

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v9, v12, v5, v6, v7}, Lr4/f60;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_a
    move v11, v15

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v9, v2, v5, v6, v7}, Lr4/f60;->d(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lr4/u;Landroid/view/View;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_c
    :goto_3
    move-object v11, v9

    :cond_d
    :goto_4
    if-eqz p3, :cond_f

    iget-object v2, v1, Lr4/g60;->f:Lr4/c12;

    if-eqz v2, :cond_f

    if-eqz v11, :cond_f

    invoke-interface {v4}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-virtual {v1, v0, v2, v3, v4}, Lr4/g60;->h(Lr4/gt;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    return-void

    :cond_f
    :goto_5
    :try_start_0
    check-cast v0, Lr4/kt0;

    new-instance v2, La3/e;

    iget-object v3, v1, Lr4/g60;->g:La3/v;

    invoke-direct {v2, v11, v3}, La3/e;-><init>(Landroid/content/Intent;La3/v;)V

    move/from16 v3, p5

    invoke-interface {v0, v2, v3}, Lr4/kt0;->C0(La3/e;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    iget-object v0, p0, Lr4/g60;->e:Lr4/zd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/zd0;->i(Z)V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 4

    iget-object v0, p0, Lr4/g60;->b:Lr4/ls1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/rz;->i6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "cct_open_status"

    const-string v2, "cct_action"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/g60;->c:Lr4/xt2;

    invoke-static {v2}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v2

    invoke-static {p1}, Lr4/p00;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    invoke-interface {v0, v2}, Lr4/xt2;->a(Lr4/wt2;)V

    return-void

    :cond_1
    iget-object v0, p0, Lr4/g60;->b:Lr4/ls1;

    invoke-virtual {v0}, Lr4/ls1;->d()Lr4/ks1;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-static {p1}, Lr4/p00;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr4/ks1;->d(Ljava/lang/String;Ljava/lang/String;)Lr4/ks1;

    invoke-virtual {v0}, Lr4/ks1;->e()V

    return-void
.end method
