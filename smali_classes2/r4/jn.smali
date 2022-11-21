.class public final Lr4/jn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/ln;


# direct methods
.method public constructor <init>(Lr4/ln;)V
    .locals 0

    iput-object p1, p0, Lr4/jn;->a:Lr4/ln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lr4/jn;->a:Lr4/ln;

    iget-object v1, v0, Lr4/ln;->p:Lr4/nn;

    iget-object v2, v0, Lr4/ln;->b:Lr4/cn;

    iget-object v3, v0, Lr4/ln;->d:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lr4/ln;->k:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lr4/nn;->d(Lr4/cn;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public final bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lr4/jn;->a(Ljava/lang/String;)V

    return-void
.end method
