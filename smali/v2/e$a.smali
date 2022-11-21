.class public final Lv2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:Lt2/w;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/e$a;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lv2/e$a;->b:I

    iput v0, p0, Lv2/e$a;->c:I

    iput-boolean v0, p0, Lv2/e$a;->d:Z

    const/4 v1, 0x1

    iput v1, p0, Lv2/e$a;->f:I

    iput-boolean v0, p0, Lv2/e$a;->g:Z

    return-void
.end method

.method public static synthetic i(Lv2/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lv2/e$a;->a:Z

    return p0
.end method

.method public static synthetic j(Lv2/e$a;)I
    .locals 0

    iget p0, p0, Lv2/e$a;->b:I

    return p0
.end method

.method public static synthetic k(Lv2/e$a;)I
    .locals 0

    iget p0, p0, Lv2/e$a;->c:I

    return p0
.end method

.method public static synthetic l(Lv2/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lv2/e$a;->d:Z

    return p0
.end method

.method public static synthetic m(Lv2/e$a;)Lt2/w;
    .locals 0

    iget-object p0, p0, Lv2/e$a;->e:Lt2/w;

    return-object p0
.end method

.method public static synthetic n(Lv2/e$a;)I
    .locals 0

    iget p0, p0, Lv2/e$a;->f:I

    return p0
.end method

.method public static synthetic o(Lv2/e$a;)Z
    .locals 0

    iget-boolean p0, p0, Lv2/e$a;->g:Z

    return p0
.end method


# virtual methods
.method public a()Lv2/e;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lv2/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv2/e;-><init>(Lv2/e$a;Lv2/k;)V

    return-object v0
.end method

.method public b(I)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lv2/e$a;->f:I

    return-object p0
.end method

.method public c(I)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lv2/e$a;->b:I

    return-object p0
.end method

.method public d(I)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lv2/e$a;->c:I

    return-object p0
.end method

.method public e(Z)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lv2/e$a;->g:Z

    return-object p0
.end method

.method public f(Z)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lv2/e$a;->d:Z

    return-object p0
.end method

.method public g(Z)Lv2/e$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lv2/e$a;->a:Z

    return-object p0
.end method

.method public h(Lt2/w;)Lv2/e$a;
    .locals 0
    .param p1    # Lt2/w;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lv2/e$a;->e:Lt2/w;

    return-object p0
.end method
