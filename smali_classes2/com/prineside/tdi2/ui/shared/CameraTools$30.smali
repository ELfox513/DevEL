.class Lcom/prineside/tdi2/ui/shared/CameraTools$30;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

.field public final synthetic c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->d:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->d:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->b:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframeY(IFLcom/prineside/tdi2/enums/InterpolationType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$30;->d:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->i(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    return-void
.end method
