.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iput-wide p2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->a:J

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 0

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "MusicListOverlay"

    const-string v1, "Failed"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v0, "infoRequired"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "server asks for music "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicListOverlay"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "already sending music, abort"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
