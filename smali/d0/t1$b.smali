.class public final Ld0/t1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ld0/t1$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld0/t1$e;

    invoke-direct {v0}, Ld0/t1$e;-><init>()V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld0/t1$d;

    invoke-direct {v0}, Ld0/t1$d;-><init>()V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Ld0/t1$c;

    invoke-direct {v0}, Ld0/t1$c;-><init>()V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_2
    new-instance v0, Ld0/t1$f;

    invoke-direct {v0}, Ld0/t1$f;-><init>()V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ld0/t1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld0/t1$e;

    invoke-direct {v0, p1}, Ld0/t1$e;-><init>(Ld0/t1;)V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld0/t1$d;

    invoke-direct {v0, p1}, Ld0/t1$d;-><init>(Ld0/t1;)V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Ld0/t1$c;

    invoke-direct {v0, p1}, Ld0/t1$c;-><init>(Ld0/t1;)V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    goto :goto_0

    :cond_2
    new-instance v0, Ld0/t1$f;

    invoke-direct {v0, p1}, Ld0/t1$f;-><init>(Ld0/t1;)V

    iput-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ld0/t1;
    .locals 1

    iget-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    invoke-virtual {v0}, Ld0/t1$f;->b()Ld0/t1;

    move-result-object v0

    return-object v0
.end method

.method public b(Lv/b;)Ld0/t1$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    invoke-virtual {v0, p1}, Ld0/t1$f;->d(Lv/b;)V

    return-object p0
.end method

.method public c(Lv/b;)Ld0/t1$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld0/t1$b;->a:Ld0/t1$f;

    invoke-virtual {v0, p1}, Ld0/t1$f;->f(Lv/b;)V

    return-object p0
.end method
