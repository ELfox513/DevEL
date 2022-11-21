.class Lcom/prineside/tdi2/managers/AuthManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

.field public final synthetic b:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$3;->b:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$3;->a:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$3$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$3$3;-><init>(Lcom/prineside/tdi2/managers/AuthManager$3;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$3$2;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$3$2;-><init>(Lcom/prineside/tdi2/managers/AuthManager$3;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$3$1;-><init>(Lcom/prineside/tdi2/managers/AuthManager$3;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
