.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-eq p2, v2, :cond_7

    const/16 v2, 0xa

    if-ne p2, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result p2

    const/16 v2, 0x13

    const/16 v3, 0x270f

    if-ne p2, v2, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->i(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->g(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->h(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;I)I

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->g(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setCursorPosition(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->j(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->g(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    move-result p1

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1, v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->h(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;I)I

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->f(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->g(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->k(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setCursorPosition(I)V

    :cond_6
    :goto_0
    return v1

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$5;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->e(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    return v1
.end method
