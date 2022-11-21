.class Lcom/prineside/tdi2/screens/AccountScreen$_AuthManagerListener;
.super Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/AccountScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_AuthManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$_AuthManagerListener;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$_AuthManagerListener;-><init>(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method


# virtual methods
.method public autoSaveModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$_AuthManagerListener;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->g(Lcom/prineside/tdi2/screens/AccountScreen;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->isAutoSavesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    return-void
.end method

.method public signInStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$_AuthManagerListener;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method
