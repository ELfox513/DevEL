.class public Lw1/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ly1/d;

.field public c:Lw1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw1/q$a;)V
    .locals 0

    invoke-direct {p0}, Lw1/q$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw1/q$b;)I
    .locals 0

    iget p0, p0, Lw1/q$b;->a:I

    return p0
.end method

.method public static synthetic b(Lw1/q$b;)Ly1/d;
    .locals 0

    iget-object p0, p0, Lw1/q$b;->b:Ly1/d;

    return-object p0
.end method

.method public static synthetic c(Lw1/q$b;)Lw1/k;
    .locals 0

    iget-object p0, p0, Lw1/q$b;->c:Lw1/k;

    return-object p0
.end method


# virtual methods
.method public d(ILy1/d;Lw1/k;)V
    .locals 0

    iput p1, p0, Lw1/q$b;->a:I

    iput-object p2, p0, Lw1/q$b;->b:Ly1/d;

    iput-object p3, p0, Lw1/q$b;->c:Lw1/k;

    return-void
.end method

.method public e()Lw1/q;
    .locals 5

    new-instance v0, Lw1/q;

    iget v1, p0, Lw1/q$b;->a:I

    iget-object v2, p0, Lw1/q$b;->b:Ly1/d;

    iget-object v3, p0, Lw1/q$b;->c:Lw1/k;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lw1/q;-><init>(ILy1/d;Lw1/k;Lw1/q$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lw1/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lw1/q;

    iget v0, p0, Lw1/q$b;->a:I

    iget-object v1, p0, Lw1/q$b;->b:Ly1/d;

    iget-object v2, p0, Lw1/q$b;->c:Lw1/k;

    invoke-static {p1, v0, v1, v2}, Lw1/q;->c(Lw1/q;ILy1/d;Lw1/k;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lw1/q$b;->a:I

    iget-object v1, p0, Lw1/q$b;->b:Ly1/d;

    iget-object v2, p0, Lw1/q$b;->c:Lw1/k;

    invoke-static {v0, v1, v2}, Lw1/q;->d(ILy1/d;Lw1/k;)I

    move-result v0

    return v0
.end method
