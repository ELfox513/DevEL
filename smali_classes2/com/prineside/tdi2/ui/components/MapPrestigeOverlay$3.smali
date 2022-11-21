.class Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;->a:Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;->b(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay;)Lcom/prineside/tdi2/MapPrestigeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/MapPrestigeConfig;->getFinalPrestigeTokens()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "map_prestige_confirm"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v2, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3$1;-><init>(Lcom/prineside/tdi2/ui/components/MapPrestigeOverlay$3;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/Dialog;->makeConfirmButtonDisabled(I)V

    return-void
.end method
