.class public final Lr4/ln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lr4/cn;

.field public final synthetic d:Landroid/webkit/WebView;

.field public final synthetic k:Z

.field public final synthetic p:Lr4/nn;


# direct methods
.method public constructor <init>(Lr4/nn;Lr4/cn;Landroid/webkit/WebView;Z)V
    .locals 0

    iput-object p1, p0, Lr4/ln;->p:Lr4/nn;

    iput-object p2, p0, Lr4/ln;->b:Lr4/cn;

    iput-object p3, p0, Lr4/ln;->d:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lr4/ln;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr4/jn;

    invoke-direct {p1, p0}, Lr4/jn;-><init>(Lr4/ln;)V

    iput-object p1, p0, Lr4/ln;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/ln;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lr4/ln;->d:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lr4/ln;->a:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, v2}, Lh3/k;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lr4/ln;->a:Landroid/webkit/ValueCallback;

    check-cast v0, Lr4/jn;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lr4/jn;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
