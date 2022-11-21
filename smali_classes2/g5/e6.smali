.class public final Lg5/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/k3;


# instance fields
.field public final synthetic a:Lg5/b5;


# direct methods
.method public constructor <init>(Lg5/f6;Lg5/b5;)V
    .locals 0

    iput-object p2, p0, Lg5/e6;->a:Lg5/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lg5/e6;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg5/e6;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->x()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
