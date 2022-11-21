.class Lcom/prineside/tdi2/ui/components/RatingForm$6;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/RatingForm;->showStarsForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:[I

.field public final synthetic p:I

.field public final synthetic q:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final synthetic r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public final synthetic s:Lcom/prineside/tdi2/ui/components/RatingForm;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/RatingForm;[II[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;Lcom/prineside/tdi2/ui/actors/ComplexButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->s:Lcom/prineside/tdi2/ui/components/RatingForm;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->o:[I

    iput p3, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->p:I

    iput-object p4, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->q:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->o:[I

    iget p2, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->p:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->q:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object p2, p2, p1

    const v1, 0x3e8f5c29    # 0.28f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->o:[I

    aget p1, p1, v0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    const/4 p2, 0x0

    :goto_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->o:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->q:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$6;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method
