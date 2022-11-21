.class public Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/PreferencesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafePreferences"
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/Preferences;

.field public final b:[B

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences$1;-><init>(Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;)V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    :goto_0
    iput-object p2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->b:[B

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-char v3, p0, v1

    add-int v4, v1, v1

    array-length v5, p0

    add-int/2addr v4, v5

    aget-byte v5, p1, v2

    sub-int/2addr v4, v5

    neg-int v4, v4

    invoke-static {v3, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->b(CI)C

    move-result v3

    aput-char v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static b(CI)C
    .locals 0

    add-int/lit8 p0, p0, -0x20

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x5e

    add-int/lit8 p0, p0, 0x5e

    rem-int/lit8 p0, p0, 0x5e

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->b(Lcom/prineside/tdi2/managers/PreferencesManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preferences are in temporary mode - can\'t access real preferences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1}, Lcom/badlogic/gdx/Preferences;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1}, Lcom/badlogic/gdx/Preferences;->flush()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Preferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/Config;->preferencesEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/prineside/tdi2/utils/StringFormatter;->stringFromCompactBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->b:[B

    invoke-static {v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "SafePreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode Base64 for key \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    :goto_0
    monitor-exit v0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getAll()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v2}, Lcom/badlogic/gdx/Preferences;->get()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p0, v3, v5}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v4, "SafePreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAll - invalid data type for key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getAll(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1}, Lcom/badlogic/gdx/Preferences;->get()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v3, "SafePreferences"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAll - invalid data type for key \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Preferences;->remove(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/prineside/tdi2/Config;->preferencesEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-static {p2}, Lcom/prineside/tdi2/utils/StringFormatter;->stringToCompactBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->a:Lcom/badlogic/gdx/Preferences;

    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
