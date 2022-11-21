.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static a(Lf1/p;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lf1/p;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lf1/p;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    iget-object p0, p0, Lf1/p;->b:Lw0/s;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    aput-object p1, v0, p0

    const/4 p0, 0x5

    aput-object p3, v0, p0

    const-string p0, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lf1/k;Lf1/t;Lf1/h;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/k;",
            "Lf1/t;",
            "Lf1/h;",
            "Ljava/util/List<",
            "Lf1/p;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "Job Id"

    goto :goto_0

    :cond_0
    const-string v1, "Alarm Id"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/p;

    const/4 v2, 0x0

    iget-object v3, v1, Lf1/p;->a:Ljava/lang/String;

    invoke-interface {p2, v3}, Lf1/h;->c(Ljava/lang/String;)Lf1/g;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v2, v3, Lf1/g;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    iget-object v3, v1, Lf1/p;->a:Ljava/lang/String;

    invoke-interface {p0, v3}, Lf1/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lf1/p;->a:Ljava/lang/String;

    invoke-interface {p1, v4}, Lf1/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Landroidx/work/impl/workers/DiagnosticsWorker;->a(Lf1/p;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 11

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx0/i;->n(Landroid/content/Context;)Lx0/i;

    move-result-object v0

    invoke-virtual {v0}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lf1/q;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->z()Lf1/k;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->C()Lf1/t;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Lf1/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-interface {v1, v4, v5}, Lf1/q;->e(J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1}, Lf1/q;->i()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-interface {v1, v6}, Lf1/q;->t(I)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v7

    sget-object v8, Landroidx/work/impl/workers/DiagnosticsWorker;->r:Ljava/lang/String;

    new-array v9, v6, [Ljava/lang/Throwable;

    const-string v10, "Recently completed work:\n\n"

    invoke-virtual {v7, v8, v10, v9}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v7

    invoke-static {v2, v3, v0, v4}, Landroidx/work/impl/workers/DiagnosticsWorker;->c(Lf1/k;Lf1/t;Lf1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v4, v9}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v4

    sget-object v7, Landroidx/work/impl/workers/DiagnosticsWorker;->r:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Throwable;

    const-string v9, "Running work:\n\n"

    invoke-virtual {v4, v7, v9, v8}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v4

    invoke-static {v2, v3, v0, v5}, Landroidx/work/impl/workers/DiagnosticsWorker;->c(Lf1/k;Lf1/t;Lf1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v6, [Ljava/lang/Throwable;

    invoke-virtual {v4, v7, v5, v8}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/workers/DiagnosticsWorker;->r:Ljava/lang/String;

    new-array v7, v6, [Ljava/lang/Throwable;

    const-string v8, "Enqueued work:\n\n"

    invoke-virtual {v4, v5, v8, v7}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v4

    invoke-static {v2, v3, v0, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->c(Lf1/k;Lf1/t;Lf1/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v0, v1}, Lw0/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
