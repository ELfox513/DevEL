.class Lcom/prineside/tdi2/screens/MainMenuScreen$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen$4;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$4$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Config;->XDX_VIEW_NEWS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen$4$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V

    return-void
.end method
