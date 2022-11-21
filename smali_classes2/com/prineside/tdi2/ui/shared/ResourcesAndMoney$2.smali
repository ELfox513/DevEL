.class Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;
.super Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public reloaded()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->d(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;Z)Z

    return-void
.end method

.method public temporaryModeUpdated()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager;->isTemporarySettingsApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->c(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-sand-clock"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->c(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-money"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$2;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->d(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;Z)Z

    return-void
.end method
