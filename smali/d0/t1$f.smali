.class public Ld0/t1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ld0/t1;

.field public b:[Lv/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ld0/t1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld0/t1;-><init>(Ld0/t1;)V

    invoke-direct {p0, v0}, Ld0/t1$f;-><init>(Ld0/t1;)V

    return-void
.end method

.method public constructor <init>(Ld0/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/t1$f;->a:Ld0/t1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ld0/t1$f;->b:[Lv/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ld0/t1$m;->a(I)I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, Ld0/t1$f;->b:[Lv/b;

    const/4 v3, 0x2

    invoke-static {v3}, Ld0/t1$m;->a(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Ld0/t1$f;->a:Ld0/t1;

    invoke-virtual {v2, v3}, Ld0/t1;->f(I)Lv/b;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ld0/t1$f;->a:Ld0/t1;

    invoke-virtual {v0, v1}, Ld0/t1;->f(I)Lv/b;

    move-result-object v0

    :cond_1
    invoke-static {v0, v2}, Lv/b;->a(Lv/b;Lv/b;)Lv/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld0/t1$f;->f(Lv/b;)V

    iget-object v0, p0, Ld0/t1$f;->b:[Lv/b;

    const/16 v1, 0x10

    invoke-static {v1}, Ld0/t1$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ld0/t1$f;->e(Lv/b;)V

    :cond_2
    iget-object v0, p0, Ld0/t1$f;->b:[Lv/b;

    const/16 v1, 0x20

    invoke-static {v1}, Ld0/t1$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ld0/t1$f;->c(Lv/b;)V

    :cond_3
    iget-object v0, p0, Ld0/t1$f;->b:[Lv/b;

    const/16 v1, 0x40

    invoke-static {v1}, Ld0/t1$m;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Ld0/t1$f;->g(Lv/b;)V

    :cond_4
    return-void
.end method

.method public b()Ld0/t1;
    .locals 1

    invoke-virtual {p0}, Ld0/t1$f;->a()V

    iget-object v0, p0, Ld0/t1$f;->a:Ld0/t1;

    return-object v0
.end method

.method public c(Lv/b;)V
    .locals 0

    return-void
.end method

.method public d(Lv/b;)V
    .locals 0

    return-void
.end method

.method public e(Lv/b;)V
    .locals 0

    return-void
.end method

.method public f(Lv/b;)V
    .locals 0

    return-void
.end method

.method public g(Lv/b;)V
    .locals 0

    return-void
.end method
