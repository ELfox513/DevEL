.class Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;->input(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1$1;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method
