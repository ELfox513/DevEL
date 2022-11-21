.class Lcom/prineside/tdi2/Game$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/GameSyncLoader$SyncExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/Game;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/prineside/tdi2/Game;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Game;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    iput-wide p2, p0, Lcom/prineside/tdi2/Game$47;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Game;->a(Lcom/prineside/tdi2/Game;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    invoke-static {v0}, Lcom/prineside/tdi2/Game;->b(Lcom/prineside/tdi2/Game;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    invoke-static {v0}, Lcom/prineside/tdi2/Game;->b(Lcom/prineside/tdi2/Game;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Game$GameListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/Game$GameListener;->gameLoaded()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    invoke-static {v0}, Lcom/prineside/tdi2/Game;->b(Lcom/prineside/tdi2/Game;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/Game$47;->b:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    const-string v1, "GameLoaded"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->triggerEvent(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game loaded in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/prineside/tdi2/Game$47;->a:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Game"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startedTask(Lcom/prineside/tdi2/utils/GameSyncLoader$Task;Lcom/prineside/tdi2/utils/GameSyncLoader$Task;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/tdi2/utils/GameSyncLoader$Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Game"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
