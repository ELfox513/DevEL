.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasParent()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideScrollPane()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$2;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->showScrollPane()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
