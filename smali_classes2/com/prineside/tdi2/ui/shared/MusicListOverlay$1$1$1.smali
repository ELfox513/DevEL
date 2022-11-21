.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "MusicListOverlay"

    const-string v1, "sending music to server"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Z)Z

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->SUBMIT_MUSIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-wide v3, v3, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->b:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->c:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    :cond_0
    return-void
.end method
