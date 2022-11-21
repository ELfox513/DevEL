.class public final Lr4/y94;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lr4/e94;)Lr4/t84;
    .locals 3

    new-instance p1, Lr4/f94;

    new-instance v0, Lr4/s94;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lr4/s94;-><init>(Lr4/r94;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lr4/f94;-><init>(Lr4/e94;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lr4/x94;

    invoke-direct {v0, p0}, Lr4/x94;-><init>(Landroid/content/Context;)V

    new-instance p0, Lr4/t84;

    new-instance v1, Lr4/m94;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lr4/m94;-><init>(Lr4/l94;I)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, p1, v0}, Lr4/t84;-><init>(Lr4/z74;Lr4/i84;I)V

    invoke-virtual {p0}, Lr4/t84;->a()V

    return-object p0
.end method
