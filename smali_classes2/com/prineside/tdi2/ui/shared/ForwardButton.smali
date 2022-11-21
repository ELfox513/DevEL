.class public Lcom/prineside/tdi2/ui/shared/ForwardButton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ACTIVE_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final DEFAULT_DISABLED_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final DEFAULT_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field public static final DEFAULT_NORMAL_COLOR:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Color;

.field public b:Lcom/badlogic/gdx/graphics/Color;

.field public c:Lcom/badlogic/gdx/graphics/Color;

.field public d:Lcom/badlogic/gdx/graphics/Color;

.field public final e:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_NORMAL_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_ACTIVE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_DISABLED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->j:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->k:Z

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x64

    const-string v4, "Forward button"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->e:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x43dd0000    # 442.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_NORMAL_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->a:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->b:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_ACTIVE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->c:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_DISABLED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d:Lcom/badlogic/gdx/graphics/Color;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "ui-forward-button"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43ad0000    # 346.0f

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v3, ""

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v0, 0x43a50000    # 330.0f

    const/high16 v3, 0x42f80000    # 124.0f

    invoke-virtual {v1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;-><init>(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->reset()Lcom/prineside/tdi2/ui/shared/ForwardButton;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/ForwardButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->i:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/ForwardButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->j:Z

    return p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->k:Z

    return p1
.end method


# virtual methods
.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public reset()Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-triangle-right"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    sget-object v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_NORMAL_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_HOVER_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_ACTIVE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/ui/shared/ForwardButton;->DEFAULT_DISABLED_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    return-object p0
.end method

.method public setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->a:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->b:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->c:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f()V

    return-object p0
.end method

.method public setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->i:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->f()V

    return-object p0
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisible(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton;->e:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-object p0
.end method
