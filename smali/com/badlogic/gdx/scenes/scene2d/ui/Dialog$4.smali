.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->key(ILjava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->b:I

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->b:I

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4$1;

    invoke-direct {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
