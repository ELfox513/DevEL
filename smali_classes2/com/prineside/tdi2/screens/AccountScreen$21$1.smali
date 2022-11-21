.class Lcom/prineside/tdi2/screens/AccountScreen$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$21;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$21;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$21$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$21$1;->retrieved(Ljava/lang/String;)V

    return-void
.end method

.method public retrieved(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    new-instance v1, Lcom/prineside/tdi2/screens/AccountScreen$21$1$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/AccountScreen$21$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$21$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/AuthManager;->signInWithGoogle(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "unknown_error"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-times"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$21$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$21;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/AccountScreen$21;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/AccountScreen;->f(Lcom/prineside/tdi2/screens/AccountScreen;)V

    :goto_0
    return-void
.end method
