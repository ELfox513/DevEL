.class public Lm7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[B


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm5/c;

.field public final c:Ln5/c;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ln7/e;

.field public final f:Ln7/e;

.field public final g:Ln7/e;

.field public final h:Lcom/google/firebase/remoteconfig/internal/b;

.field public final i:Ln7/k;

.field public final j:Lcom/google/firebase/remoteconfig/internal/c;

.field public final k:Lr6/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lm7/e;->l:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm5/c;Lr6/g;Ln5/c;Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;Ln7/e;Lcom/google/firebase/remoteconfig/internal/b;Ln7/k;Lcom/google/firebase/remoteconfig/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lm7/e;->b:Lm5/c;

    iput-object p3, p0, Lm7/e;->k:Lr6/g;

    iput-object p4, p0, Lm7/e;->c:Ln5/c;

    iput-object p5, p0, Lm7/e;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lm7/e;->e:Ln7/e;

    iput-object p7, p0, Lm7/e;->f:Ln7/e;

    iput-object p8, p0, Lm7/e;->g:Ln7/e;

    iput-object p9, p0, Lm7/e;->h:Lcom/google/firebase/remoteconfig/internal/b;

    iput-object p10, p0, Lm7/e;->i:Ln7/k;

    iput-object p11, p0, Lm7/e;->j:Lcom/google/firebase/remoteconfig/internal/c;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/remoteconfig/internal/b$a;)Lj5/i;
    .locals 0

    invoke-static {p0}, Lm7/e;->l(Lcom/google/firebase/remoteconfig/internal/b$a;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lm7/e;Ljava/lang/Void;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1}, Lm7/e;->m(Ljava/lang/Void;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lm7/e;Lj5/i;Lj5/i;Lj5/i;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lm7/e;->k(Lj5/i;Lj5/i;Lj5/i;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lm7/e;Lj5/i;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lm7/e;->n(Lj5/i;)Z

    move-result p0

    return p0
.end method

.method public static j(Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->e()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/a;->e()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic k(Lj5/i;Lj5/i;Lj5/i;)Lj5/i;
    .locals 0

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {p2}, Lj5/i;->p()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {p1, p2}, Lm7/e;->j(Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lm7/e;->f:Ln7/e;

    invoke-virtual {p2, p1}, Ln7/e;->k(Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;

    move-result-object p1

    iget-object p2, p0, Lm7/e;->d:Ljava/util/concurrent/Executor;

    new-instance p3, Lm7/d;

    invoke-direct {p3, p0}, Lm7/d;-><init>(Lm7/e;)V

    invoke-virtual {p1, p2, p3}, Lj5/i;->h(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic l(Lcom/google/firebase/remoteconfig/internal/b$a;)Lj5/i;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m(Ljava/lang/Void;)Lj5/i;
    .locals 0

    invoke-virtual {p0}, Lm7/e;->e()Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public static p(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public e()Lj5/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm7/e;->e:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->e()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lm7/e;->f:Ln7/e;

    invoke-virtual {v1}, Ln7/e;->e()Lj5/i;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lj5/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lj5/l;->h([Lj5/i;)Lj5/i;

    move-result-object v2

    iget-object v3, p0, Lm7/e;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lm7/c;

    invoke-direct {v4, p0, v0, v1}, Lm7/c;-><init>(Lm7/e;Lj5/i;Lj5/i;)V

    invoke-virtual {v2, v3, v4}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public f()Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm7/e;->h:Lcom/google/firebase/remoteconfig/internal/b;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/b;->h()Lj5/i;

    move-result-object v0

    new-instance v1, Lm7/b;

    invoke-direct {v1}, Lm7/b;-><init>()V

    invoke-virtual {v0, v1}, Lj5/i;->q(Lj5/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public g()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lm7/e;->f()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lm7/e;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lm7/a;

    invoke-direct {v2, p0}, Lm7/a;-><init>(Lm7/e;)V

    invoke-virtual {v0, v1, v2}, Lj5/i;->r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm7/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm7/e;->i:Ln7/k;

    invoke-virtual {v0}, Ln7/k;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Lm7/i;
    .locals 1

    iget-object v0, p0, Lm7/e;->j:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->c()Lm7/i;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lj5/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm7/e;->e:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->d()V

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/a;->c()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm7/e;->q(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_0
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lm7/e;->f:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->e()Lj5/i;

    iget-object v0, p0, Lm7/e;->g:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->e()Lj5/i;

    iget-object v0, p0, Lm7/e;->e:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->e()Lj5/i;

    return-void
.end method

.method public q(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "FirebaseRemoteConfig"

    iget-object v1, p0, Lm7/e;->c:Ln5/c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lm7/e;->p(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lm7/e;->c:Ln5/c;

    invoke-virtual {v1, p1}, Ln5/c;->k(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ln5/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Could not update ABT experiments."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Could not parse ABT experiments from the JSON response."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
