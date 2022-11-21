.class Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerActor"
.end annotation


# instance fields
.field public M:Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

.field public final synthetic N:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V
    .locals 4

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->N:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    invoke-direct {p1}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->M:Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v1, 0x8

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->M:Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "circle"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, -0x3e800000    # -16.0f

    invoke-virtual {p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;)Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->M:Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->M:Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->dispose()V

    return-void
.end method
