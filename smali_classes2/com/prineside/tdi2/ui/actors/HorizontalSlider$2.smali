.class Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:D

.field public final synthetic p:D

.field public final synthetic q:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;DD)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->q:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    iput-wide p2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->o:D

    iput-wide p4, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->p:D

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 4

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->q:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double p3, p1, v2

    if-gez p3, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    cmpl-double p3, p1, v0

    if-lez p3, :cond_1

    move-wide p1, v0

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->q:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->o:D

    iget-wide v2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;->p:D

    sub-double/2addr v2, v0

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    const/4 p1, 0x1

    invoke-virtual {p3, v0, v1, p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    return-void
.end method
