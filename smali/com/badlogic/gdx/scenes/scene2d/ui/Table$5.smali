.class Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->q0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result p1

    :goto_0
    return p1
.end method
