.class public final Lg5/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/ha;


# instance fields
.field public final synthetic a:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;)V
    .locals 0

    iput-object p1, p0, Lg5/v6;->a:Lg5/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "auto"

    const-string v1, "_err"

    if-nez p2, :cond_0

    iget-object p2, p0, Lg5/v6;->a:Lg5/i7;

    invoke-virtual {p2, v0, v1, p3, p1}, Lg5/i7;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lg5/v6;->a:Lg5/i7;

    invoke-virtual {p1, v0, v1, p3}, Lg5/i7;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
