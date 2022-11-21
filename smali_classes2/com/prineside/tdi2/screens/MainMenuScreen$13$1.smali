.class Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen$13;->run()V
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
.field public final synthetic a:Lcom/prineside/tdi2/screens/MainMenuScreen$13;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MainMenuScreen$13;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->itemsFromServer:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen$13;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/MainMenuScreen$13;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "new_items_from_server_count"

    invoke-virtual {v1, p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;->a:Lcom/prineside/tdi2/screens/MainMenuScreen$13;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/MainMenuScreen$13;->b:Lcom/prineside/tdi2/screens/MainMenuScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MainMenuScreen;->c(Lcom/prineside/tdi2/screens/MainMenuScreen;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const-string p1, "MainMenuScreen"

    const-string v0, "got items from server"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MainMenuScreen$13$1;->retrieved(Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)V

    return-void
.end method
