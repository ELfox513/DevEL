.class Lcom/prineside/tdi2/managers/UiManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/UiManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/UiManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/UiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$4;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customValueChanged(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V
    .locals 0

    sget-object p2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$4;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/UiManager;->d(Lcom/prineside/tdi2/managers/UiManager;)Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$4;->a:Lcom/prineside/tdi2/managers/UiManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/UiManager;->d(Lcom/prineside/tdi2/managers/UiManager;)Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->dispose()V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$4;->a:Lcom/prineside/tdi2/managers/UiManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/managers/UiManager;->e(Lcom/prineside/tdi2/managers/UiManager;Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/shared/WebBrowser;

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$4;->a:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->requireLayoutRebuild()V

    :cond_1
    return-void
.end method

.method public settingsChanged()V
    .locals 0

    return-void
.end method
