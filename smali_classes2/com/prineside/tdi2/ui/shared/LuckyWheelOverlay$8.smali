.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    const-string v3, "lucky_shot_token"

    invoke-interface {v0, v1, v3, v2}, Lcom/prineside/tdi2/ActionResolver;->logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "not_enough_tokens"

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v1, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_0
    return-void
.end method
