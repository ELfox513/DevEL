.class Lcom/prineside/tdi2/screens/MainMenuScreen$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$12;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$12;->a:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MainMenuScreen;->c(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$12$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$12$1;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen$12;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->receiveIssuedItemsFromServer(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
