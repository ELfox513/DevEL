.class public Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scenario"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;
    }
.end annotation


# static fields
.field public static a:Lcom/badlogic/gdx/math/Vector3;

.field public static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fps:I

.field public keyframes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field public length:I

.field public name:Ljava/lang/String;

.field public startFrame:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CS"

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->name:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->name:Ljava/lang/String;

    const-string v1, "fps"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    const-string v1, "length"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    const-string v1, "startFrame"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    :try_start_0
    const-string v1, "keyframes"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->b:Ljava/util/Comparator;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public calculate(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 11

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    int-to-float v1, v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    :cond_0
    int-to-float v0, v2

    mul-float v0, v0, p1

    float-to-int v0, v0

    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v1, :cond_2

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v5, v5, v1

    iget v6, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-gt v6, v0, :cond_1

    iget v6, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move-object v5, v4

    const/4 v1, 0x0

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v8, :cond_4

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v7, v7, v1

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-le v8, v0, :cond_3

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    move-object v7, v4

    :goto_3
    if-nez v7, :cond_5

    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    iput v5, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_5

    :cond_5
    iget v1, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-ne v1, v8, :cond_6

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    int-to-float v1, v1

    iget v9, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v10, v9

    div-float/2addr v1, v10

    int-to-float v8, v8

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v9, p1, v1

    sub-float/2addr v8, v1

    div-float/2addr v9, v8

    :goto_4
    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {v8}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v8

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    iget v7, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    invoke-virtual {v8, v5, v7, v9}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    :cond_7
    :goto_5
    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_9

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v5, v5, v1

    iget v7, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-gt v7, v0, :cond_8

    iget v7, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_9
    move-object v5, v4

    const/4 v1, 0x0

    :goto_7
    if-eqz v5, :cond_e

    :goto_8
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v8, :cond_b

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v7, v7, v1

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-le v8, v0, :cond_a

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_9

    :cond_a
    goto :goto_8

    :cond_b
    move-object v7, v4

    :goto_9
    if-nez v7, :cond_c

    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    iput v5, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_b

    :cond_c
    iget v1, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    iget v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-ne v1, v8, :cond_d

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_d
    int-to-float v1, v1

    iget v9, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v10, v9

    div-float/2addr v1, v10

    int-to-float v8, v8

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float v9, p1, v1

    sub-float/2addr v8, v1

    div-float/2addr v9, v8

    :goto_a
    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {v8}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v8

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    iget v7, v7, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    invoke-virtual {v8, v5, v7, v9}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    :cond_e
    :goto_b
    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_10

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v2, v2, v1

    iget v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-gt v5, v0, :cond_f

    iget v5, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_f

    move v3, v1

    goto :goto_d

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_10
    move-object v2, v4

    :goto_d
    if-eqz v2, :cond_15

    :goto_e
    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_12

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v1, v1, v3

    iget v5, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-le v5, v0, :cond_11

    iget v5, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v4, v1

    goto :goto_f

    :cond_11
    goto :goto_e

    :cond_12
    :goto_f
    if-nez v4, :cond_13

    sget-object p1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_11

    :cond_13
    iget v0, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    iget v1, v4, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-ne v0, v1, :cond_14

    goto :goto_10

    :cond_14
    int-to-float v0, v0

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v5, v3

    div-float/2addr v0, v5

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float v6, p1, v1

    :goto_10
    sget-object p1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, v4, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    invoke-static {v0}, Lcom/prineside/tdi2/enums/InterpolationType;->getObject(Lcom/prineside/tdi2/enums/InterpolationType;)Lcom/badlogic/gdx/math/Interpolation;

    move-result-object v0

    iget v1, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    iget v2, v4, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    invoke-virtual {v0, v1, v2, v6}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    :cond_15
    :goto_11
    sget-object p1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->a:Lcom/badlogic/gdx/math/Vector3;

    return-object p1
.end method

.method public getDuration()D
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    int-to-double v0, v0

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    if-ne v2, p1, :cond_0

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object p1, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeKeyframe(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;
    .locals 2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->removeKeyframe(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;-><init>()V

    iput p1, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->frame:I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->b:Ljava/util/Comparator;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :cond_1
    iput p2, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    iput-object p3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    iput p4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    iput-object p5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    iput p6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    iput-object p7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    return-object v0
.end method

.method public setKeyframeX(IFLcom/prineside/tdi2/enums/InterpolationType;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v0

    if-nez p3, :cond_1

    if-nez v0, :cond_0

    sget-object p3, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    goto :goto_0

    :cond_0
    iget-object p3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_1
    :goto_0
    move-object v4, p3

    if-nez v0, :cond_2

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    :goto_1
    return-void
.end method

.method public setKeyframeY(IFLcom/prineside/tdi2/enums/InterpolationType;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v0

    if-nez p3, :cond_1

    if-nez v0, :cond_0

    sget-object p3, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    goto :goto_0

    :cond_0
    iget-object p3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_1
    :goto_0
    move-object v6, p3

    if-nez v0, :cond_2

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v7, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->z:F

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    :goto_1
    return-void
.end method

.method public setKeyframeZ(IFLcom/prineside/tdi2/enums/InterpolationType;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->getKeyframe(I)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    move-result-object v0

    if-nez p3, :cond_1

    if-nez v0, :cond_0

    sget-object p3, Lcom/prineside/tdi2/enums/InterpolationType;->linear:Lcom/prineside/tdi2/enums/InterpolationType;

    goto :goto_0

    :cond_0
    iget-object p3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iZ:Lcom/prineside/tdi2/enums/InterpolationType;

    :cond_1
    :goto_0
    move-object v8, p3

    if-nez v0, :cond_2

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->x:F

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iX:Lcom/prineside/tdi2/enums/InterpolationType;

    iget v5, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->y:F

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->iY:Lcom/prineside/tdi2/enums/InterpolationType;

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->setKeyframe(IFLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;FLcom/prineside/tdi2/enums/InterpolationType;)Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    :goto_1
    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fps"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "length"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "startFrame"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "keyframes"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->keyframes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario$Keyframe;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method
