.class Lcom/prineside/tdi2/managers/LocaleManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LocaleManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LocaleManager$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LocaleManager$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->b:Lcom/prineside/tdi2/managers/LocaleManager$1;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/LocaleManager$1$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->b:Lcom/prineside/tdi2/managers/LocaleManager$1;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager$1;->a:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/LocaleManager;->getLocale()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/LocaleManager;->setLocale(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download fresh translations for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download fresh translations for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManager"

    invoke-static {v1, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 6

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string p1, "files"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contents"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "en_US"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "i18n/MainBundle.properties"

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i18n/MainBundle_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/managers/LocaleManager$1$1;->b:Lcom/prineside/tdi2/managers/LocaleManager$1;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager$1;->a:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-static {v4}, Lcom/prineside/tdi2/managers/LocaleManager;->a(Lcom/prineside/tdi2/managers/LocaleManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v0, v2, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "LocaleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated translations for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    const-string v0, "LocaleManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/o;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/o;-><init>(Lcom/prineside/tdi2/managers/LocaleManager$1$1;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_3
    const-string p1, "LocaleManager"

    const-string v0, "locales are up to date"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "LocaleManager"

    const-string v1, "Failed to download fresh translations"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
