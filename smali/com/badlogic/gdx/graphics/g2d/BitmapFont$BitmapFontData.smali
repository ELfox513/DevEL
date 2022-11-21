.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field public ascent:F

.field public blankLineScale:F

.field public breakChars:[C

.field public capChars:[C

.field public capHeight:F

.field public cursorX:F

.field public descent:F

.field public down:F

.field public flipped:Z

.field public fontFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public imagePaths:[Ljava/lang/String;

.field public lineHeight:F

.field public markupEnabled:Z

.field public missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public name:Ljava/lang/String;

.field public padBottom:F

.field public padLeft:F

.field public padRight:F

.field public padTop:F

.field public scaleX:F

.field public scaleY:F

.field public spaceXadvance:F

.field public xChars:[C

.field public xHeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->load(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method


# virtual methods
.method public getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    return-object v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No glyphs found."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getFontFile()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1ff

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 6

    sub-int v0, p4, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->ensureCapacity(I)[F

    :cond_1
    add-int/lit8 p1, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 v0, 0xd

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    if-nez v0, :cond_3

    :goto_0
    move p3, p1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-nez p5, :cond_5

    iget-boolean p5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz p5, :cond_4

    const/4 p5, 0x0

    goto :goto_1

    :cond_4
    iget p5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int p5, p5

    int-to-float p5, p5

    mul-float p5, p5, v2

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr p5, v5

    goto :goto_1

    :cond_5
    iget v5, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {p5, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result p5

    add-int/2addr v5, p5

    int-to-float p5, v5

    mul-float p5, p5, v2

    :goto_1
    invoke-virtual {v4, p5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    if-eqz v1, :cond_6

    const/16 p5, 0x5b

    if-ne p3, p5, :cond_6

    if-ge p1, p4, :cond_6

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ne p3, p5, :cond_6

    add-int/lit8 p1, p1, 0x1

    :cond_6
    move p3, p1

    move-object p5, v0

    :goto_2
    if-lt p3, p4, :cond_1

    if-eqz p5, :cond_8

    iget-boolean p1, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz p1, :cond_7

    iget p1, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    goto :goto_3

    :cond_7
    iget p1, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget p2, p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    mul-float p1, p1, v2

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr p1, p2

    :goto_3
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_8
    return-void
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getImagePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 p2, p2, -0x1

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v0, p1, p2

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :cond_2
    if-lez p2, :cond_4

    aget-object v0, p1, p2

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public hasGlyph(C)Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBreakChar(C)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->breakChars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v0, v3

    if-ne p1, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 22

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    if-nez v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    const-string v4, "padding="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-ne v5, v7, :cond_29

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    const/4 v5, 0x1

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    const/4 v7, 0x2

    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    const/4 v8, 0x3

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v3, v9

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_28

    const-string v10, " "

    const/16 v11, 0x9

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-lt v10, v8, :cond_27

    aget-object v8, v9, v5

    const-string v10, "lineHeight="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    aget-object v8, v9, v5

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    aget-object v8, v9, v7

    const-string v10, "base="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    aget-object v7, v9, v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    array-length v10, v9

    const/4 v11, 0x6

    if-lt v10, v11, :cond_0

    aget-object v10, v9, v8

    if-eqz v10, :cond_0

    const-string v12, "pages="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    :try_start_1
    aget-object v8, v9, v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v8, 0x1

    :goto_0
    :try_start_2
    new-array v9, v8, [Ljava/lang/String;

    iput-object v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, ".*id=(\\d+)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v9, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Page IDs must be indices starting at 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid page id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    :goto_2
    const-string v11, ".*file=\"?([^\"]+)\"?"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v10

    const-string v12, "\\\\"

    const-string v13, "/"

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: file"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing additional page definitions."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v8, 0x0

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v10, "metrics "

    const v11, 0xffff

    const-string v12, " ="

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    :try_start_5
    const-string v13, "kernings "

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    :goto_4
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v9, v13

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    const-string v13, "kerning "

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1b

    :goto_6
    if-eqz v9, :cond_9

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    move/from16 v21, v9

    move v9, v8

    move/from16 v8, v21

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v15

    if-nez v15, :cond_b

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v15}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    iput v4, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    const/16 v6, 0x6c

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    :cond_a
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v6, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v1, v4, v15}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    :cond_b
    iget v4, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v4, :cond_c

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v6, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-float v6, v6

    add-float/2addr v6, v4

    move-object/from16 v16, v2

    :try_start_6
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    add-float/2addr v6, v2

    float-to-int v2, v6

    iput v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    neg-float v2, v4

    float-to-int v2, v2

    iput v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    goto :goto_8

    :cond_c
    move-object/from16 v16, v2

    :goto_8
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    array-length v4, v2

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_9
    if-ge v15, v4, :cond_e

    aget-char v6, v2, v15

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v17

    if-eqz v17, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    if-nez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v17

    :cond_f
    move-object/from16 v2, v17

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    array-length v4, v2

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v4, :cond_11

    aget-char v6, v2, v15

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-eqz v6, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_11
    :goto_c
    if-nez v6, :cond_17

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v4, v2

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_18

    aget-object v15, v2, v6

    if-nez v15, :cond_12

    move-object/from16 v17, v2

    move/from16 v18, v4

    goto :goto_10

    :cond_12
    move-object/from16 v17, v2

    array-length v2, v15

    move/from16 v18, v4

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_16

    move/from16 v19, v2

    aget-object v2, v15, v4

    if-eqz v2, :cond_14

    move-object/from16 v20, v15

    iget v15, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v15, :cond_15

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v2, :cond_13

    goto :goto_f

    :cond_13
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    int-to-float v15, v15

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    goto :goto_f

    :cond_14
    move-object/from16 v20, v15

    :cond_15
    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v19

    move-object/from16 v15, v20

    goto :goto_e

    :cond_16
    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move/from16 v4, v18

    goto :goto_d

    :cond_17
    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    :cond_18
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v7, v2

    iput v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    if-eqz p2, :cond_19

    neg-float v3, v7

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    neg-float v2, v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    :cond_19
    if-eqz v5, :cond_1a

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iput v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    iput v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iput v14, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1a
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1b
    move-object/from16 v16, v2

    :try_start_7
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v6, :cond_1d

    if-gt v6, v11, :cond_1d

    if-ltz v9, :cond_1d

    if-le v9, v11, :cond_1c

    goto :goto_11

    :cond_1c
    int-to-char v6, v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v6, :cond_1d

    invoke-virtual {v6, v9, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    :cond_1d
    :goto_11
    move-object/from16 v2, v16

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v16, v2

    const-string v2, "char "

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    :goto_12
    move-object/from16 v2, v16

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_20
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_21

    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    goto :goto_13

    :cond_21
    if-gt v9, v11, :cond_1f

    invoke-virtual {v1, v9, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    :goto_13
    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    if-eqz p2, :cond_22

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_14

    :cond_22
    iget v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    neg-int v9, v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    :goto_14
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_23
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_24

    :try_start_8
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    :cond_24
    :try_start_9
    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-lez v6, :cond_1f

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-lez v6, :cond_1f

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    goto/16 :goto_12

    :cond_25
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Missing: base"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Missing: lineHeight"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Invalid common header."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Missing common header."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Invalid padding."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    move-object/from16 v16, v2

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "File is empty."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_3
    move-exception v0

    goto :goto_16

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    :goto_15
    move-object v2, v0

    goto :goto_17

    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    :goto_16
    move-object v2, v0

    :try_start_a
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading font file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_15

    :goto_17
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already loaded."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw v2

    :goto_19
    goto :goto_18
.end method

.method public scale(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aput-object v2, v0, v1

    :cond_0
    and-int/lit16 p1, p1, 0x1ff

    aput-object p2, v2, p1

    return-void
.end method

.method public setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    instance-of v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v10, v1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float v11, v1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v14, v13

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    cmpl-float v16, v8, v9

    if-lez v16, :cond_2

    sub-float/2addr v11, v8

    cmpg-float v16, v11, v9

    if-gez v16, :cond_1

    int-to-float v12, v12

    add-float/2addr v12, v11

    float-to-int v12, v12

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v12, v12

    sub-float/2addr v12, v11

    float-to-int v11, v12

    iput v11, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    const/4 v11, 0x0

    :cond_1
    sub-float/2addr v1, v8

    cmpl-float v8, v1, v6

    if-lez v8, :cond_2

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v8, v8

    sub-float/2addr v1, v6

    sub-float/2addr v8, v1

    float-to-int v1, v8

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    cmpl-float v1, v10, v9

    if-lez v1, :cond_6

    sub-float/2addr v14, v10

    cmpg-float v1, v14, v9

    if-gez v1, :cond_3

    int-to-float v1, v15

    add-float/2addr v1, v14

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-gez v1, :cond_4

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    goto :goto_2

    :cond_3
    move v9, v14

    :cond_4
    :goto_2
    sub-float/2addr v13, v10

    cmpl-float v1, v13, v7

    if-lez v1, :cond_5

    sub-float/2addr v13, v7

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move v14, v9

    goto :goto_3

    :cond_5
    move v14, v9

    :cond_6
    move v7, v13

    :goto_3
    mul-float v11, v11, v3

    add-float/2addr v11, v2

    iput v11, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    mul-float v6, v6, v3

    add-float/2addr v2, v6

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    move-object/from16 v1, p0

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v2, :cond_7

    mul-float v14, v14, v4

    add-float/2addr v14, v5

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto :goto_4

    :cond_7
    mul-float v14, v14, v4

    add-float/2addr v14, v5

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    :goto_4
    return-void
.end method

.method public setLineHeight(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setScale(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float v1, p2, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    mul-float v2, v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float v2, v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    mul-float v2, v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    mul-float v2, v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleY cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleX cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
