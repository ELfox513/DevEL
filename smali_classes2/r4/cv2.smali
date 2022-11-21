.class public final Lr4/cv2;
.super Lr4/yu2;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lr4/av2;

.field public final b:Lr4/zu2;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/qv2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lr4/ax2;

.field public e:Lr4/cw2;

.field public f:Z

.field public g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lr4/cv2;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lr4/zu2;Lr4/av2;)V
    .locals 3

    invoke-direct {p0}, Lr4/yu2;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/cv2;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/cv2;->f:Z

    iput-boolean v0, p0, Lr4/cv2;->g:Z

    iput-object p1, p0, Lr4/cv2;->b:Lr4/zu2;

    iput-object p2, p0, Lr4/cv2;->a:Lr4/av2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/cv2;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/cv2;->k(Landroid/view/View;)V

    invoke-virtual {p2}, Lr4/av2;->i()Lr4/bv2;

    move-result-object v1

    sget-object v2, Lr4/bv2;->b:Lr4/bv2;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lr4/av2;->i()Lr4/bv2;

    move-result-object v1

    sget-object v2, Lr4/bv2;->k:Lr4/bv2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/fw2;

    invoke-virtual {p2}, Lr4/av2;->e()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lr4/fw2;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lr4/cv2;->e:Lr4/cw2;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lr4/dw2;

    invoke-virtual {p2}, Lr4/av2;->f()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lr4/dw2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    :goto_1
    iget-object p2, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-virtual {p2}, Lr4/cw2;->a()V

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object p2

    invoke-virtual {p2, p0}, Lr4/nv2;->b(Lr4/cv2;)V

    iget-object p2, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-static {}, Lr4/tv2;->a()Lr4/tv2;

    move-result-object v0

    invoke-virtual {p2}, Lr4/cw2;->d()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1}, Lr4/zu2;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lr4/tv2;->b(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lr4/cv2;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/cv2;->f:Z

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/nv2;->c(Lr4/cv2;)V

    invoke-static {}, Lr4/uv2;->a()Lr4/uv2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/uv2;->f()F

    move-result v0

    iget-object v1, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-virtual {v1, v0}, Lr4/cw2;->j(F)V

    iget-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    iget-object v1, p0, Lr4/cv2;->a:Lr4/av2;

    invoke-virtual {v0, p0, v1}, Lr4/cw2;->h(Lr4/cv2;Lr4/av2;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lr4/cv2;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/cv2;->i()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lr4/cv2;->k(Landroid/view/View;)V

    iget-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-virtual {v0}, Lr4/cw2;->k()V

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nv2;->e()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cv2;

    if-eq v1, p0, :cond_2

    invoke-virtual {v1}, Lr4/cv2;->i()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, v1, Lr4/cv2;->d:Lr4/ax2;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lr4/cv2;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/cv2;->d:Lr4/ax2;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-boolean v0, p0, Lr4/cv2;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/cv2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/cv2;->g:Z

    iget-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-static {}, Lr4/tv2;->a()Lr4/tv2;

    move-result-object v1

    invoke-virtual {v0}, Lr4/cw2;->d()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr4/tv2;->d(Landroid/webkit/WebView;)V

    invoke-static {}, Lr4/nv2;->a()Lr4/nv2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr4/nv2;->d(Lr4/cv2;)V

    iget-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    invoke-virtual {v0}, Lr4/cw2;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    return-void
.end method

.method public final d(Landroid/view/View;Lr4/ev2;Ljava/lang/String;)V
    .locals 3

    iget-boolean p3, p0, Lr4/cv2;->g:Z

    if-nez p3, :cond_4

    sget-object p3, Lr4/cv2;->i:Ljava/util/regex/Pattern;

    const-string v0, "Ad overlay"

    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lr4/cv2;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/qv2;

    invoke-virtual {v1}, Lr4/qv2;->a()Lr4/ax2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object p3, p0, Lr4/cv2;->c:Ljava/util/List;

    new-instance v1, Lr4/qv2;

    invoke-direct {v1, p1, p2, v0}, Lr4/qv2;-><init>(Landroid/view/View;Lr4/ev2;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction has improperly formatted detailed reason"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/qv2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/cv2;->c:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lr4/cw2;
    .locals 1

    iget-object v0, p0, Lr4/cv2;->e:Lr4/cw2;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cv2;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/cv2;->d:Lr4/ax2;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lr4/cv2;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/cv2;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lr4/ax2;

    invoke-direct {v0, p1}, Lr4/ax2;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lr4/cv2;->d:Lr4/ax2;

    return-void
.end method
