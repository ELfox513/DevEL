.class public final Lr4/ew2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/webkit/WebView;

.field public final synthetic b:Lr4/fw2;


# direct methods
.method public constructor <init>(Lr4/fw2;)V
    .locals 0

    iput-object p1, p0, Lr4/ew2;->b:Lr4/fw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/fw2;->l(Lr4/fw2;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lr4/ew2;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ew2;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
