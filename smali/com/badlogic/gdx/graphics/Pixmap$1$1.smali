.class Lcom/badlogic/gdx/graphics/Pixmap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/Pixmap$1;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lcom/badlogic/gdx/graphics/Pixmap$1;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$1;[B)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->b:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->a:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->b:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Pixmap$1;->a:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;->downloadComplete(Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->b:Lcom/badlogic/gdx/graphics/Pixmap$1;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$1;->failed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
