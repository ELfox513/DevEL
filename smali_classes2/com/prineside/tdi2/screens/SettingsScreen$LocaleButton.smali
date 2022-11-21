.class Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/SettingsScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocaleButton"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public b:Z

.field public c:Z

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final synthetic e:Lcom/prineside/tdi2/screens/SettingsScreen;

.field public label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->e:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-check"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->setSelected(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->b()V

    return-void
.end method
