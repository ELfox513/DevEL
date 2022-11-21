.class public final Lg3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:I

.field public final e:Lt2/w;

.field public final f:Z


# direct methods
.method public synthetic constructor <init>(Lg3/d$a;Lg3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg3/d$a;->h(Lg3/d$a;)Z

    move-result p2

    iput-boolean p2, p0, Lg3/d;->a:Z

    invoke-static {p1}, Lg3/d$a;->i(Lg3/d$a;)I

    move-result p2

    iput p2, p0, Lg3/d;->b:I

    invoke-static {p1}, Lg3/d$a;->j(Lg3/d$a;)Z

    move-result p2

    iput-boolean p2, p0, Lg3/d;->c:Z

    invoke-static {p1}, Lg3/d$a;->l(Lg3/d$a;)I

    move-result p2

    iput p2, p0, Lg3/d;->d:I

    invoke-static {p1}, Lg3/d$a;->k(Lg3/d$a;)Lt2/w;

    move-result-object p2

    iput-object p2, p0, Lg3/d;->e:Lt2/w;

    invoke-static {p1}, Lg3/d$a;->m(Lg3/d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lg3/d;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lg3/d;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lg3/d;->b:I

    return v0
.end method

.method public c()Lt2/w;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lg3/d;->e:Lt2/w;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lg3/d;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lg3/d;->a:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lg3/d;->f:Z

    return v0
.end method
