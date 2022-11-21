.class Lcom/prineside/tdi2/OkSdkHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/OkSdkHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/g<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/OkSdkHandler;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/OkSdkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/OkSdkHandler$3;->a:Lcom/prineside/tdi2/OkSdkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/OkSdkHandler$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/OkSdkHandler$3;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler$3;->a:Lcom/prineside/tdi2/OkSdkHandler;

    iget-object v0, v0, Lcom/prineside/tdi2/OkSdkHandler;->sdk:Lp7/d;

    invoke-interface {v0}, Lp7/d;->d()V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/OkSdkHandler$3;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public failure(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK SDK: setLogoutCallBack failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkSdkHandler"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/OkSdkHandler$3;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK SDK: setLogoutCallBack success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkSdkHandler"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/OkSdkHandler$3;->a:Lcom/prineside/tdi2/OkSdkHandler;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/prineside/tdi2/OkSdkHandler;->okIsLoginSuccess:Z

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/y1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/y1;-><init>(Lcom/prineside/tdi2/OkSdkHandler$3;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
