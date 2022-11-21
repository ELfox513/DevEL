.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/MusicManager;->isMusicThumbsUp(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget v3, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/managers/MusicManager;->voteThumbsUp(IZ)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->updateUi()V

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/Config;->VOTE_MUSIC_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget v4, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v10, v4, v6

    const-string v4, "hash"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "vote"

    if-eqz v1, :cond_0

    const-string v1, "up"

    goto :goto_0

    :cond_0
    const-string v1, "down"

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playerid"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sessionid"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v3}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->getBase64()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->name:Ljava/lang/String;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
