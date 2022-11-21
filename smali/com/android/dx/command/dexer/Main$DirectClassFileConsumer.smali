.class Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectClassFileConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lp1/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future<",
            "Lp1/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->b:[B

    iput-object p4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->c:Ljava/util/concurrent/Future;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;Lp1/f;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lp1/f;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private call(Lp1/f;)Ljava/lang/Boolean;
    .locals 10

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lp1/f;->f()Lx1/b;

    move-result-object v0

    invoke-interface {v0}, Lx1/b;->size()I

    move-result v0

    invoke-virtual {p1}, Lp1/f;->m()Lq1/h;

    move-result-object v1

    invoke-interface {v1}, Lq1/h;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lp1/f;->g()Lq1/e;

    move-result-object v2

    invoke-interface {v2}, Lq1/e;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x9

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v4}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v5}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    add-int/2addr v4, v1

    :try_start_2
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->j(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v4, v3, :cond_0

    add-int/2addr v5, v0

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->l(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v3

    iget v3, v3, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-le v5, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->j(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->l(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/dex/file/DexFile;->getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->n(Lcom/android/dx/command/dexer/Main;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->j(Lcom/android/dx/command/dexer/Main;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/android/dx/command/dexer/Main;->k(Lcom/android/dx/command/dexer/Main;I)I

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->l(Lcom/android/dx/command/dexer/Main;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/android/dx/command/dexer/Main;->m(Lcom/android/dx/command/dexer/Main;I)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v8, v0

    move v7, v1

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v4}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v5}, Lcom/android/dx/command/dexer/Main;->i(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->o(Lcom/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v9, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->b:[B

    const/4 v6, 0x0

    move-object v1, v9

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLp1/f;Lcom/android/dx/command/dexer/Main$1;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {p1}, Lcom/android/dx/command/dexer/Main;->p(Lcom/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;

    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    iget-object v5, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->a:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/android/dx/command/dexer/Main$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->d:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->q(Lcom/android/dx/command/dexer/Main;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/f;

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lp1/f;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
