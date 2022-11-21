.class Lcom/prineside/tdi2/ui/components/TowerMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public globalUpgradeButtonConfirmed()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/TowerSystem;->getGlobalUpgradePrice(Lcom/prineside/tdi2/enums/TowerType;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "upgrade_all_towers_by_type_confirm"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " <@game-ui-coin-icon>[#FDD835]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu$3$1;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu$3;Lcom/prineside/tdi2/Tower;)V

    invoke-virtual {v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public upgradeButtonConfirmed()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->upgradeTowerAction(Lcom/prineside/tdi2/Tower;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    :cond_0
    return-void
.end method

.method public upgradeButtonStateChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$3;->b:Lcom/prineside/tdi2/ui/components/TowerMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z

    return-void
.end method
