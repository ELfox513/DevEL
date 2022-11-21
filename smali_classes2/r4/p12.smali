.class public final Lr4/p12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qe0;


# instance fields
.field public final a:Lr4/qe0;

.field public final b:Lr4/qe0;


# direct methods
.method public constructor <init>(Lr4/qe0;Lr4/qe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p12;->a:Lr4/qe0;

    iput-object p2, p0, Lr4/p12;->b:Lr4/qe0;

    return-void
.end method


# virtual methods
.method public final U(Lf4/a;)V
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1}, Lr4/qe0;->U(Lf4/a;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1}, Lr4/qe0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;
    .locals 10

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lr4/qe0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lf4/a;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr4/qe0;->c(Lf4/a;Landroid/view/View;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;
    .locals 9

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lr4/qe0;->d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/se0;Lr4/re0;Ljava/lang/String;)Lf4/a;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lf4/a;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr4/qe0;->e(Lf4/a;Landroid/view/View;)V

    return-void
.end method

.method public final e0(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1}, Lr4/qe0;->e0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final f()Lr4/qe0;
    .locals 2

    sget-object v0, Lr4/rz;->w3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/p12;->a:Lr4/qe0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/p12;->b:Lr4/qe0;

    :goto_0
    return-object v0
.end method

.method public final zzf(Lf4/a;)V
    .locals 1

    invoke-virtual {p0}, Lr4/p12;->f()Lr4/qe0;

    move-result-object v0

    invoke-interface {v0, p1}, Lr4/qe0;->zzf(Lf4/a;)V

    return-void
.end method
