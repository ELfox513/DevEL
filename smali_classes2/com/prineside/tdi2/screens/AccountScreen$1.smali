.class Lcom/prineside/tdi2/screens/AccountScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->a(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->SIGN_IN:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->a(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->ACCOUNT:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/AccountScreen;->c(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0, v2}, Lcom/prineside/tdi2/screens/AccountScreen;->c(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$1;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    :goto_2
    return-void
.end method
