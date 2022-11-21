.class Lcom/prineside/tdi2/ui/actors/WebView$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/WebView;->J(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final synthetic c:Lcom/badlogic/gdx/graphics/Color;

.field public final synthetic d:Lcom/badlogic/gdx/graphics/Color;

.field public final synthetic e:Lcom/prineside/tdi2/ui/actors/WebView;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->e:Lcom/prineside/tdi2/ui/actors/WebView;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->c:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$2;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
