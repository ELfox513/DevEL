.class public Lm5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/c$d;,
        Lm5/c$c;,
        Lm5/c$e;,
        Lm5/c$b;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;

.field public static final k:Ljava/util/concurrent/Executor;

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm5/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lm5/i;

.field public final d:Ls5/n;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ls5/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls5/w<",
            "Lw6/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm5/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm5/c;->j:Ljava/lang/Object;

    new-instance v0, Lm5/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/c$d;-><init>(Lm5/c$a;)V

    sput-object v0, Lm5/c;->k:Ljava/util/concurrent/Executor;

    new-instance v0, Lp/a;

    invoke-direct {v0}, Lp/a;-><init>()V

    sput-object v0, Lm5/c;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lm5/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lm5/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm5/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lm5/c;->h:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lm5/c;->i:Ljava/util/List;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lm5/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lm5/c;->b:Ljava/lang/String;

    invoke-static {p3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm5/i;

    iput-object p2, p0, Lm5/c;->c:Lm5/i;

    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-static {p1, p2}, Ls5/g;->c(Landroid/content/Context;Ljava/lang/Class;)Ls5/g;

    move-result-object p2

    invoke-virtual {p2}, Ls5/g;->b()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lm5/c;->k:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ls5/n;->i(Ljava/util/concurrent/Executor;)Ls5/n$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Ls5/n$b;->d(Ljava/util/Collection;)Ls5/n$b;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    invoke-virtual {p2, v0}, Ls5/n$b;->c(Ls5/i;)Ls5/n$b;

    move-result-object p2

    const-class v0, Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p1, v0, v2}, Ls5/d;->p(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ls5/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Ls5/n$b;->b(Ls5/d;)Ls5/n$b;

    move-result-object p2

    const-class v0, Lm5/c;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Ls5/d;->p(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ls5/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Ls5/n$b;->b(Ls5/d;)Ls5/n$b;

    move-result-object p2

    const-class v0, Lm5/i;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Ls5/d;->p(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ls5/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Ls5/n$b;->b(Ls5/d;)Ls5/n$b;

    move-result-object p2

    invoke-virtual {p2}, Ls5/n$b;->e()Ls5/n;

    move-result-object p2

    iput-object p2, p0, Lm5/c;->d:Ls5/n;

    new-instance p2, Ls5/w;

    new-instance p3, Lm5/b;

    invoke-direct {p3, p0, p1}, Lm5/b;-><init>(Lm5/c;Landroid/content/Context;)V

    invoke-direct {p2, p3}, Ls5/w;-><init>(Lq6/b;)V

    iput-object p2, p0, Lm5/c;->g:Ls5/w;

    return-void
.end method

.method public static synthetic a(Lm5/c;Landroid/content/Context;)Lw6/a;
    .locals 0

    invoke-direct {p0, p1}, Lm5/c;->s(Landroid/content/Context;)Lw6/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lm5/c;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic c(Lm5/c;)V
    .locals 0

    invoke-virtual {p0}, Lm5/c;->m()V

    return-void
.end method

.method public static synthetic d(Lm5/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lm5/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic e(Lm5/c;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lm5/c;->u(Z)V

    return-void
.end method

.method public static i()Lm5/c;
    .locals 4

    sget-object v0, Lm5/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm5/c;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/c;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static n(Landroid/content/Context;)Lm5/c;
    .locals 3

    sget-object v0, Lm5/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm5/c;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lm5/c;->i()Lm5/c;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-static {p0}, Lm5/i;->a(Landroid/content/Context;)Lm5/i;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {p0, v1}, Lm5/c;->o(Landroid/content/Context;Lm5/i;)Lm5/c;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static o(Landroid/content/Context;Lm5/i;)Lm5/c;
    .locals 1

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lm5/c;->p(Landroid/content/Context;Lm5/i;Ljava/lang/String;)Lm5/c;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;Lm5/i;Ljava/lang/String;)Lm5/c;
    .locals 5

    invoke-static {p0}, Lm5/c$c;->b(Landroid/content/Context;)V

    invoke-static {p2}, Lm5/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sget-object v0, Lm5/c;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm5/c;->l:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx3/q;->n(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lm5/c;

    invoke-direct {v2, p0, p2, p1}, Lm5/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lm5/i;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lm5/c;->m()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic s(Landroid/content/Context;)Lw6/a;
    .locals 4

    new-instance v0, Lw6/a;

    invoke-virtual {p0}, Lm5/c;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm5/c;->d:Ls5/n;

    const-class v3, Lo6/c;

    invoke-virtual {v2, v3}, Ls5/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo6/c;

    invoke-direct {v0, p1, v1, v2}, Lw6/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lo6/c;)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm5/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lm5/c;->b:Ljava/lang/String;

    check-cast p1, Lm5/c;

    invoke-virtual {p1}, Lm5/c;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lm5/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lx3/q;->n(ZLjava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lm5/c;->f()V

    iget-object v0, p0, Lm5/c;->d:Ls5/n;

    invoke-virtual {v0, p1}, Ls5/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lm5/c;->f()V

    iget-object v0, p0, Lm5/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lm5/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lm5/c;->f()V

    iget-object v0, p0, Lm5/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lm5/i;
    .locals 1

    invoke-virtual {p0}, Lm5/c;->f()V

    iget-object v0, p0, Lm5/c;->c:Lm5/i;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lc4/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/c;->k()Lm5/i;

    move-result-object v1

    invoke-virtual {v1}, Lm5/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lc4/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lm5/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lz/i;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lm5/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lm5/c$e;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lm5/c;->d:Ls5/n;

    invoke-virtual {p0}, Lm5/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Ls5/n;->l(Z)V

    :goto_0
    return-void
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lm5/c;->f()V

    iget-object v0, p0, Lm5/c;->g:Ls5/w;

    invoke-virtual {v0}, Ls5/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw6/a;

    invoke-virtual {v0}, Lw6/a;->b()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    invoke-virtual {p0}, Lm5/c;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    iget-object v1, p0, Lm5/c;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    iget-object v1, p0, Lm5/c;->c:Lm5/i;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)V
    .locals 2

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lm5/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/c$b;

    invoke-interface {v1, p1}, Lm5/c$b;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
