.class Lcom/prineside/tdi2/ui/shared/WebBrowser$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/WebBrowser;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/WebBrowser;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modalLoadRequested(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v0

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public urlLoadFinish(ZLjava/lang/String;Z)V
    .locals 2

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->e(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, p3, p3, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->e(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object p2

    sget-object p3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const p2, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "icon-times"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object p3

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p2

    invoke-static {p3, v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    return-void
.end method

.method public urlLoadStart(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->e(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->e(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "loading-icon"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;->a:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
