.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
    }
.end annotation


# static fields
.field public static keyRepeatInitialTime:F

.field public static keyRepeatTime:F

.field public static final v0:Lcom/badlogic/gdx/math/Vector2;

.field public static final w0:Lcom/badlogic/gdx/math/Vector2;

.field public static final x0:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public I:Ljava/lang/String;

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public final N:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field public final O:Lcom/badlogic/gdx/utils/FloatArray;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/CharSequence;

.field public S:Lcom/badlogic/gdx/utils/Clipboard;

.field public T:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field public U:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public V:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public W:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:I

.field public b0:F

.field public c0:F

.field public d0:Ljava/lang/String;

.field public e0:J

.field public f0:Z

.field public g0:Ljava/lang/StringBuilder;

.field public h0:C

.field public i0:F

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:Z

.field public q0:Z

.field public r0:F

.field public final s0:Lcom/badlogic/gdx/utils/Timer$Task;

.field public final t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

.field public u0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->v0:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->w0:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x0:Lcom/badlogic/gdx/math/Vector2;

    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->N:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->X:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Y:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->a0:I

    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->d0:Ljava/lang/String;

    const/16 v0, 0x95

    iput-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h0:C

    const v0, 0x3ea3d70a    # 0.32f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r0:F

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p2}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->S:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public A(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->o0:I

    if-lez v0, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public B(F)[I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->w(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->C(I)[I

    move-result-object p1

    return-object p1
.end method

.method public C(I)[I
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->v(C)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr p1, v4

    :goto_2
    const/4 v2, -0x1

    if-le p1, v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->v(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/2addr p1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v3

    aput v1, v0, v4

    return-object v0
.end method

.method public appendText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u0:Z

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    return-void
.end method

.method public copy()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->S:Lcom/badlogic/gdx/utils/Clipboard;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cut()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u0:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k(Z)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasKeyboardFocus()Z

    move-result v8

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    if-ne v8, v0, :cond_1

    if-eqz v8, :cond_0

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v8, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q0:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iput-boolean v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q0:Z

    if-eqz v8, :cond_2

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r0:F

    invoke-static {v0, v1, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_3
    :goto_1
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-boolean v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_4

    :goto_2
    goto :goto_3

    :cond_4
    if-eqz v8, :cond_5

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    move-object v10, v1

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v14, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v14, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    const/16 v18, 0x0

    if-eqz v13, :cond_6

    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_4
    invoke-virtual {v6, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g()V

    if-eqz v8, :cond_7

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v0, :cond_7

    if-eqz v11, :cond_7

    add-float v4, v15, v19

    add-float v5, v16, v13

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->o(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    :cond_7
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isFlipped()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    neg-float v0, v0

    move/from16 v18, v0

    :cond_8
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v8, :cond_9

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    if-eqz v0, :cond_d

    :cond_9
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Q:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v1, :cond_a

    move-object v2, v1

    goto :goto_5

    :cond_a
    move-object v2, v9

    :goto_5
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->messageFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_b

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v5, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, v5

    mul-float v0, v0, p2

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    goto :goto_6

    :cond_b
    iget v0, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    :goto_6
    add-float v3, v15, v19

    add-float v0, v16, v13

    add-float v4, v0, v18

    sub-float v17, v17, v19

    sub-float v5, v17, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->n(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V

    goto :goto_7

    :cond_c
    iget v0, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v4, v14, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, v4

    mul-float v3, v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    add-float v0, v15, v19

    add-float v1, v16, v13

    add-float v1, v1, v18

    invoke-virtual {v6, v7, v9, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    :cond_d
    :goto_7
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    if-nez v0, :cond_e

    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q0:Z

    if-eqz v0, :cond_e

    if-eqz v12, :cond_e

    add-float v4, v15, v19

    add-float v5, v16, v13

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V

    :cond_e
    return-void
.end method

.method public g()V
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v3, v1, v3

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    add-float/2addr v3, v6

    const/4 v7, 0x0

    cmpg-float v8, v3, v7

    if-gtz v8, :cond_1

    sub-float/2addr v6, v3

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v3, v1, v3

    sub-float/2addr v3, v0

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    neg-float v6, v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_2

    neg-float v3, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    :cond_2
    :goto_0
    aget v3, v1, v4

    add-int/lit8 v4, v2, -0x2

    const/4 v6, 0x0

    :goto_1
    if-ltz v4, :cond_4

    aget v8, v1, v4

    sub-float v9, v3, v8

    cmpl-float v9, v9, v0

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    move v6, v8

    goto :goto_1

    :cond_4
    :goto_2
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    neg-float v3, v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    neg-float v3, v6

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    :cond_5
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    aget v4, v1, v3

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    neg-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_6

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    move v7, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    sub-float v4, v0, v4

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    if-gt v3, v2, :cond_9

    aget v6, v1, v3

    cmpl-float v6, v6, v4

    if-lez v6, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->n0:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->a0:I

    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_a

    aget v2, v1, v2

    sub-float v2, v0, v2

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    sub-float/2addr v2, v4

    add-float/2addr v2, v7

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    goto :goto_7

    :cond_a
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    add-float/2addr v7, v2

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    :cond_b
    :goto_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v2, v1, v2

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    aget v4, v1, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aget v3, v1, v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    aget v1, v1, v4

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    sub-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->b0:F

    sub-float/2addr v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->c0:F

    :cond_c
    return-void
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->a0:I

    return v0
.end method

.method public getCursorPosition()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return v0
.end method

.method public getDefaultInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->T:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->o0:I

    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getOnscreenKeyboard()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    add-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    const/high16 v0, 0x43160000    # 150.0f

    return v0
.end method

.method public getProgrammaticChangeEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u0:Z

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFieldFilter()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public i(II)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->v(C)Z

    move-result p1

    return p1
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    return v0
.end method

.method public isPasswordMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    return v0
.end method

.method public j()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-object v0
.end method

.method public k(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l(Z)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    :cond_0
    return-void
.end method

.method public l(Z)I
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    return v2
.end method

.method public m(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    sub-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    add-float/2addr p4, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    add-float v3, p4, v0

    iget p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    sub-float/2addr p5, p4

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p3

    sub-float v4, p5, p3

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public n(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFF)V
    .locals 12

    move-object v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Q:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->a0:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v11, "..."

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method public next(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->w0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->v0:Lcom/badlogic/gdx/math/Vector2;

    move-object v9, p0

    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v9

    move-object v6, v2

    move-object v7, v1

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    const v3, -0x800001

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    :cond_1
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActors()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v9

    move-object v6, v2

    move-object v7, v1

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v3

    :cond_2
    move-object v9, v3

    if-nez v9, :cond_3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public o(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->b0:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    add-float v3, p4, v0

    iget p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    sub-float/2addr p5, p4

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p3

    sub-float v4, p5, p3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->c0:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public p(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 10

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    add-float v3, p3, v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->n0:I

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v0, p2

    move-object v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    return-void
.end method

.method public final q(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    .locals 10
    .param p2    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Lcom/badlogic/gdx/math/Vector2;",
            "Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    move-object v4, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz v3, :cond_d

    if-ne v2, p0, :cond_0

    goto/16 :goto_a

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isDisabled()Z

    move-result v5

    if-nez v5, :cond_e

    iget-boolean v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->X:Z

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->ascendantsVisible()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v7, 0x1

    cmpl-float v8, v5, v6

    if-eqz v8, :cond_3

    cmpg-float v8, v5, v6

    if-gez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    xor-int/2addr v8, p5

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    cmpl-float v6, v5, v6

    if-nez v6, :cond_5

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    xor-int/2addr v6, p5

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-nez v8, :cond_6

    if-nez v6, :cond_6

    goto :goto_a

    :cond_6
    if-eqz v4, :cond_9

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v8, v5, v6

    if-eqz v8, :cond_8

    cmpl-float v6, v5, v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    xor-int/2addr v6, p5

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-nez v6, :cond_c

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_b

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :goto_8
    xor-int/2addr v5, p5

    if-eqz v5, :cond_b

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    move v6, v7

    :cond_c
    if-eqz v6, :cond_e

    move-object v4, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_a

    :cond_d
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_e

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object v2

    move-object v4, v2

    :cond_e
    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v4
.end method

.method public r()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasKeyboardFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->focusedBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public s(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .locals 4
    .param p2    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j0:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    add-float/2addr v1, v3

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result p2

    sub-float/2addr v0, p2

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    div-float/2addr v0, v2

    add-float/2addr v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result p1

    if-eqz p1, :cond_1

    float-to-int p1, v1

    int-to-float v1, p1

    :cond_1
    return v1
.end method

.method public selectAll()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->a0:I

    return-void
.end method

.method public setBlinkTime(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r0:F

    return-void
.end method

.method public setClipboard(Lcom/badlogic/gdx/utils/Clipboard;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->S:Lcom/badlogic/gdx/utils/Clipboard;

    return-void
.end method

.method public setCursorPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cursorPosition must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    return-void
.end method

.method public setFocusTraversal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->X:Z

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->o0:I

    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Q:Ljava/lang/String;

    return-void
.end method

.method public setOnlyFontChars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Y:Z

    return-void
.end method

.method public setOnscreenKeyboard(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-void
.end method

.method public setPasswordCharacter(C)V
    .locals 0

    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h0:C

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    :cond_0
    return-void
.end method

.method public setPasswordMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    return-void
.end method

.method public setProgrammaticChangeEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u0:Z

    return-void
.end method

.method public setSelection(II)V
    .locals 2

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    return-void

    :cond_0
    if-ge p2, p1, :cond_1

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selectionEnd must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selectionStart must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v0

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

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

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y(Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void
.end method

.method public setTextFieldFilter(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    return-void
.end method

.method public setTextFieldListener(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    return-void
.end method

.method public t()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->j()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->T:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public u(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(C)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    return p1
.end method

.method public w(F)I
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->cursorX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    sub-float/2addr p1, v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    cmpl-float v5, v4, p1

    if-lez v5, :cond_2

    sub-float/2addr v4, p1

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    sub-float/2addr p1, v0

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v2

    return v1
.end method

.method public x(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :cond_2
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-ge v2, v1, :cond_4

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-le v2, v1, :cond_4

    :goto_2
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i(II)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->A(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->M:Z

    const/16 v7, 0xa

    const/16 v8, 0xd

    if-eqz v6, :cond_3

    if-eq v5, v7, :cond_6

    if-eq v5, v8, :cond_6

    :cond_3
    if-eq v5, v8, :cond_7

    if-ne v5, v7, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Y:Z

    if-eqz v6, :cond_5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v6, :cond_6

    invoke-interface {v6, p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l(Z)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    :cond_9
    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_a
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void
.end method

.method public z()V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    if-eqz v4, :cond_5

    iget-char v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h0:C

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    iget-char v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h0:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->g0:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    :goto_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->N:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->R:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->N:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->first()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v6, 0x1

    :goto_4
    if-ge v6, v1, :cond_7

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    add-float/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->i0:F

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->m0:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->n0:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->O:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v4, v5

    invoke-static {v1, v0, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->n0:I

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    :cond_8
    return-void
.end method
