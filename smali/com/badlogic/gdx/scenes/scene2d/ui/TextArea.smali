.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:F

.field public E0:F

.field public y0:Lcom/badlogic/gdx/utils/IntArray;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-void
.end method


# virtual methods
.method public final D(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public E()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->F()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->G()V

    return-void
.end method

.method public F()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D(I)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v3, v0

    if-ne v4, v0, :cond_0

    aget v2, v3, v2

    if-eq v2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v0, v0, 0x2

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->G()V

    return-void
.end method

.method public G()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    if-gt v1, v3, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    if-ge v4, v3, :cond_2

    :cond_1
    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()V
    .locals 10

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->z0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->z0:Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_6

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_4

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->i(II)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget v8, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v8, v8, v1

    if-lez v8, :cond_5

    if-lt v6, v7, :cond_3

    add-int/lit8 v7, v5, -0x1

    :cond_3
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    move v6, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v6, v5, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E()V

    :cond_8
    return-void
.end method

.method public getCursorLine()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    return v0
.end method

.method public getCursorX()F
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v2, v1, 0x2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v5, :cond_2

    iget-object v2, v4, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    mul-int/lit8 v1, v1, 0x2

    aget v1, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v2, v2, v3

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v2, v3

    move v3, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v2, v1

    add-float/2addr v3, v2

    :cond_2
    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float/2addr v3, v0

    return v3
.end method

.method public getCursorY()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    mul-float v1, v1, v0

    return v1
.end method

.method public getFirstLineShowing()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    return v0
.end method

.method public getLines()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->newLineAtEnd()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLinesShowing()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E0:F

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public i(II)Z
    .locals 2

    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D(I)I

    move-result v0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i(II)Z

    move-result p2

    if-eqz p2, :cond_1

    if-ltz v0, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    iget-object p2, p2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v1, v0, 0x1

    aget v1, p2, v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    aget p1, p2, v0

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V

    return-object v0
.end method

.method public m(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getCursorX()F

    move-result v0

    add-float v3, p4, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getCursorY()F

    move-result p4

    add-float v4, p5, p4

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v6

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public moveCursorLine(I)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v2

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    if-ne v1, p1, :cond_2

    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    :cond_2
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    goto/16 :goto_3

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    if-eq p1, v0, :cond_8

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    mul-int/lit8 v0, v0, 0x2

    if-gt v1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v2, v0, v1

    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    :cond_5
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v2, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_1

    :cond_6
    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    :goto_2
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E()V

    :cond_8
    :goto_3
    return-void
.end method

.method public newLineAtEnd()Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public o(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v1, 0x1

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v10, v9, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v8, v10, :cond_7

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    if-ge v1, v10, :cond_7

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    if-ge v2, v9, :cond_0

    if-ge v2, v8, :cond_0

    if-ge v3, v9, :cond_0

    if-lt v3, v8, :cond_6

    :cond_0
    if-le v2, v9, :cond_1

    if-le v2, v8, :cond_1

    if-le v3, v9, :cond_1

    if-gt v3, v8, :cond_6

    :cond_1
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    invoke-interface {v11, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v11

    if-eqz v11, :cond_5

    if-ne v10, v9, :cond_3

    iget-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v12, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    iget v11, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v11, v11, v12

    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v11, v12

    :goto_1
    move v12, v11

    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    iget-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    iget v11, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v11, v11, v12

    iget v12, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v11, v12

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    sub-float/2addr v13, v9

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    sub-float/2addr v8, v9

    add-float v9, p4, v13

    add-float v15, v9, v11

    sub-float v9, p5, v5

    sub-float v16, v9, v7

    add-float v17, v8, v12

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v18

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-interface/range {v13 .. v18}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v8

    add-float/2addr v7, v8

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public p(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    mul-int/lit8 v2, v2, 0x2

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v4, :cond_0

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    add-float v9, p4, v1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v10, v3, v2

    add-int/lit8 v4, v2, 0x1

    aget v11, v3, v4

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    sub-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .locals 1
    .param p2    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result p2

    sub-float/2addr v0, p2

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-int p1, v0

    int-to-float v0, p1

    :cond_1
    return v0
.end method

.method public setPrefRows(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E0:F

    return-void
.end method

.method public setSelection(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->F()V

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sizeChanged()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->z0:Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    add-float/2addr v0, v3

    :goto_0
    sub-float/2addr v2, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    return-void
.end method

.method public t()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->M:Z

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->B0:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->D0:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->C0:I

    return-void
.end method

.method public w(F)I
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v4, v3, 0x2

    if-lt v4, v1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    mul-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    aget v5, v1, v4

    add-float/2addr p1, v5

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v0, v0, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget v3, v1, v4

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v4, :cond_3

    aget v0, v1, v4

    sub-float/2addr v0, p1

    add-int/lit8 v3, v4, -0x1

    aget v1, v1, v3

    sub-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    return v4

    :cond_3
    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public x(ZZ)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    if-ltz v2, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->y0:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v4, v2

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-ne v2, v5, :cond_2

    aget v2, v4, v3

    if-ne v2, v5, :cond_2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->A0:I

    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->E()V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->F()V

    return-void
.end method
