.class Lcom/prineside/tdi2/ui/shared/CameraTools$31;
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

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->c:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->c:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframeZ(IFLcom/prineside/tdi2/enums/InterpolationType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$31;->c:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->e(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
