.class Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;
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
    name = "ClassDefItemConsumer"
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

.field public b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/dex/file/ClassDefItem;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->b:Ljava/util/concurrent/Future;

    iput p4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->c:I

    iput p5, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/android/dx/command/dexer/Main$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;II)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ClassDefItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1, v0}, Lcom/android/dx/command/dexer/Main;->s(Lcom/android/dx/command/dexer/Main;Lcom/android/dx/dex/file/ClassDefItem;)Z

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/dx/command/dexer/Main;->t(Lcom/android/dx/command/dexer/Main;Z)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->j(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->c:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->k(Lcom/android/dx/command/dexer/Main;I)I

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->l(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->d:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->m(Lcom/android/dx/command/dexer/Main;I)I

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/Exception;

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->e(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->j(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->c:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->k(Lcom/android/dx/command/dexer/Main;I)I

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->l(Lcom/android/dx/command/dexer/Main;)I

    move-result v3

    iget v4, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->d:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/dx/command/dexer/Main;->m(Lcom/android/dx/command/dexer/Main;I)I

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->e:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->h(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_3
    :goto_2
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
