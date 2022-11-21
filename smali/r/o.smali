.class public Lr/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/o$c;,
        Lr/o$a;,
        Lr/o$b;,
        Lr/o$e;,
        Lr/o$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_0
    invoke-static {p0}, Lr/v0;->c(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
