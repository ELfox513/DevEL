.class Lcom/prineside/tdi2/ui/components/MainUi$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MainUi;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$4;->o:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "double_multiplier_timer_hint"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->showAlert(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$4;->o:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->f(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$4;->o:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->g(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$4;->o:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->f(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$4;->o:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->g(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    const p2, 0x3f0f5c29    # 0.56f

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method
