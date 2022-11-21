.class Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/components/BuildMenu;

.field public final synthetic c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->b:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->s(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->r(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->s(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->r(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->q(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->r(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    return p2
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->q(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;->c:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->r(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    return-void
.end method
