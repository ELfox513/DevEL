.class Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$2;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$2;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-interface {p2, p1, v0, p3}, Lcom/prineside/tdi2/ActionResolver;->handleTextFieldFocus(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Z)V

    return-void
.end method
