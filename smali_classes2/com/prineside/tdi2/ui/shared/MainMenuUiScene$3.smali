.class Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->recreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:[Z

.field public final synthetic h:[F

.field public final synthetic i:[F

.field public final synthetic j:[F

.field public final synthetic k:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;[Z[F[F[F)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->k:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->g:[Z

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->h:[F

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->i:[F

    iput-object p5, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->j:[F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->h:[F

    const p3, 0x3d4ccccd    # 0.05f

    mul-float p2, p2, p3

    const/4 p3, 0x0

    aput p2, p1, p3

    return-void
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->i:[F

    const/4 p2, 0x0

    aget p3, p1, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    aput p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->j:[F

    aget p3, p1, p2

    const p4, 0x3a83126f    # 0.001f

    mul-float p5, p5, p4

    sub-float/2addr p3, p5

    aput p3, p1, p2

    const p4, 0x3e99999a    # 0.3f

    const p5, 0x3f933333    # 1.15f

    invoke-static {p3, p4, p5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p3

    aput p3, p1, p2

    return-void
.end method

.method public tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->trophiesListOverlay:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->show()V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->g:[Z

    const/4 p2, 0x0

    aput-boolean p2, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->h:[F

    const/4 p3, 0x0

    aput p3, p1, p2

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$3;->g:[Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    return-void
.end method

.method public zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    return-void
.end method
