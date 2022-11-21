.class public final Lr4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/os/ConditionVariable;

.field public static volatile d:Lr4/lz2;

.field public static volatile e:Ljava/util/Random;


# instance fields
.field public final a:Lr4/v0;

.field public volatile b:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lr4/p;->c:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lr4/p;->d:Lr4/lz2;

    sput-object v0, Lr4/p;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lr4/v0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p;->a:Lr4/v0;

    invoke-virtual {p1}, Lr4/v0;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lr4/o;

    invoke-direct {v0, p0}, Lr4/o;-><init>(Lr4/p;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lr4/p;)Lr4/v0;
    .locals 0

    iget-object p0, p0, Lr4/p;->a:Lr4/v0;

    return-object p0
.end method

.method public static synthetic b()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lr4/p;->c:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static final d()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lr4/p;->e()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Lr4/p;->e()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static e()Ljava/util/Random;
    .locals 2

    sget-object v0, Lr4/p;->e:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v0, Lr4/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/p;->e:Ljava/util/Random;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lr4/p;->e:Ljava/util/Random;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lr4/p;->e:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    :try_start_0
    sget-object v0, Lr4/p;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lr4/p;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr4/p;->d:Lr4/lz2;

    if-eqz v0, :cond_3

    invoke-static {}, Lr4/oa4;->C()Lr4/ka4;

    move-result-object v0

    iget-object v1, p0, Lr4/p;->a:Lr4/v0;

    iget-object v1, v1, Lr4/v0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ka4;->v(Ljava/lang/String;)Lr4/ka4;

    invoke-virtual {v0, p3, p4}, Lr4/ka4;->x(J)Lr4/ka4;

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lr4/ka4;->B(Ljava/lang/String;)Lr4/ka4;

    :cond_0
    if-eqz p6, :cond_1

    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p6, p4}, Lr4/rk3;->c(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lr4/ka4;->z(Ljava/lang/String;)Lr4/ka4;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lr4/ka4;->A(Ljava/lang/String;)Lr4/ka4;

    :cond_1
    sget-object p3, Lr4/p;->d:Lr4/lz2;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p4

    check-cast p4, Lr4/oa4;

    invoke-virtual {p4}, Lr4/uk3;->t()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lr4/lz2;->a([B)Lr4/jz2;

    move-result-object p3

    invoke-virtual {p3, p1}, Lr4/jz2;->c(I)Lr4/jz2;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    invoke-virtual {p3, p2}, Lr4/jz2;->b(I)Lr4/jz2;

    :cond_2
    invoke-virtual {p3}, Lr4/jz2;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
