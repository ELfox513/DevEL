.class public Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyframe"
.end annotation


# instance fields
.field public frame:I

.field public iX:Lcom/prineside/tdi2/enums/InterpolationType;

.field public iY:Lcom/prineside/tdi2/enums/InterpolationType;

.field public iZ:Lcom/prineside/tdi2/enums/InterpolationType;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;-><init>()V

    const-string v1, "f"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    const-string v1, "x"

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "iX"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/InterpolationType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/InterpolationType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v1, "y"

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "iY"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/InterpolationType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/InterpolationType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_1
    :goto_1
    const-string v1, "z"

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    const-string v1, "iZ"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/enums/InterpolationType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/InterpolationType;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-object v0
.end method


# virtual methods
.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iX"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iY"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "z"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iZ"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
