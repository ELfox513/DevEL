.class public Ln7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc4/d<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln7/e;

.field public final d:Ln7/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ln7/k;->e:Ljava/nio/charset/Charset;

    const-string v0, "^(1|true|t|yes|y|on)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln7/k;->f:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln7/k;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ln7/e;Ln7/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln7/k;->a:Ljava/util/Set;

    iput-object p1, p0, Ln7/k;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ln7/k;->c:Ln7/e;

    iput-object p3, p0, Ln7/k;->d:Ln7/e;

    return-void
.end method

.method public static synthetic a(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ln7/k;->i(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V

    return-void
.end method

.method public static e(Ln7/e;)Lcom/google/firebase/remoteconfig/internal/a;
    .locals 0

    invoke-virtual {p0}, Ln7/e;->f()Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ln7/e;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/e;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Ln7/k;->e(Ln7/e;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->d()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static g(Ln7/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ln7/k;->e(Ln7/e;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->d()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static synthetic i(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lc4/d;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "No value of type \'%s\' exists for parameter key \'%s\'."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseRemoteConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public b(Lc4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/d<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ln7/k;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln7/k;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln7/k;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln7/k;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc4/d;

    iget-object v3, p0, Ln7/k;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Ln7/j;

    invoke-direct {v4, v2, p1, p2}, Ln7/j;-><init>(Lc4/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm7/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ln7/k;->c:Ln7/e;

    invoke-static {v1}, Ln7/k;->f(Ln7/e;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Ln7/k;->d:Ln7/e;

    invoke-static {v1}, Ln7/k;->f(Ln7/e;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ln7/k;->h(Ljava/lang/String;)Lm7/l;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public h(Ljava/lang/String;)Lm7/l;
    .locals 2

    iget-object v0, p0, Ln7/k;->c:Ln7/e;

    invoke-static {v0, p1}, Ln7/k;->g(Ln7/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ln7/k;->c:Ln7/e;

    invoke-static {v1}, Ln7/k;->e(Ln7/e;)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ln7/k;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V

    new-instance p1, Ln7/m;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Ln7/m;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Ln7/k;->d:Ln7/e;

    invoke-static {v0, p1}, Ln7/k;->g(Ln7/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Ln7/m;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ln7/m;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_1
    const-string v0, "FirebaseRemoteConfigValue"

    invoke-static {p1, v0}, Ln7/k;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ln7/m;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Ln7/m;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
