.class Lcom/prineside/tdi2/ui/actors/WebView$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
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
.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lcom/prineside/tdi2/ui/actors/WebView;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->q:Lcom/prineside/tdi2/ui/actors/WebView;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    const-string p2, "secretCode:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->secretCodeManager:Lcom/prineside/tdi2/managers/SecretCodeManager;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SecretCodeManager;->applyCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    const-string p2, "url:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    const-string p3, "xdx:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->p:Ljava/lang/String;

    const-string p3, "modal"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->q:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {p3}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->q:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {p3}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->modalLoadRequested(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->q:Lcom/prineside/tdi2/ui/actors/WebView;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "GET"

    invoke-virtual {p1, v0, p2, p3}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown click attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/WebView$1;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebView"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
