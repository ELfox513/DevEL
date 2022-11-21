.class Lcom/badlogic/gdx/scenes/scene2d/ui/Value$9;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->percentWidth(FLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$9;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$9;->b:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$9;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$9;->b:F

    mul-float p1, p1, v0

    return p1
.end method
