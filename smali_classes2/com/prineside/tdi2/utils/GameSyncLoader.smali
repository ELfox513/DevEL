.class public Lcom/prineside/tdi2/utils/GameSyncLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/GameSyncLoader$Task;,
        Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/GameSyncLoader$Task;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    iput-boolean v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->d:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t registerDelta new tasks, already executing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableExtraFrameBeforeTaskStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->d:Z

    return-void
.end method

.method public getProgress()F
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    iget-object v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterate()Z
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    iget-object v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x1

    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    iget-boolean v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->e:Z

    xor-int/2addr v1, v4

    iget-boolean v2, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->d:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v2, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    iget-object v6, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;

    iget v7, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;

    :goto_1
    invoke-interface {v6, v0, v7}, Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;->startedTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iput-boolean v4, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->e:Z

    :cond_4
    iget-boolean v2, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->d:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GameSyncLoader"

    invoke-static {v6, v5}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->a:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "done \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->title:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v7

    sub-long/2addr v7, v1

    long-to-float v0, v7

    const v1, 0x3a83126f    # 0.001f

    mul-float v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->c:I

    iput-boolean v3, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->e:Z

    iget-object v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v3, v0, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;->done()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/utils/GameSyncLoader;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_7
    return v4
.end method
