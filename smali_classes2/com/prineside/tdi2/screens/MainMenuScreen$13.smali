.class Lcom/prineside/tdi2/screens/MainMenuScreen$13;
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
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final synthetic b:Lcom/prineside/tdi2/screens/MainMenuScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$13;->b:Lcom/prineside/tdi2/screens/MainMenuScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$13;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;-><init>(Lcom/prineside/tdi2/screens/MainMenuScreen$13;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AuthManager;->getNews(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
