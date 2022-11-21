.class Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedStyle"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/WebView;

.field public fontSize:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->a:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->fontSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/actors/WebView;Lcom/prineside/tdi2/ui/actors/WebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;)V

    return-void
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->a:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;-><init>(Lcom/prineside/tdi2/ui/actors/WebView;)V

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->fontSize:I

    iput v1, v0, Lcom/prineside/tdi2/ui/actors/WebView$SharedStyle;->fontSize:I

    return-object v0
.end method
