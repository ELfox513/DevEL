.class public final Lg3/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Lt2/w;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg3/d$a;->a:Z

    iput v0, p0, Lg3/d$a;->b:I

    iput-boolean v0, p0, Lg3/d$a;->c:Z

    const/4 v1, 0x1

    iput v1, p0, Lg3/d$a;->e:I

    iput-boolean v0, p0, Lg3/d$a;->f:Z

    return-void
.end method

.method public static synthetic h(Lg3/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lg3/d$a;->a:Z

    return p0
.end method

.method public static synthetic i(Lg3/d$a;)I
    .locals 0

    iget p0, p0, Lg3/d$a;->b:I

    return p0
.end method

.method public static synthetic j(Lg3/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lg3/d$a;->c:Z

    return p0
.end method

.method public static synthetic k(Lg3/d$a;)Lt2/w;
    .locals 0

    iget-object p0, p0, Lg3/d$a;->d:Lt2/w;

    return-object p0
.end method

.method public static synthetic l(Lg3/d$a;)I
    .locals 0

    iget p0, p0, Lg3/d$a;->e:I

    return p0
.end method

.method public static synthetic m(Lg3/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lg3/d$a;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lg3/d;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lg3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg3/d;-><init>(Lg3/d$a;Lg3/f;)V

    return-object v0
.end method

.method public b(I)Lg3/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lg3/d$a;->e:I

    return-object p0
.end method

.method public c(I)Lg3/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lg3/d$a;->b:I

    return-object p0
.end method

.method public d(Z)Lg3/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lg3/d$a;->f:Z

    return-object p0
.end method

.method public e(Z)Lg3/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lg3/d$a;->c:Z

    return-object p0
.end method

.method public f(Z)Lg3/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lg3/d$a;->a:Z

    return-object p0
.end method

.method public g(Lt2/w;)Lg3/d$a;
    .locals 0
    .param p1    # Lt2/w;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lg3/d$a;->d:Lt2/w;

    return-object p0
.end method
