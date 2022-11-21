.class Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$1;->b:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$1;->b:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->hide(Z)V

    const/4 p1, 0x1

    return p1
.end method
