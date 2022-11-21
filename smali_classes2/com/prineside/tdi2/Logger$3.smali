.class Lcom/prineside/tdi2/Logger$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Logger;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/prineside/tdi2/Logger;->c()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->c()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/Logger;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->b()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/prineside/tdi2/Logger;->d()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->d()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Logger$LoggerListener;

    invoke-static {}, Lcom/prineside/tdi2/Logger;->c()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/Logger$LogEntry;

    invoke-interface {v1, v3}, Lcom/prineside/tdi2/Logger$LoggerListener;->newEntry(Lcom/prineside/tdi2/Logger$LogEntry;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Logger;->d()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->c()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Logger$LogEntry;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger$LogEntry;->b(Lcom/prineside/tdi2/Logger$LogEntry;Z)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/prineside/tdi2/Logger;->e(Z)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
