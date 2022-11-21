.class public Lr4/it0;
.super Lr4/js0;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lr4/cs0;Lr4/ip;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr4/js0;-><init>(Lr4/cs0;Lr4/ip;Z)V

    return-void
.end method


# virtual methods
.method public final K0(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    instance-of v0, p1, Lr4/cs0;

    if-nez v0, :cond_0

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lr4/cs0;

    iget-object v0, p0, Lr4/js0;->F:Lr4/ej0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lr4/ej0;->c(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2
    invoke-super {p0, p2, p3}, Lr4/js0;->c(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lr4/cs0;->o0()Lr4/st0;

    move-result-object p2

    invoke-interface {p2}, Lr4/st0;->y()V

    :cond_4
    invoke-interface {p1}, Lr4/cs0;->r()Lr4/vt0;

    move-result-object p2

    invoke-virtual {p2}, Lr4/vt0;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lr4/rz;->J:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lr4/cs0;->T()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lr4/rz;->I:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object p2, Lr4/rz;->H:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-interface {p1}, Lr4/cs0;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lr4/cs0;->n()Lr4/im0;

    move-result-object p1

    iget-object p1, p1, Lr4/im0;->a:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lb3/k2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
