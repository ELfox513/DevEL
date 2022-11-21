.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    }
.end annotation


# static fields
.field public static final Y:Lcom/badlogic/gdx/graphics/Color;

.field public static final Z:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;


# instance fields
.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final J:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field public K:F

.field public L:F

.field public final M:Lcom/badlogic/gdx/utils/StringBuilder;

.field public N:I

.field public O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:F

.field public T:Z

.field public U:F

.field public V:F

.field public W:Z

.field public X:Ljava/lang/String;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Y:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Z:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->J:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->N:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->P:I

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->T:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p3

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_0

    iget p2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, p2, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tint(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setPosition(FF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public g(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->T:Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    sub-float/2addr v0, v1

    :cond_0
    move v5, v0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->K:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->L:F

    return-void
.end method

.method public getFontScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    return v0
.end method

.method public getFontScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    return v0
.end method

.method public getGlyphLayout()Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->J:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-object v0
.end method

.method public getLabelAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->P:I

    return v0
.end method

.method public getLineAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->T:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->h()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->L:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    mul-float v2, v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    return v1
.end method

.method public getPrefWidth()F
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->T:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->h()V

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->K:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    add-float/2addr v0, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v0, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method public getText()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public getWrap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->R:Z

    return v0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v2

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    :cond_0
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Z:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->g(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;)V

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->T:Z

    return-void
.end method

.method public layout()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleX()F

    move-result v12

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getScaleY()F

    move-result v13

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    :cond_0
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->R:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->S:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->S:F

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v6

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v7

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v8

    add-float/2addr v7, v8

    sub-float/2addr v2, v7

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v7

    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    add-float/2addr v7, v4

    sub-float/2addr v3, v7

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v6

    goto :goto_1

    :cond_3
    move/from16 v16, v2

    move/from16 v17, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->J:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const/high16 v20, 0x40000000    # 2.0f

    if-nez v14, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move-object v15, v11

    move/from16 v8, v16

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    iget v6, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    move-object v2, v11

    move-object v3, v1

    move/from16 v8, v16

    move-object/from16 v21, v10

    move v10, v14

    move-object v15, v11

    move-object/from16 v11, v21

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v3, v15, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->P:I

    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_7

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    sub-float v16, v16, v2

    goto :goto_3

    :cond_6
    sub-float v16, v16, v2

    div-float v16, v16, v20

    :goto_3
    add-float v18, v18, v16

    :cond_7
    move v8, v2

    move v2, v3

    :goto_4
    move/from16 v11, v18

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->P:I

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_9

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    sub-float v3, v17, v2

    :goto_5
    add-float v19, v19, v3

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    add-float v19, v19, v3

    goto :goto_7

    :cond_9
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-eqz v3, :cond_a

    sub-float v3, v17, v2

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    add-float v19, v19, v3

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    sub-float v19, v19, v3

    goto :goto_7

    :cond_b
    sub-float v17, v17, v2

    div-float v17, v17, v20

    add-float v19, v19, v17

    :goto_7
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v3

    if-nez v3, :cond_c

    add-float v19, v19, v2

    :cond_c
    move/from16 v10, v19

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    iget v6, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    move-object v2, v15

    move-object/from16 v16, v3

    move-object v3, v1

    move/from16 v22, v10

    move v10, v14

    move v14, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move/from16 v3, v22

    invoke-virtual {v2, v15, v14, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    :cond_d
    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(II)V

    return-void
.end method

.method public setAlignment(II)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->P:I

    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->Q:I

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->invalidate()V

    return-void
.end method

.method public setEllipsis(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    return-void
.end method

.method public setEllipsis(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "..."

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->X:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    return-void
.end method

.method public setFontScale(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->W:Z

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void
.end method

.method public setFontScaleX(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->V:F

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    return-void
.end method

.method public setFontScaleY(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->U:F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setFontScale(FF)V

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->newFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->O:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing LabelStyle font."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->clear()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->N:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void
.end method

.method public setText(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->N:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->N:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    const/4 p1, 0x1

    return p1
.end method

.method public setWrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->R:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void
.end method

.method public textEquals(Ljava/lang/CharSequence;)Z
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, v0, v2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    const-string v2, "Label "

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->M:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
