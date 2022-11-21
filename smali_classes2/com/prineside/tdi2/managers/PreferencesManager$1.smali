.class Lcom/prineside/tdi2/managers/PreferencesManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromUrl(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/prineside/tdi2/managers/PreferencesManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/PreferencesManager;Lcom/prineside/tdi2/utils/ObjectRetriever;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->c:Lcom/prineside/tdi2/managers/PreferencesManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput-boolean p3, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->l(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->h(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->i()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->g(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$1;->k(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "cant_load_from_cloud_need_update"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-times"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 3

    const-string v0, "PreferencesManager"

    const-string v1, "canceled to send backup request"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/w;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/managers/w;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "PreferencesManager"

    const-string v1, "failed to send backup request"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/v;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/managers/v;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 3

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreferencesManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v1, "build"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb8

    if-le v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup is build "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/r;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/r;-><init>()V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/s;

    invoke-direct {v2, p1}, Lcom/prineside/tdi2/managers/s;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "progress"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->c:Lcom/prineside/tdi2/managers/PreferencesManager;

    iget-boolean v2, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->b:Z

    invoke-virtual {v1, p1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager;->loadFromCompactBase64(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/managers/t;

    invoke-direct {v2, p1}, Lcom/prineside/tdi2/managers/t;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "failed to load backup"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/PreferencesManager$1;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/u;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/managers/u;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
