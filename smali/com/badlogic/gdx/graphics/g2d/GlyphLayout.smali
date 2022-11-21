.class public Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    }
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/badlogic/gdx/utils/IntArray;


# instance fields
.field public final colors:Lcom/badlogic/gdx/utils/IntArray;

.field public glyphCount:I

.field public height:F

.field public final runs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 7

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v3, v2, v1

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    if-eqz v0, :cond_1

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    sub-float v6, p1, v6

    mul-float v6, v6, v5

    goto :goto_2

    :cond_1
    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    sub-float v6, p1, v5

    :goto_2
    add-float/2addr v4, v6

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V
    .locals 14

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v6, v1, v4

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v7, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v8, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    aget v9, v7, v3

    add-float/2addr v8, v9

    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v9, :cond_0

    aget-object v13, v10, v11

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-virtual {p0, v13, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->c(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F

    move-result v13

    add-float/2addr v13, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int/lit8 v11, v11, 0x1

    aget v13, v7, v11

    add-float/2addr v8, v13

    goto :goto_1

    :cond_0
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    return-void
.end method

.method public final c(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float p1, p1, v0

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr p1, p2

    return p1
.end method

.method public final d(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            ")F"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int p1, p1

    int-to-float p1, p1

    iget v0, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float p1, p1, v0

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr p1, p2

    return p1
.end method

.method public final e(Ljava/lang/CharSequence;II)I
    .locals 6

    const/4 v0, -0x1

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/16 v4, 0x5d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_6

    if-eq v1, v4, :cond_4

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Colors;->get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    sget-object p3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    sub-int/2addr v1, p2

    return v1

    :cond_3
    return v0

    :cond_4
    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    iget p2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    :cond_5
    return v3

    :cond_6
    const/4 p1, -0x2

    return p1

    :cond_7
    add-int/lit8 v1, p2, 0x1

    :goto_1
    if-ge v1, p3, :cond_d

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_a

    add-int/lit8 p1, p2, 0x2

    if-lt v1, p1, :cond_d

    add-int/lit8 p1, p2, 0x9

    if-le v1, p1, :cond_8

    goto :goto_3

    :cond_8
    sub-int/2addr v1, p2

    const/16 p1, 0x8

    if-ge v1, p1, :cond_9

    rsub-int/lit8 p1, v1, 0x9

    shl-int/lit8 p1, p1, 0x2

    shl-int p1, v3, p1

    or-int/lit16 v3, p1, 0xff

    :cond_9
    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    return v1

    :cond_a
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    const/16 v5, 0x30

    if-lt v2, v5, :cond_b

    const/16 v5, 0x39

    if-gt v2, v5, :cond_b

    add-int/lit8 v3, v3, -0x30

    goto :goto_2

    :cond_b
    const/16 v5, 0x41

    if-lt v2, v5, :cond_c

    const/16 v5, 0x46

    if-gt v2, v5, :cond_c

    add-int/lit8 v3, v3, -0x37

    goto :goto_2

    :cond_c
    const/16 v5, 0x61

    if-lt v2, v5, :cond_d

    const/16 v5, 0x66

    if-gt v2, v5, :cond_d

    add-int/lit8 v3, v3, -0x57

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    :goto_3
    return v0
.end method

.method public final f(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V
    .locals 2

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-nez v1, :cond_0

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p2, p2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->c(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F

    move-result p1

    aput p1, v1, p2

    :cond_0
    return-void
.end method

.method public final g(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;)V
    .locals 8

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->f(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v2, :cond_0

    aget v7, v5, v6

    add-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sub-float/2addr p3, v4

    const/4 v2, 0x0

    iget v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget-object v5, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    :goto_1
    iget-object v6, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v2, v6, :cond_2

    aget v6, v5, v2

    add-float/2addr v4, v6

    cmpl-float v6, v4, p3

    if-lez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-le v2, v3, :cond_3

    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->f(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    iget-object p3, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez v2, :cond_4

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    sub-int/2addr v2, v3

    invoke-virtual {v4, p3, v3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    goto :goto_3

    :cond_3
    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    :cond_4
    :goto_3
    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v0, p3

    if-lez v0, :cond_5

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-eqz p1, :cond_5

    :goto_4
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget p3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v0, 0x2

    if-le p3, v0, :cond_5

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result p1

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    if-lt p1, p3, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget p3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr p3, v0

    iput p3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_4

    :cond_5
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;I)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .locals 10

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    move v3, p3

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p3, v1, :cond_3

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p3, v1, :cond_5

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    iput-object v7, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iput-object v0, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v2, v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    invoke-virtual {v2, v6, p3}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    iget-object p3, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->d(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F

    move-result v0

    aput v0, p3, v8

    iput-object v7, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iput-object v2, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v0, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v1, p3

    sub-int/2addr v1, v0

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    sub-int/2addr p3, v1

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    iget-boolean v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-eqz v2, :cond_7

    if-lez v1, :cond_7

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v0, v5

    :goto_3
    if-lt v0, v5, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    if-gt v2, p3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    sub-int/2addr v2, v1

    invoke-virtual {v6, v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    sub-int/2addr p3, v3

    if-lez p3, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    iget-boolean p3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result p3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    if-le p3, v0, :cond_7

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntArray;->peek()I

    move-result p3

    :goto_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1, p3}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    :cond_7
    :goto_5
    if-nez v3, :cond_8

    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->f(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    :goto_6
    return-object v4
.end method

.method public reset()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 25
    .param p9    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p9

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->reset()V

    move-object/from16 v1, p1

    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move/from16 v1, p3

    if-ne v1, v8, :cond_0

    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    return-void

    :cond_0
    if-eqz p8, :cond_1

    iget v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    move/from16 v3, p6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_1
    move/from16 v3, p6

    move v11, v3

    :goto_0
    const/4 v12, 0x0

    if-nez p8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v14, 0x1

    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v12, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    iget-boolean v15, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-eqz v15, :cond_4

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_4
    iget v6, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    const/16 v16, 0x0

    move v4, v1

    move v3, v2

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_3
    if-ne v1, v8, :cond_6

    if-ne v4, v8, :cond_5

    goto/16 :goto_d

    :cond_5
    move v13, v1

    move v5, v2

    move v2, v8

    const/16 v19, 0x1

    const/16 v20, 0x0

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v1, 0x1

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v5, 0xa

    if-eq v1, v5, :cond_b

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v15, :cond_a

    invoke-virtual {v0, v7, v13, v8}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->e(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_9

    add-int/lit8 v5, v13, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v13, v1

    if-ne v13, v8, :cond_8

    const/16 v19, 0x1

    const/16 v20, 0x0

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->peek()I

    move-result v1

    move v2, v5

    const/16 v20, 0x0

    move v5, v1

    goto :goto_6

    :cond_9
    const/4 v5, -0x2

    if-ne v1, v5, :cond_a

    add-int/lit8 v13, v13, 0x1

    :cond_a
    :goto_4
    move v1, v13

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v13, -0x1

    const/16 v20, 0x1

    :goto_5
    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    :goto_6
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move/from16 p3, v5

    const/4 v5, 0x0

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iput v12, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    move-object v8, v1

    move-object v1, v10

    move/from16 p5, v2

    move-object v2, v7

    move/from16 v21, v12

    move v12, v3

    move-object/from16 v3, p2

    move/from16 p8, v4

    move/from16 v22, v13

    move/from16 v13, p3

    move/from16 v5, p5

    move/from16 v23, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    const/4 v1, 0x2

    if-eq v13, v12, :cond_d

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphCount:I

    if-ne v2, v3, :cond_c

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v13}, Lcom/badlogic/gdx/utils/IntArray;->set(II)V

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colors:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :goto_7
    move v3, v13

    goto :goto_8

    :cond_d
    move v3, v12

    :goto_8
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_e

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    move-object/from16 v2, v18

    if-nez v2, :cond_10

    move-object/from16 v18, v2

    move/from16 v12, v21

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p7

    goto/16 :goto_12

    :cond_e
    move-object/from16 v2, v18

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->a(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_10
    move-object v7, v2

    :goto_9
    if-nez v20, :cond_12

    if-eqz v19, :cond_11

    goto :goto_a

    :cond_11
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-object/from16 v17, v2

    goto :goto_b

    :cond_12
    :goto_a
    invoke-virtual {v0, v10, v7}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->f(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    move-object/from16 v17, v16

    :goto_b
    if-eqz v14, :cond_1d

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_13

    goto/16 :goto_11

    :cond_13
    if-nez v20, :cond_14

    if-eqz v19, :cond_1d

    :cond_14
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v2

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    add-float/2addr v2, v4

    move/from16 v12, v21

    :goto_c
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v1, v4, :cond_1c

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-virtual {v0, v4, v10}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->c(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)F

    move-result v4

    add-float/2addr v4, v2

    const v6, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v4, v6

    cmpg-float v4, v4, v11

    if-gtz v4, :cond_15

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v4, v1

    add-float/2addr v2, v4

    move v4, v2

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p7

    goto :goto_10

    :cond_15
    if-eqz v9, :cond_17

    invoke-virtual {v0, v10, v7, v11, v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->g(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;)V

    :goto_d
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V

    move/from16 v2, p7

    invoke-virtual {v0, v11, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->a(FI)V

    if-eqz v15, :cond_16

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->b:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    :cond_16
    return-void

    :cond_17
    move/from16 v2, p7

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I

    move-result v1

    if-nez v1, :cond_18

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1a

    goto :goto_e

    :cond_18
    const/4 v6, 0x0

    :goto_e
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v4, :cond_19

    goto :goto_f

    :cond_19
    move v5, v1

    :cond_1a
    :goto_f
    invoke-virtual {v0, v10, v7, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->h(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;I)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-result-object v1

    if-nez v1, :cond_1b

    move-object/from16 v18, v1

    const/4 v8, 0x1

    goto :goto_12

    :cond_1b
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-float v12, v12, v23

    iput v6, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iput v12, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v4

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v5

    add-float/2addr v4, v5

    move-object v7, v1

    const/4 v1, 0x1

    :goto_10
    add-int/2addr v1, v8

    move v2, v4

    goto/16 :goto_c

    :cond_1c
    move/from16 v2, p7

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v18, v7

    goto :goto_12

    :cond_1d
    :goto_11
    move/from16 v2, p7

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v18, v7

    move/from16 v12, v21

    :goto_12
    if-eqz v20, :cond_1f

    move/from16 v5, p5

    move/from16 v1, p8

    if-ne v5, v1, :cond_1e

    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float v1, v1, v23

    add-float/2addr v12, v1

    goto :goto_13

    :cond_1e
    add-float v12, v12, v23

    :goto_13
    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :cond_1f
    move-object/from16 v7, p2

    move/from16 v8, p4

    move v2, v13

    move/from16 v1, v22

    move v4, v1

    move/from16 v6, v23

    goto/16 :goto_3
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
