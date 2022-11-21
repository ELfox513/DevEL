.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Z)Z

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Z)Z

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1$1;->d:Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Z)Z

    return-void
.end method
