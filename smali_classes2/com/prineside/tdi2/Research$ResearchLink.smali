.class public Lcom/prineside/tdi2/Research$ResearchLink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Research;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResearchLink"
.end annotation


# instance fields
.field public final child:Lcom/prineside/tdi2/Research;

.field public final parent:Lcom/prineside/tdi2/Research;

.field public pivotX:I

.field public pivotY:I

.field public final requiredLevels:I

.field public final requiredLevelsLabelPos:F

.field public final requiredLevelsLabelX:I

.field public final requiredLevelsLabelY:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/Research;Lcom/prineside/tdi2/Research;IIIF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iput-object p2, p0, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iput p3, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    iput p4, p0, Lcom/prineside/tdi2/Research$ResearchLink;->pivotX:I

    iput p5, p0, Lcom/prineside/tdi2/Research$ResearchLink;->pivotY:I

    iput p6, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelPos:F

    iget p3, p2, Lcom/prineside/tdi2/Research;->x:I

    int-to-float p3, p3

    iget v0, p2, Lcom/prineside/tdi2/Research;->y:I

    int-to-float v0, v0

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-static {p3, v0, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result p3

    iget v0, p1, Lcom/prineside/tdi2/Research;->x:I

    int-to-float v0, v0

    iget v3, p1, Lcom/prineside/tdi2/Research;->y:I

    int-to-float v3, v3

    invoke-static {v0, v3, v1, v2}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v0

    add-float v3, p3, v0

    mul-float p6, p6, v3

    cmpg-float v3, p6, p3

    if-gez v3, :cond_0

    div-float/2addr p6, p3

    iget p1, p2, Lcom/prineside/tdi2/Research;->x:I

    int-to-float p3, p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    mul-float p1, p1, p6

    add-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelX:I

    iget p1, p2, Lcom/prineside/tdi2/Research;->y:I

    int-to-float p2, p1

    sub-int/2addr p5, p1

    int-to-float p1, p5

    mul-float p1, p1, p6

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelY:I

    goto :goto_0

    :cond_0
    sub-float/2addr p6, p3

    div-float/2addr p6, v0

    iget p2, p1, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p6

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelX:I

    iget p1, p1, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr p1, p5

    int-to-float p1, p1

    mul-float p1, p1, p6

    add-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    iget-object v1, p0, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v1, v1, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
