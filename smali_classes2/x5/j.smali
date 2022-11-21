.class public Lx5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Ljava/io/FilenameFilter;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lx5/r;

.field public final c:Lx5/m;

.field public final d:Lx5/g0;

.field public final e:Lx5/h;

.field public final f:Lx5/v;

.field public final g:Lc6/h;

.field public final h:Lx5/a;

.field public final i:Ly5/b$b;

.field public final j:Ly5/b;

.field public final k:Lu5/a;

.field public final l:Ljava/lang/String;

.field public final m:Lv5/a;

.field public final n:Lx5/e0;

.field public o:Lx5/p;

.field public final p:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lj5/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/j<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/i;

    invoke-direct {v0}, Lx5/i;-><init>()V

    sput-object v0, Lx5/j;->t:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx5/h;Lx5/v;Lx5/r;Lc6/h;Lx5/m;Lx5/a;Lx5/g0;Ly5/b;Ly5/b$b;Lx5/e0;Lu5/a;Lv5/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    iput-object v0, p0, Lx5/j;->p:Lj5/j;

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    iput-object v0, p0, Lx5/j;->q:Lj5/j;

    new-instance v0, Lj5/j;

    invoke-direct {v0}, Lj5/j;-><init>()V

    iput-object v0, p0, Lx5/j;->r:Lj5/j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lx5/j;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lx5/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lx5/j;->e:Lx5/h;

    iput-object p3, p0, Lx5/j;->f:Lx5/v;

    iput-object p4, p0, Lx5/j;->b:Lx5/r;

    iput-object p5, p0, Lx5/j;->g:Lc6/h;

    iput-object p6, p0, Lx5/j;->c:Lx5/m;

    iput-object p7, p0, Lx5/j;->h:Lx5/a;

    iput-object p8, p0, Lx5/j;->d:Lx5/g0;

    iput-object p9, p0, Lx5/j;->j:Ly5/b;

    iput-object p10, p0, Lx5/j;->i:Ly5/b$b;

    iput-object p12, p0, Lx5/j;->k:Lu5/a;

    iget-object p1, p7, Lx5/a;->g:Li6/b;

    invoke-interface {p1}, Li6/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx5/j;->l:Ljava/lang/String;

    iput-object p13, p0, Lx5/j;->m:Lv5/a;

    iput-object p11, p0, Lx5/j;->n:Lx5/e0;

    return-void
.end method

