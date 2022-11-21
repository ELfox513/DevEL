.class public Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final B:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final A:Lcom/prineside/tdi2/GameSystemProvider;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Z

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public s:Lcom/badlogic/gdx/math/Rectangle;

.field public t:F

.field public u:F

.field public v:Z

.field public w:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public x:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public y:Ljava/lang/Runnable;

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->B:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x78

    const-string v3, "UiElementsEmphasizer background and labels"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0x79

    const-string v4, "UiElementsEmphasizer element"

    invoke-virtual {v2, v1, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->A:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getOverlayBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, ""

    invoke-direct {p1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v7, 0x442f0000    # 700.0f

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p1, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v3, 0x44960000    # 1200.0f

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "tap_screen_to_continue"

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p1, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, v2, v2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v3, 0x43200000    # 160.0f

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    new-instance v3, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v3}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    new-instance v3, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$1;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$1;-><init>(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->s:Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->v:Z

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->w:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->y:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public hide(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->A:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->z:F

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->q:Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScale(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->s:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->v:Z

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->w:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->y:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {v1, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->t:F

    iget v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->u:F

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;-><init>(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->hide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->A:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->z:F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->A:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->q:Z

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->r:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->s:Lcom/badlogic/gdx/math/Rectangle;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->y:Ljava/lang/Runnable;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p5, p5, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result p5

    div-float/2addr p5, p4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p4

    if-eqz p4, :cond_1

    sget-object p4, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->B:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {p4, v0, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v0, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->t:F

    iget p3, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p5

    iput p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->u:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p3

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->t:F

    iput v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->u:F

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->x:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScale(F)V

    iget p3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    neg-float p3, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p3, p3, p4

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    neg-float p2, p2

    mul-float p2, p2, p4

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->v:Z

    instance-of p2, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isTransform()Z

    move-result p3

    iput-boolean p3, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->v:Z

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->w:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 p2, 0x3f400000    # 0.75f

    sget-object p3, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    const/high16 p4, 0x3fc00000    # 1.5f

    invoke-static {p4, p4, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
