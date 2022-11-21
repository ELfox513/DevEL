.class public Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.source "SourceFile"


# static fields
.field public static final e0:Lcom/badlogic/gdx/utils/IntArray;


# instance fields
.field public a0:F

.field public b0:I

.field public c0:I

.field public d0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->e0:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIF)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput p4, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->a0:F

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->b0:I

    iput p3, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->c0:I

    invoke-static {p3, p2}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->i(II)[I

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->d0:[I

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static i(II)[I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->e0:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    if-eq p0, p1, :cond_5

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    const/16 v1, 0x12

    if-ge p0, v1, :cond_0

    if-le p1, v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_0
    const/16 v1, 0x15

    if-ge p0, v1, :cond_1

    if-le p1, v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_1
    const/16 v1, 0x18

    if-ge p0, v1, :cond_2

    if-le p1, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_2
    const/16 v1, 0x1e

    if-ge p0, v1, :cond_3

    if-le p1, v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_3
    const/16 v1, 0x24

    if-ge p0, v1, :cond_4

    if-le p1, v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_4
    const/16 v1, 0x3c

    if-ge p0, v1, :cond_5

    if-le p1, v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_5
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->d0:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, p1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->d0:[I

    aget v0, v0, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->a0:F

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v4, "..."

    invoke-static {p1, v2, v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->fitToWidth(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object p1

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :cond_2
    invoke-super {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
