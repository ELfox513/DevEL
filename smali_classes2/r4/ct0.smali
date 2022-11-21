.class public final synthetic Lr4/ct0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/et0;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ct0;->a:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lr4/ct0;->a:Lr4/cs0;

    check-cast v0, Lr4/xs0;

    invoke-virtual {v0}, Lr4/xs0;->n1()Lr4/js0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lr4/st0;->E0(Landroid/net/Uri;)V

    return-void
.end method
