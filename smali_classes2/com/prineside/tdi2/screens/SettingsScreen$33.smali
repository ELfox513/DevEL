.class Lcom/prineside/tdi2/screens/SettingsScreen$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/SettingsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->setDebugMode(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->m(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$33;->a:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->l(Lcom/prineside/tdi2/screens/SettingsScreen;)I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    const-string v1, "zecred"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen$33;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
