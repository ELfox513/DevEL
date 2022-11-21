.class public final Lg5/y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/ha;


# instance fields
.field public final synthetic a:Lg5/ba;


# direct methods
.method public constructor <init>(Lg5/ba;)V
    .locals 0

    iput-object p1, p0, Lg5/y9;->a:Lg5/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "_err"

    if-eqz p2, :cond_1

    iget-object p1, p0, Lg5/y9;->a:Lg5/ba;

    invoke-static {p1}, Lg5/ba;->a0(Lg5/ba;)Lg5/b5;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg5/y9;->a:Lg5/ba;

    invoke-static {p1}, Lg5/ba;->a0(Lg5/ba;)Lg5/b5;

    move-result-object p1

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    const-string p2, "AppId not known when logging event"

    invoke-virtual {p1, p2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lg5/y9;->a:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->P()Lg5/y4;

    move-result-object p2

    new-instance v1, Lg5/x9;

    invoke-direct {v1, p0, p1, v0, p3}, Lg5/x9;-><init>(Lg5/y9;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method
