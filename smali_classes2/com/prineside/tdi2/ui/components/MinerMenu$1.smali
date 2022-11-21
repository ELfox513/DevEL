.class Lcom/prineside/tdi2/ui/components/MinerMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MinerMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MinerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public globalUpgradeButtonConfirmed()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->d(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/Miner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->getGlobalUpgradePrice(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "upgrade_all_miners_by_type_confirm"

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

    new-instance v2, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/ui/components/MinerMenu$1$1;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu$1;Lcom/prineside/tdi2/Miner;)V

    invoke-virtual {v3, v1, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public upgradeButtonConfirmed()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->d(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/Miner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMinerAction(Lcom/prineside/tdi2/Miner;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    :cond_0
    return-void
.end method

.method public upgradeButtonStateChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu$1;->b:Lcom/prineside/tdi2/ui/components/MinerMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V

    return-void
.end method
