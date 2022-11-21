.class Lcom/prineside/tdi2/ui/actors/WebView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/WebView$3;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/WebView$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/WebView;->B(Lcom/prineside/tdi2/ui/actors/WebView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache/web/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/actors/WebView$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->a:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->loadPage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->C(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpRequest;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->b:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$1;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3, v1}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->urlLoadFinish(ZLjava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
