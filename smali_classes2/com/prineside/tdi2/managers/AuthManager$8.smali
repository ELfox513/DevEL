.class Lcom/prineside/tdi2/managers/AuthManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$8;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 6

    const-string v0, "AuthManager"

    if-nez p1, :cond_0

    const-string p1, "failed to load saved games list in checkIfCloudSaveGameDiffers"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v3, "slotId"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AuthManager$8;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotId()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 p1, 0x1

    const-string v4, "slotTimestamp"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/prineside/tdi2/managers/AuthManager$8;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getCloudSaveSlotTimestamp()I

    move-result v4

    if-le v1, v4, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "newer_cloud_save_load_confirm"

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/prineside/tdi2/managers/AuthManager$8$1;

    invoke-direct {v5, p0, v3}, Lcom/prineside/tdi2/managers/AuthManager$8$1;-><init>(Lcom/prineside/tdi2/managers/AuthManager$8;I)V

    new-instance v3, Lcom/prineside/tdi2/managers/AuthManager$8$2;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/managers/AuthManager$8$2;-><init>(Lcom/prineside/tdi2/managers/AuthManager$8;)V

    invoke-virtual {v4, v1, v5, v3}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$8;->a:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 v1, -0x1

    invoke-static {p1, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->h(Lcom/prineside/tdi2/managers/AuthManager;II)V

    const-string p1, "locally cached saved game slot ID not found"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/AuthManager$8;->retrieved(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method
