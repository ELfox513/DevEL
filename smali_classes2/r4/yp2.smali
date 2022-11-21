.class public final Lr4/yp2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ad failed to load : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/cm0;->e(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lb3/w1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "This request is sent from a test device."

    invoke-static {p0}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    invoke-static {p0}, Lr4/vl0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x66

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")) to get test ads on this device."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr4/cm0;->e(Ljava/lang/String;)V

    return-void
.end method
