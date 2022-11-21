.class Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;-><init>(FLcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    iget-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->J:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    return p5

    :cond_0
    const/4 p4, 0x1

    iput-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->J:Z

    invoke-virtual {p1, p2, p3, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->g(FFZ)V

    return p4
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->g(FFZ)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->J:Z

    iget-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->K:Z

    invoke-virtual {p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->g(FFZ)V

    return-void
.end method
