.class public final Lv2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/e$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lt2/w;

.field public final g:Z


# direct methods
.method public synthetic constructor <init>(Lv2/e$a;Lv2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lv2/e$a;->i(Lv2/e$a;)Z

    move-result p2

    iput-boolean p2, p0, Lv2/e;->a:Z

    invoke-static {p1}, Lv2/e$a;->j(Lv2/e$a;)I

    move-result p2

    iput p2, p0, Lv2/e;->b:I

    invoke-static {p1}, Lv2/e$a;->k(Lv2/e$a;)I

    move-result p2

    iput p2, p0, Lv2/e;->c:I

    invoke-static {p1}, Lv2/e$a;->l(Lv2/e$a;)Z

    move-result p2

    iput-boolean p2, p0, Lv2/e;->d:Z

    invoke-static {p1}, Lv2/e$a;->n(Lv2/e$a;)I

    move-result p2

    iput p2, p0, Lv2/e;->e:I

    invoke-static {p1}, Lv2/e$a;->m(Lv2/e$a;)Lt2/w;

    move-result-object p2

    iput-object p2, p0, Lv2/e;->f:Lt2/w;

    invoke-static {p1}, Lv2/e$a;->o(Lv2/e$a;)Z

    move-result p1

    iput-boolean p1, p0, Lv2/e;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lv2/e;->e:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lv2/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lv2/e;->c:I

    return v0
.end method

.method public d()Lt2/w;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lv2/e;->f:Lt2/w;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lv2/e;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lv2/e;->a:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lv2/e;->g:Z

    return v0
.end method
