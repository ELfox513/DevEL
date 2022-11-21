.class public Lcom/prineside/tdi2/managers/TimeManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public d:F

.field public final k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/TimeManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TimeManager;->save()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimeManager"

    const-string v1, "added listener"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Manager is already set up, listeners may loose time - add listeners only in setup()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TimeManager;->save()V

    return-void
.end method

.method public postRender(F)V
    .locals 10

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    sub-long v4, v0, v2

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    cmp-long v9, v2, v6

    if-eqz v9, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v2, 0xf731400

    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    move-wide v4, v2

    :cond_3
    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_8

    iput-wide v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    long-to-float v0, v4

    const v1, 0x3a83126f    # 0.001f

    mul-float v0, v0, v1

    cmpg-float v1, v0, v8

    if-gez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    const v1, 0x487d2000    # 259200.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    const v0, 0x487d2000    # 259200.0f

    :cond_5
    iget-object v1, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_6

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;->progressTimePassed(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    goto :goto_2

    :cond_7
    :goto_1
    iput-wide v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    :cond_8
    :goto_2
    iget v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->d:F

    const/high16 p1, 0x42f00000    # 120.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_9

    iput v8, p0, Lcom/prineside/tdi2/managers/TimeManager;->d:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/TimeManager;->save()V

    :cond_9
    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/TimeManager$TimeManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->k:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final save()V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/TimeManager;->b:Z

    if-nez v0, :cond_0

    const-string v0, "TimeManager"

    const-string v1, "save failed - manager is not set up yet"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeManagerLastTimestamp"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public setup()V
    .locals 4

    const-string v0, "TimeManager"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/TimeManager;->b:Z

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/TimeManager$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/TimeManager$1;-><init>(Lcom/prineside/tdi2/managers/TimeManager;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v2, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v1

    const-string v2, "timeManagerLastTimestamp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/TimeManager;->a:J

    const-string v1, "loaded time preferences"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed to load time preferences"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
