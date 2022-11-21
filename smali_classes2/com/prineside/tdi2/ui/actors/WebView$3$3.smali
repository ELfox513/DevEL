.class Lcom/prineside/tdi2/ui/actors/WebView$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/WebView$3;->cancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/WebView$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$3;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$3;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/WebView$3$3;->a:Lcom/prineside/tdi2/ui/actors/WebView$3;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/actors/WebView$3;->d:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/WebView;->z(Lcom/prineside/tdi2/ui/actors/WebView;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v0}, Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;->urlLoadFinish(ZLjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
