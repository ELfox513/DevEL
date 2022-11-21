.class public abstract Lu0/i$f;
.super Lu0/i$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lv/c$b;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu0/i$e;-><init>(Lu0/i$a;)V

    iput-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    const/4 v0, 0x0

    iput v0, p0, Lu0/i$f;->c:I

    return-void
.end method

.method public constructor <init>(Lu0/i$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu0/i$e;-><init>(Lu0/i$a;)V

    iput-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    const/4 v0, 0x0

    iput v0, p0, Lu0/i$f;->c:I

    iget-object v0, p1, Lu0/i$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lu0/i$f;->b:Ljava/lang/String;

    iget v0, p1, Lu0/i$f;->d:I

    iput v0, p0, Lu0/i$f;->d:I

    iget-object p1, p1, Lu0/i$f;->a:[Lv/c$b;

    invoke-static {p1}, Lv/c;->f([Lv/c$b;)[Lv/c$b;

    move-result-object p1

    iput-object p1, p0, Lu0/i$f;->a:[Lv/c$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lv/c$b;->e([Lv/c$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Lv/c$b;
    .locals 1

    iget-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu0/i$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lv/c$b;)V
    .locals 1

    iget-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    invoke-static {v0, p1}, Lv/c;->b([Lv/c$b;[Lv/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lv/c;->f([Lv/c$b;)[Lv/c$b;

    move-result-object p1

    iput-object p1, p0, Lu0/i$f;->a:[Lv/c$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu0/i$f;->a:[Lv/c$b;

    invoke-static {v0, p1}, Lv/c;->j([Lv/c$b;[Lv/c$b;)V

    :goto_0
    return-void
.end method
