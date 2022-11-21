.class Lcom/prineside/tdi2/OkSdkHandler$2;
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
        "Lp7/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/OkSdkHandler;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/OkSdkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/OkSdkHandler$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/OkSdkHandler$2;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/OkSdkHandler$2;Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/OkSdkHandler$2;->c(Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;)V

    return-void
.end method

.method private synthetic c(Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;->SUCCESS_NEW_ACCOUNT:Lcom/prineside/tdi2/managers/AuthManager$InUpSignInResult;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/prineside/tdi2/OkSdkHandler;->okIsLoginSuccess:Z

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v1, "Failed to sign in with OkJoy"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/prineside/tdi2/OkSdkHandler;->okIsLoginSuccess:Z

    :goto_1
    return-void
.end method

.method private synthetic d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v1, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    iget-object v1, v1, Lcom/prineside/tdi2/OkSdkHandler;->okCurrentUserId:Ljava/lang/String;

    new-instance v2, Lcom/prineside/tdi2/x1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/x1;-><init>(Lcom/prineside/tdi2/OkSdkHandler$2;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/prineside/tdi2/managers/AuthManager;->signInWithOkJoy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic failure(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/OkSdkHandler$2;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public failure(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK SDK: setLoginCallBack failure: "

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

    check-cast p1, Lp7/c;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/OkSdkHandler$2;->success(Lp7/c;)V

    return-void
.end method

.method public success(Lp7/c;)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK SDK: setLoginCallBack success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkSdkHandler"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    invoke-virtual {p1}, Lp7/c;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/OkSdkHandler;->okCurrentUserId:Ljava/lang/String;

    invoke-virtual {p1}, Lp7/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lp7/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lp7/c;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/OkSdkHandler$2;->a:Lcom/prineside/tdi2/OkSdkHandler;

    iget-object v4, v4, Lcom/prineside/tdi2/OkSdkHandler;->okCurrentUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/w1;

    invoke-direct {v1, p0, v2, v0}, Lcom/prineside/tdi2/w1;-><init>(Lcom/prineside/tdi2/OkSdkHandler$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
