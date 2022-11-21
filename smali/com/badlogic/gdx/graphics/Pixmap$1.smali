.class Lcom/badlogic/gdx/graphics/Pixmap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/Pixmap;->downloadFromUrl(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1;->a:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 0

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap$1;->a:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;->downloadFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResult()[B

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap$1$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/graphics/Pixmap$1$1;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$1;[B)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
