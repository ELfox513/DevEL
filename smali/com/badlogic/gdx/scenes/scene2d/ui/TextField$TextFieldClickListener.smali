.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldClickListener"
.end annotation


# instance fields
.field public final synthetic o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->X:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_0
    sget-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isIos:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Z)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    return-void
.end method

.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->getTapCount()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->B(F)[I

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    :cond_2
    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->q:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->q:I

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    sget v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    sget v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_1
    return-void
.end method

.method public e(FF)V
    .locals 0

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->w(F)I

    move-result p1

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    iput-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q0:Z

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r0:F

    invoke-static {p2, p1, p1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 10

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    iput-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->q0:Z

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->p0:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->s0:Lcom/badlogic/gdx/utils/Timer$Task;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->r0:F

    invoke-static {v0, p1, p1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasKeyboardFocus()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->f0:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7c

    if-eqz p1, :cond_9

    const/16 p1, 0x1d

    if-eq p2, p1, :cond_8

    const/16 p1, 0x1f

    if-eq p2, p1, :cond_7

    const/16 p1, 0x32

    if-eq p2, p1, :cond_6

    const/16 p1, 0x34

    if-eq p2, p1, :cond_5

    const/16 p1, 0x36

    if-eq p2, p1, :cond_4

    if-eq p2, v3, :cond_7

    const/4 p1, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->d0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->d0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    return v0

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k(Z)V

    return v0

    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->S:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-interface {v4}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    return v0

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    return v0

    :cond_9
    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v5

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x7b

    const/4 v9, 0x3

    if-eqz v5, :cond_10

    const/16 v5, 0x70

    if-eq p2, v5, :cond_b

    if-eq p2, v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->S:Lcom/badlogic/gdx/utils/Clipboard;

    invoke-interface {v5}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->k(Z)V

    :goto_3
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v5, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-eq p2, v9, :cond_f

    if-eq p2, v8, :cond_e

    if-eq p2, v7, :cond_d

    if-eq p2, v6, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->b(Z)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->c(Z)V

    :goto_5
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-nez v3, :cond_15

    iput v5, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iput-boolean v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    goto :goto_7

    :cond_10
    if-eq p2, v9, :cond_14

    if-eq p2, v8, :cond_13

    if-eq p2, v7, :cond_12

    if-eq p2, v6, :cond_11

    :goto_6
    move v0, p1

    goto :goto_9

    :cond_11
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_8

    :cond_12
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x(ZZ)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_8

    :cond_13
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->b(Z)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_7

    :cond_14
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->c(Z)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_15
    :goto_7
    move v0, p1

    :goto_8
    const/4 v4, 0x1

    :goto_9
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v3, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    iput v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-eqz v0, :cond_16

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->d(I)V

    :cond_16
    return v4
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 13

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    const/16 v2, 0x20

    if-ge p2, v2, :cond_1

    return v1

    :cond_1
    :pswitch_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasKeyboardFocus()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    sget-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x3f

    invoke-interface {p1, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->a(C)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->next(Z)V

    goto/16 :goto_b

    :cond_4
    if-eq p2, v0, :cond_6

    const/16 p1, 0xa

    if-ne p2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v0, 0x7f

    if-ne p2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eqz p1, :cond_9

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->M:Z

    goto :goto_5

    :cond_9
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Y:Z

    if-eqz v5, :cond_b

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v3, :cond_d

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-nez v4, :cond_e

    if-eqz v5, :cond_1a

    :cond_e
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-eqz v5, :cond_11

    iget-boolean v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v9, :cond_f

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l(Z)I

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    if-lez v8, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v10, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    sub-int/2addr v9, v2

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v10, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v11, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 v12, v11, -0x1

    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v6, 0x0

    iput v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l0:F

    :cond_10
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    invoke-virtual {v9, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/2addr v6, v2

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    :cond_11
    :goto_8
    if-eqz v4, :cond_17

    if-nez v5, :cond_17

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v3, :cond_12

    invoke-interface {v3, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v5, :cond_13

    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_9
    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->A(I)Z

    move-result v0

    if-nez v0, :cond_14

    return v2

    :cond_14
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    if-eqz v3, :cond_15

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->l(Z)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    :cond_15
    if-eqz p1, :cond_16

    const-string p1, "\n"

    goto :goto_a

    :cond_16
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->u(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    :cond_17
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->d0:Ljava/lang/String;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->I:Ljava/lang/String;

    invoke-virtual {p1, v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x2ee

    sub-long v3, v0, v3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-wide v5, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->e0:J

    cmp-long v8, v3, v5

    if-lez v8, :cond_18

    iput-object v7, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->d0:Ljava/lang/String;

    :cond_18
    iput-wide v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->e0:J

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->z()V

    goto :goto_b

    :cond_19
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v8, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    :cond_1a
    :goto_b
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz v0, :cond_1b

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    :cond_1b
    return v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->t0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->Z:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    return p4

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->e(FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    return p4
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->e(FF)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->K:I

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->J:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->L:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