.method public static A()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static D()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lx5/j;->H(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static F(Lu5/g;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu5/g;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "Lx5/a0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lx5/z;

    invoke-direct {v0, p2}, Lx5/z;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lx5/z;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p1}, Lx5/z;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lx5/e;

    const-string v2, "logs_file"

    const-string v3, "logs"

    invoke-direct {v1, v2, v3, p3}, Lx5/e;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_meta_file"

    const-string v3, "metadata"

    invoke-direct {p3, v2, v3, v1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "session_meta_file"

    const-string v3, "session"

    invoke-direct {p3, v2, v3, v1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_meta_file"

    const-string v3, "app"

    invoke-direct {p3, v2, v3, v1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_meta_file"

    const-string v3, "device"

    invoke-direct {p3, v2, v3, v1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "os_meta_file"

    const-string v3, "os"

    invoke-direct {p3, v2, v3, v1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx5/u;

    invoke-interface {p0}, Lu5/g;->d()Ljava/io/File;

    move-result-object p0

    const-string v1, "minidump_file"

    const-string v2, "minidump"

    invoke-direct {p3, v1, v2, p0}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lx5/u;

    const-string p3, "user_meta_file"

    const-string v1, "user"

    invoke-direct {p0, p3, v1, p2}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lx5/u;

    const-string p2, "keys_file"

    const-string p3, "keys"

    invoke-direct {p0, p2, p3, p1}, Lx5/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static H(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static synthetic K(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".ae"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static M(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lx5/j;->x([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lx5/j;->K(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)J
    .locals 0

    invoke-static {p0, p1}, Lx5/j;->H(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(Lx5/j;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lx5/j;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lx5/j;)Ly5/b;
    .locals 0

    iget-object p0, p0, Lx5/j;->j:Ly5/b;

    return-object p0
.end method

.method public static synthetic e(Lx5/j;)Lv5/a;
    .locals 0

    iget-object p0, p0, Lx5/j;->m:Lv5/a;

    return-object p0
.end method

.method public static synthetic f(Lx5/j;)Lx5/m;
    .locals 0

    iget-object p0, p0, Lx5/j;->c:Lx5/m;

    return-object p0
.end method

.method public static synthetic g(Lx5/j;)Lx5/e0;
    .locals 0

    iget-object p0, p0, Lx5/j;->n:Lx5/e0;

    return-object p0
.end method

.method public static synthetic h(Lx5/j;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx5/j;->v(J)V

    return-void
.end method

.method public static synthetic i(Lx5/j;)V
    .locals 0

    invoke-virtual {p0}, Lx5/j;->u()V

    return-void
.end method

.method public static synthetic j(Lx5/j;)Lx5/r;
    .locals 0

    iget-object p0, p0, Lx5/j;->b:Lx5/r;

    return-object p0
.end method

.method public static synthetic k(Lx5/j;)Lx5/h;
    .locals 0

    iget-object p0, p0, Lx5/j;->e:Lx5/h;

    return-object p0
.end method

.method public static synthetic l(Lx5/j;)Lj5/i;
    .locals 0

    invoke-virtual {p0}, Lx5/j;->P()Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m([Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lx5/j;->q([Ljava/io/File;)V

    return-void
.end method

.method public static n(Lx5/v;Lx5/a;Ljava/lang/String;)Lz5/c0$a;
    .locals 6

    invoke-virtual {p0}, Lx5/v;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lx5/a;->e:Ljava/lang/String;

    iget-object v2, p1, Lx5/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lx5/v;->a()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p1, Lx5/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lx5/s;->c(Ljava/lang/String;)Lx5/s;

    move-result-object p0

    invoke-virtual {p0}, Lx5/s;->d()I

    move-result v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lz5/c0$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lz5/c0$a;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Lz5/c0$b;
    .locals 16

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v10, v1, v3

    invoke-static {}, Lx5/g;->l()I

    move-result v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    invoke-static {}, Lx5/g;->s()J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Lx5/g;->x(Landroid/content/Context;)Z

    move-result v12

    invoke-static/range {p0 .. p0}, Lx5/g;->m(Landroid/content/Context;)I

    move-result v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v5 .. v15}, Lz5/c0$b;->c(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Lz5/c0$b;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Lz5/c0$c;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {p0}, Lx5/g;->y(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lz5/c0$c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lz5/c0$c;

    move-result-object p0

    return-object p0
.end method

.method public static q([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static x([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final B()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lx5/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lx5/j;->n:Lx5/e0;

    invoke-virtual {v0}, Lx5/e0;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public E()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lx5/j;->g:Lc6/h;

    invoke-interface {v0}, Lc6/h;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lx5/j;->E()Ljava/io/File;

    move-result-object v1

    const-string v2, "native-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized I(Le6/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lx5/j;->e:Lx5/h;

    new-instance v1, Lx5/j$c;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lx5/j$c;-><init>(Lx5/j;JLjava/lang/Throwable;Ljava/lang/Thread;Le6/e;)V

    invoke-virtual {v0, v1}, Lx5/h;->h(Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lx5/k0;->d(Lj5/i;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p2

    const-string p3, "Error handling uncaught exception"

    invoke-virtual {p2, p3, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lx5/j;->o:Lx5/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx5/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()[Ljava/io/File;
    .locals 1

    sget-object v0, Lx5/j;->t:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Lx5/j;->N(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final N(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lx5/j;->E()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lx5/j;->M(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final O(J)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lx5/j;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Lu5/f;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Logging app exception event to Firebase Analytics"

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v1, Lx5/j$a;

    invoke-direct {v1, p0, p1, p2}, Lx5/j$a;-><init>(Lx5/j;J)V

    invoke-static {v0, v1}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final P()Lj5/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lx5/j;->L()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lx5/j;->O(J)Lj5/i;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse app exception timestamp from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu5/f;->k(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lj5/l;->e(Ljava/util/Collection;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Lx5/j;->e:Lx5/h;

    new-instance v1, Lx5/j$g;

    invoke-direct {v1, p0}, Lx5/j$g;-><init>(Lx5/j;)V

    invoke-virtual {v0, v1}, Lx5/h;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    return-void
.end method

.method public R(Lj5/i;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "Lf6/a;",
            ">;)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/j;->n:Lx5/e0;

    invoke-virtual {v0}, Lx5/e0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "No crash reports are available to be sent."

    invoke-virtual {p1, v0}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lx5/j;->p:Lj5/j;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lj5/j;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Crash reports are available to be sent."

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lx5/j;->S()Lj5/i;

    move-result-object v0

    new-instance v1, Lx5/j$e;

    invoke-direct {v1, p0, p1}, Lx5/j$e;-><init>(Lx5/j;Lj5/i;)V

    invoke-virtual {v0, v1}, Lj5/i;->q(Lj5/h;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final S()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx5/j;->b:Lx5/r;

    invoke-virtual {v0}, Lx5/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j;->p:Lj5/j;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj5/j;->e(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j;->p:Lj5/j;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lj5/j;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lx5/j;->b:Lx5/r;

    invoke-virtual {v0}, Lx5/r;->g()Lj5/i;

    move-result-object v0

    new-instance v1, Lx5/j$d;

    invoke-direct {v1, p0}, Lx5/j$d;-><init>(Lx5/j;)V

    invoke-virtual {v0, v1}, Lj5/i;->q(Lj5/h;)Lj5/i;

    move-result-object v0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Lu5/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lx5/j;->q:Lj5/j;

    invoke-virtual {v1}, Lj5/j;->a()Lj5/i;

    move-result-object v1

    invoke-static {v0, v1}, Lx5/k0;->i(Lj5/i;Lj5/i;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/lang/String;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lx5/j;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lg1/c;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ly5/b;

    iget-object v2, p0, Lx5/j;->a:Landroid/content/Context;

    iget-object v4, p0, Lx5/j;->i:Ly5/b$b;

    invoke-direct {v1, v2, v4, p1}, Ly5/b;-><init>(Landroid/content/Context;Ly5/b$b;Ljava/lang/String;)V

    new-instance v2, Lx5/g0;

    invoke-direct {v2}, Lx5/g0;-><init>()V

    new-instance v4, Lx5/z;

    invoke-virtual {p0}, Lx5/j;->E()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lx5/z;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, p1}, Lx5/z;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx5/g0;->c(Ljava/util/Map;)V

    iget-object v4, p0, Lx5/j;->n:Lx5/e0;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v4, p1, v0, v1, v2}, Lx5/e0;->p(Ljava/lang/String;Landroid/app/ApplicationExitInfo;Ly5/b;Lx5/g0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR feature enabled, but device is API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu5/f;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lx5/j;->e:Lx5/h;

    new-instance v1, Lx5/j$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lx5/j$f;-><init>(Lx5/j;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lx5/h;->g(Ljava/util/concurrent/Callable;)Lj5/i;

    return-void
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Lx5/j;->c:Lx5/m;

    invoke-virtual {v0}, Lx5/m;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lx5/j;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lx5/j;->k:Lu5/a;

    invoke-interface {v2, v0}, Lu5/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j;->c:Lx5/m;

    invoke-virtual {v0}, Lx5/m;->d()Z

    return v1
.end method

.method public s(Le6/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx5/j;->t(ZLe6/e;)V

    return-void
.end method

.method public final t(ZLe6/e;)V
    .locals 2

    iget-object v0, p0, Lx5/j;->n:Lx5/e0;

    invoke-virtual {v0}, Lx5/e0;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string p2, "No open sessions to be closed."

    invoke-virtual {p1, p2}, Lu5/f;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Le6/e;->b()Lf6/d;

    move-result-object p2

    invoke-interface {p2}, Lf6/d;->a()Lf6/b;

    move-result-object p2

    iget-boolean p2, p2, Lf6/b;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lx5/j;->T(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lx5/j;->k:Lu5/a;

    invoke-interface {p2, v1}, Lu5/a;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1}, Lx5/j;->y(Ljava/lang/String;)V

    iget-object p2, p0, Lx5/j;->k:Lu5/a;

    invoke-interface {p2, v1}, Lu5/a;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lx5/j;->n:Lx5/e0;

    invoke-static {}, Lx5/j;->D()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lx5/e0;->i(JLjava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 9

    invoke-static {}, Lx5/j;->D()J

    move-result-wide v6

    new-instance v0, Lx5/f;

    iget-object v1, p0, Lx5/j;->f:Lx5/v;

    invoke-direct {v0, v1}, Lx5/f;-><init>(Lx5/v;)V

    invoke-virtual {v0}, Lx5/f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening a new session with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu5/f;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lx5/l;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lx5/j;->f:Lx5/v;

    iget-object v1, p0, Lx5/j;->h:Lx5/a;

    iget-object v3, p0, Lx5/j;->l:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lx5/j;->n(Lx5/v;Lx5/a;Ljava/lang/String;)Lz5/c0$a;

    move-result-object v0

    invoke-virtual {p0}, Lx5/j;->B()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx5/j;->p(Landroid/content/Context;)Lz5/c0$c;

    move-result-object v1

    invoke-virtual {p0}, Lx5/j;->B()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lx5/j;->o(Landroid/content/Context;)Lz5/c0$b;

    move-result-object v3

    iget-object v4, p0, Lx5/j;->k:Lu5/a;

    invoke-static {v0, v1, v3}, Lz5/c0;->b(Lz5/c0$a;Lz5/c0$c;Lz5/c0$b;)Lz5/c0;

    move-result-object v5

    move-object v0, v4

    move-object v1, v8

    move-wide v3, v6

    invoke-interface/range {v0 .. v5}, Lu5/a;->e(Ljava/lang/String;Ljava/lang/String;JLz5/c0;)V

    iget-object v0, p0, Lx5/j;->j:Ly5/b;

    invoke-virtual {v0, v8}, Ly5/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j;->n:Lx5/e0;

    invoke-virtual {v0, v8, v6, v7}, Lx5/e0;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public final v(J)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lx5/j;->E()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p2

    const-string v0, "Could not create app exception marker file."

    invoke-virtual {p2, v0, p1}, Lu5/f;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/Thread$UncaughtExceptionHandler;Le6/e;)V
    .locals 3

    invoke-virtual {p0}, Lx5/j;->Q()V

    new-instance v0, Lx5/j$b;

    invoke-direct {v0, p0}, Lx5/j$b;-><init>(Lx5/j;)V

    new-instance v1, Lx5/p;

    iget-object v2, p0, Lx5/j;->k:Lu5/a;

    invoke-direct {v1, v0, p2, p1, v2}, Lx5/p;-><init>(Lx5/p$a;Le6/e;Ljava/lang/Thread$UncaughtExceptionHandler;Lu5/a;)V

    iput-object v1, p0, Lx5/j;->o:Lx5/p;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu5/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lx5/j;->k:Lu5/a;

    invoke-interface {v0, p1}, Lu5/a;->b(Ljava/lang/String;)Lu5/g;

    move-result-object v0

    invoke-interface {v0}, Lu5/g;->d()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance v3, Ly5/b;

    iget-object v4, p0, Lx5/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lx5/j;->i:Ly5/b$b;

    invoke-direct {v3, v4, v5, p1}, Ly5/b;-><init>(Landroid/content/Context;Ly5/b$b;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lx5/j;->G()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1, v2}, Lx5/j;->v(J)V

    invoke-virtual {p0}, Lx5/j;->E()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3}, Ly5/b;->b()[B

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lx5/j;->F(Lu5/g;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lx5/b0;->b(Ljava/io/File;Ljava/util/List;)V

    iget-object v1, p0, Lx5/j;->n:Lx5/e0;

    invoke-virtual {v1, p1, v0}, Lx5/e0;->h(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Ly5/b;->a()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu5/f;->k(Ljava/lang/String;)V

    return-void
.end method

.method public z(Le6/e;)Z
    .locals 3

    iget-object v0, p0, Lx5/j;->e:Lx5/h;

    invoke-virtual {v0}, Lx5/h;->b()V

    invoke-virtual {p0}, Lx5/j;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {p1, v0}, Lu5/f;->k(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Lu5/f;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lx5/j;->t(ZLe6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v1, "Closed all previously open sessions."

    invoke-virtual {p1, v1}, Lu5/f;->i(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object v0

    const-string v2, "Unable to finalize previously open sessions."

    invoke-virtual {v0, v2, p1}, Lu5/f;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
