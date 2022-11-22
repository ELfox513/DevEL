.class Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/music/CachedMusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ibxm/Module;

.field public final synthetic b:F

.field public final synthetic d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/ibxm/Module;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    iput p3, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "CachedMusicManager"

    const-string v1, "caching thread started"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/prineside/tdi2/ibxm/IBXM;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    const v3, 0xac44

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ibxm/IBXM;-><init>(Lcom/prineside/tdi2/ibxm/Module;I)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/MusicManager;->getInterpolation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ibxm/IBXM;->setInterpolation(I)V

    const/16 v2, 0x1000

    new-array v3, v2, [B

    iget-object v4, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v4, v4, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const-string v5, "failed to write"

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/prineside/tdi2/ibxm/WavInputStream;

    sget-object v8, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->INTRO_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-direct {v4, v1, v7, v8}, Lcom/prineside/tdi2/ibxm/WavInputStream;-><init>(Lcom/prineside/tdi2/ibxm/IBXM;ILcom/prineside/tdi2/ibxm/WavInputStream$Mode;)V

    iget-object v8, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    invoke-static {v8, v7}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v9, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v9

    const/4 v10, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v4, v3, v7, v2}, Lcom/prineside/tdi2/ibxm/WavInputStream;->read([BII)I

    move-result v11

    if-gtz v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v10, v11

    invoke-virtual {v9, v3, v7, v11}, Ljava/io/OutputStream;->write([BII)V

    iget-object v11, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    int-to-float v12, v10

    invoke-virtual {v4}, Lcom/prineside/tdi2/ibxm/WavInputStream;->getRemain()I

    move-result v13

    add-int/2addr v13, v10

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float v12, v12, v6

    invoke-static {v11, v12}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-static {v4, v6}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepared intro cache for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/prineside/tdi2/ibxm/WavInputStream;

    sget-object v8, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->LOOPING_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    invoke-direct {v4, v1, v7, v8}, Lcom/prineside/tdi2/ibxm/WavInputStream;-><init>(Lcom/prineside/tdi2/ibxm/IBXM;ILcom/prineside/tdi2/ibxm/WavInputStream$Mode;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->q(Lcom/prineside/tdi2/ibxm/Module;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v8

    const/4 v9, 0x0

    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v4, v3, v7, v2}, Lcom/prineside/tdi2/ibxm/WavInputStream;->read([BII)I

    move-result v10

    if-gtz v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v9, v10

    invoke-virtual {v8, v3, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    iget-object v10, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    int-to-float v11, v9

    invoke-virtual {v4}, Lcom/prineside/tdi2/ibxm/WavInputStream;->getRemain()I

    move-result v12

    add-int/2addr v12, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F

    iget-object v10, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v10, v10, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-static {v10}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->h(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)F

    move-result v11

    mul-float v11, v11, v6

    add-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->i(Lcom/prineside/tdi2/managers/music/CachedMusicManager;F)F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepared looping cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->j(Lcom/prineside/tdi2/managers/music/CachedMusicManager;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->WAITING_CACHE_GENERATION:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    sget-object v2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;->CACHE_GENERATED:Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    invoke-static {v1, v2}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->k(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;)Lcom/prineside/tdi2/managers/music/CachedMusicManager$Status;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4$1;-><init>(Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_5
    const-string v1, "caching thread ended"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/CachedMusicManager$4;->d:Lcom/prineside/tdi2/managers/music/CachedMusicManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/music/CachedMusicManager;->n(Lcom/prineside/tdi2/managers/music/CachedMusicManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
