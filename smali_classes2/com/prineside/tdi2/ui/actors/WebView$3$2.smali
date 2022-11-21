.class Lcom/prineside/tdi2/ui/actors/WebView$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/WebView$3;->failed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/WebView$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache/web/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/actors/WebView$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->loadPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    aget-object v4, v4, v3

    invoke-interface {v4, v0, v2, v0}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->urlLoadFinish(ZLjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    nop

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$2;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v1}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->urlLoadFinish(ZLjava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method
