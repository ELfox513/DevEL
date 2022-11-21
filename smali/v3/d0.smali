.class public final Lv3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lt3/d;


# direct methods
.method public synthetic constructor <init>(Lv3/b;Lt3/d;Lv3/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/d0;->a:Lv3/b;

    iput-object p2, p0, Lv3/d0;->b:Lt3/d;

    return-void
.end method

.method public static synthetic a(Lv3/d0;)Lv3/b;
    .locals 0

    iget-object p0, p0, Lv3/d0;->a:Lv3/b;

    return-object p0
.end method

.method public static synthetic b(Lv3/d0;)Lt3/d;
    .locals 0

    iget-object p0, p0, Lv3/d0;->b:Lt3/d;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lv3/d0;

    if-eqz v1, :cond_0

    check-cast p1, Lv3/d0;

    iget-object v1, p0, Lv3/d0;->a:Lv3/b;

    iget-object v2, p1, Lv3/d0;->a:Lv3/b;

    invoke-static {v1, v2}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv3/d0;->b:Lt3/d;

    iget-object p1, p1, Lv3/d0;->b:Lt3/d;

    invoke-static {v1, p1}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lv3/d0;->a:Lv3/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lv3/d0;->b:Lt3/d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lx3/o;->c(Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    iget-object v1, p0, Lv3/d0;->a:Lv3/b;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    iget-object v1, p0, Lv3/d0;->b:Lt3/d;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lx3/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lx3/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lx3/o$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
