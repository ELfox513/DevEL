.class public final Lr4/av2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/hv2;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/iv2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/iv2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lr4/bv2;


# direct methods
.method public constructor <init>(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lr4/bv2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/hv2;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lr4/iv2;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lr4/bv2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lr4/av2;->c:Ljava/util/List;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lr4/av2;->d:Ljava/util/Map;

    iput-object p1, p0, Lr4/av2;->a:Lr4/hv2;

    iput-object p2, p0, Lr4/av2;->b:Landroid/webkit/WebView;

    iput-object p7, p0, Lr4/av2;->g:Lr4/bv2;

    iput-object p5, p0, Lr4/av2;->f:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lr4/av2;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lr4/av2;
    .locals 8

    new-instance p3, Lr4/av2;

    sget-object v7, Lr4/bv2;->b:Lr4/bv2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lr4/av2;-><init>(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lr4/bv2;)V

    return-object p3
.end method

.method public static b(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lr4/av2;
    .locals 8

    new-instance p3, Lr4/av2;

    sget-object v7, Lr4/bv2;->k:Lr4/bv2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lr4/av2;-><init>(Lr4/hv2;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lr4/bv2;)V

    return-object p3
.end method


# virtual methods
.method public final c()Lr4/hv2;
    .locals 1

    iget-object v0, p0, Lr4/av2;->a:Lr4/hv2;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/iv2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/av2;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/iv2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/av2;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lr4/av2;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/av2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/av2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lr4/bv2;
    .locals 1

    iget-object v0, p0, Lr4/av2;->g:Lr4/bv2;

    return-object v0
.end method
