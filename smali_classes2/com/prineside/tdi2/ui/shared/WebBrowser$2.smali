.class Lcom/prineside/tdi2/ui/shared/WebBrowser$2;
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
.field public final synthetic a:I

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/WebBrowser;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modalLoadRequested(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v0

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public urlLoadFinish(ZLjava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modal urlLoadFinish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WebBrowser"

    invoke-static {v4, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->c(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    if-lez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    add-float/2addr v3, v4

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x44020000    # 520.0f

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    iget v5, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->a:I

    int-to-float v5, v5

    mul-float v5, v5, v6

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v7

    iget v7, v7, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    mul-float v7, v7, v6

    sub-float/2addr v5, v7

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->c(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    mul-float v5, v5, v6

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v7

    iget v7, v7, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    mul-float v7, v7, v6

    invoke-virtual {v3, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x0

    invoke-static {v1, v1, v3}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v6, 0x8

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v2

    const/4 v9, 0x1

    aput v8, v7, v9

    const/4 v10, 0x2

    const/high16 v11, 0x40c00000    # 6.0f

    aput v11, v7, v10

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v12}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    const/4 v13, 0x3

    aput v12, v7, v13

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v12}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    const/4 v14, 0x4

    aput v12, v7, v14

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v12}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    sub-float/2addr v12, v11

    const/4 v15, 0x5

    aput v12, v7, v15

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v12}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v12

    iget v12, v12, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    sub-float/2addr v12, v11

    const/16 v16, 0x6

    aput v12, v7, v16

    const/4 v12, 0x7

    aput v11, v7, v12

    invoke-direct {v1, v5, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v7, -0x3f000000    # -8.0f

    invoke-virtual {v1, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x242424ff

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v6, [F

    aput v8, v6, v2

    aput v8, v6, v9

    aput v11, v6, v10

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    aput v2, v6, v13

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    aput v2, v6, v14

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    sub-float/2addr v2, v11

    aput v2, v6, v15

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    sub-float/2addr v2, v11

    aput v2, v6, v16

    aput v11, v6, v12

    invoke-direct {v1, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    int-to-float v2, v2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-times"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/shared/WebBrowser$2$1;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser$2$1;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser$2;)V

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modal size is unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/actors/WebView;->pageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    goto :goto_0

    :cond_1
    const-string v1, "modal loading is not successful"

    invoke-static {v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    :goto_0
    return-void
.end method

.method public urlLoadStart(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 3

    const-string p1, "WebBrowser"

    const-string v0, "modal urlLoadStart"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->c(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "loading-icon"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->a:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x43f80000    # 496.0f

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->c(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
