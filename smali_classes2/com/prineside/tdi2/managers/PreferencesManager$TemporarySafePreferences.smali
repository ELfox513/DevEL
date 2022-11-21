.class public Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;
.super Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PreferencesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemporarySafePreferences"
.end annotation


# instance fields
.field public final d:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/prineside/tdi2/managers/PreferencesManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PreferencesManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->e:Lcom/prineside/tdi2/managers/PreferencesManager;

    const/16 p1, 0x8

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    invoke-direct {p0, p2, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;-><init>(Ljava/lang/String;[B)V

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void

    :array_0
    .array-data 1
        0xet
        0x1t
        0x5dt
        -0x7t
        -0x47t
        -0x1dt
        0x62t
        0x27t
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/PreferencesManager;Ljava/lang/String;Lcom/prineside/tdi2/managers/PreferencesManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;-><init>(Lcom/prineside/tdi2/managers/PreferencesManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAll()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getAll(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->putAll(Lcom/badlogic/gdx/utils/ObjectMap;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$TemporarySafePreferences;->d:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
