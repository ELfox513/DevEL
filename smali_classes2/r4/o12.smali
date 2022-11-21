.class public final Lr4/o12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qe0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Lr4/gv2;
    .locals 1

    const-string v0, "native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lr4/gv2;->b:Lr4/gv2;

    return-object p0

    :cond_0
    const-string v0, "javascript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lr4/gv2;->d:Lr4/gv2;

    return-object p0

    :cond_1
    sget-object p0, Lr4/gv2;->k:Lr4/gv2;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lr4/fv2;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41cfa846

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x4e906dcd

    if-eq v0, v1, :cond_1

    const v1, 0x768243c0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onePixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "definedByJavascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "beginToRender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    sget-object p0, Lr4/fv2;->d:Lr4/fv2;

    return-object p0

    :cond_4
    sget-object p0, Lr4/fv2;->q:Lr4/fv2;

    return-object p0

    :cond_5
    sget-object p0, Lr4/fv2;->b:Lr4/fv2;

    return-object p0

    :cond_6
    sget-object p0, Lr4/fv2;->p:Lr4/fv2;

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Lr4/dv2;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16d03d69

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_1

    const v1, 0x2a9c68ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "nativeDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "htmlDisplay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object p0, Lr4/dv2;->p:Lr4/dv2;

    return-object p0

    :cond_5
    sget-object p0, Lr4/dv2;->k:Lr4/dv2;

    return-object p0

    :cond_6
    sget-object p0, Lr4/dv2;->d:Lr4/dv2;

    return-object p0
.end method


# virtual methods
.method public final U(Lf4/a;)V
    .locals 2

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lr4/yu2;

    if-eqz v0, :cond_1

    check-cast p1, Lr4/yu2;

    invoke-virtual {p1}, Lr4/yu2;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object p1, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "a.1.3.3-google_20200416"

    return-object p1
.end method

.method public final b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;
    .locals 2

    sget-object p3, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p4

    invoke-virtual {p4, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lr4/wu2;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p6, p1}, Lr4/hv2;->a(Ljava/lang/String;Ljava/lang/String;)Lr4/hv2;

    move-result-object p1

    const-string p3, "javascript"

    invoke-static {p3}, Lr4/o12;->f(Ljava/lang/String;)Lr4/gv2;

    move-result-object p3

    invoke-static {p5}, Lr4/o12;->f(Ljava/lang/String;)Lr4/gv2;

    move-result-object p6

    invoke-virtual {p8}, Lr4/re0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/o12;->h(Ljava/lang/String;)Lr4/dv2;

    move-result-object v0

    sget-object v1, Lr4/gv2;->k:Lr4/gv2;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid js session error; Unable to parse impression owner: javascript"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_2
    sget-object p8, Lr4/dv2;->p:Lr4/dv2;

    if-ne v0, p8, :cond_4

    if-ne p6, v1, :cond_4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid js session error; Video events owner unknown for video creative: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-object p4

    :cond_4
    const-string p4, ""

    invoke-static {p1, p2, p9, p4}, Lr4/av2;->b(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lr4/av2;

    move-result-object p1

    invoke-virtual {p7}, Lr4/se0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lr4/o12;->g(Ljava/lang/String;)Lr4/fv2;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {v0, p2, p3, p6, p4}, Lr4/zu2;->a(Lr4/dv2;Lr4/fv2;Lr4/gv2;Lr4/gv2;Z)Lr4/zu2;

    move-result-object p2

    invoke-static {p2, p1}, Lr4/yu2;->e(Lr4/zu2;Lr4/av2;)Lr4/yu2;

    move-result-object p1

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object p4
.end method

.method public final c(Lf4/a;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lr4/yu2;

    if-eqz v0, :cond_1

    check-cast p1, Lr4/yu2;

    sget-object v0, Lr4/ev2;->d:Lr4/ev2;

    const-string v1, "Ad overlay"

    invoke-virtual {p1, p2, v0, v1}, Lr4/yu2;->d(Landroid/view/View;Lr4/ev2;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;
    .locals 3

    sget-object p3, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p4

    invoke-virtual {p4, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    invoke-static {}, Lr4/wu2;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "Google"

    invoke-static {p3, p1}, Lr4/hv2;->a(Ljava/lang/String;Ljava/lang/String;)Lr4/hv2;

    move-result-object p1

    const-string p3, "javascript"

    invoke-static {p3}, Lr4/o12;->f(Ljava/lang/String;)Lr4/gv2;

    move-result-object p3

    invoke-virtual {p7}, Lr4/re0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/o12;->h(Ljava/lang/String;)Lr4/dv2;

    move-result-object v0

    sget-object v1, Lr4/gv2;->k:Lr4/gv2;

    if-ne p3, v1, :cond_1

    const-string p1, "Omid html session error; Unable to parse impression owner: javascript"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid html session error; Unable to parse creative type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p5}, Lr4/o12;->f(Ljava/lang/String;)Lr4/gv2;

    move-result-object p7

    sget-object v2, Lr4/dv2;->p:Lr4/dv2;

    if-ne v0, v2, :cond_4

    if-ne p7, v1, :cond_4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Omid html session error; Video events owner unknown for video creative: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p4, ""

    invoke-static {p1, p2, p8, p4}, Lr4/av2;->a(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lr4/av2;

    move-result-object p1

    invoke-virtual {p6}, Lr4/se0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lr4/o12;->g(Ljava/lang/String;)Lr4/fv2;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {v0, p2, p3, p7, p4}, Lr4/zu2;->a(Lr4/dv2;Lr4/fv2;Lr4/gv2;Lr4/gv2;Z)Lr4/zu2;

    move-result-object p2

    invoke-static {p2, p1}, Lr4/yu2;->e(Lr4/zu2;Lr4/av2;)Lr4/yu2;

    move-result-object p1

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p4

    :cond_5
    :goto_1
    return-object p4
.end method

.method public final e(Lf4/a;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lr4/yu2;

    if-eqz v0, :cond_1

    check-cast p1, Lr4/yu2;

    invoke-virtual {p1, p2}, Lr4/yu2;->b(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e0(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Omid flag is disabled"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {p1}, Lr4/wu2;->a(Landroid/content/Context;)V

    invoke-static {}, Lr4/wu2;->b()Z

    move-result p1

    return p1
.end method

.method public final zzf(Lf4/a;)V
    .locals 2

    sget-object v0, Lr4/rz;->u3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/wu2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lr4/yu2;

    if-eqz v0, :cond_1

    check-cast p1, Lr4/yu2;

    invoke-virtual {p1}, Lr4/yu2;->a()V

    :cond_1
    :goto_0
    return-void
.end method
