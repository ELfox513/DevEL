.class Lcom/prineside/tdi2/ui/components/SellButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/SellButton;-><init>(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Ljava/lang/Runnable;

.field public final synthetic p:Lcom/prineside/tdi2/ui/components/SellButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/SellButton;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->o:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->o:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/SellButton;->s(Lcom/prineside/tdi2/ui/components/SellButton;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "sell_for_coins_price_confirm"

    invoke-virtual {p1, v0, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->o:Ljava/lang/Runnable;

    const-string v0, "sellButton"

    invoke-virtual {p2, p1, p3, v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/SellButton;->r(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SellButton;->q(Lcom/prineside/tdi2/ui/components/SellButton;)V

    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/SellButton;->r(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SellButton;->q(Lcom/prineside/tdi2/ui/components/SellButton;)V

    :cond_0
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/SellButton;->p(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/SellButton;->q(Lcom/prineside/tdi2/ui/components/SellButton;)V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/SellButton;->p(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton$1;->p:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/SellButton;->q(Lcom/prineside/tdi2/ui/components/SellButton;)V

    return-void
.end method
