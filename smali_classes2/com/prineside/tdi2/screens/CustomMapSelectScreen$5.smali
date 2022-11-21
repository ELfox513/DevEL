.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/CustomMapSelectScreen;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/UserMap;

.field public final synthetic b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen;Lcom/prineside/tdi2/UserMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->b:Lcom/prineside/tdi2/screens/CustomMapSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->a:Lcom/prineside/tdi2/UserMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->a:Lcom/prineside/tdi2/UserMap;

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->validate()V

    new-instance v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;)V

    new-instance v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$2;

    invoke-direct {v1, p0, v0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$2;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;Ljava/lang/Runnable;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/prineside/tdi2/Map$InvalidMapException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "map_cant_be_played"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map$InvalidMapException;->getFixHintMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
